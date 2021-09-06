---
title: C is your enemy
subtitle: Ensuring your app passes the security review
tags: []
toc: true
author:
layout: doc_na
---

## Know your C compiler

Ledger apps are written in C. Unlike typical embedded project, the goal here is to write for a single platform with a single compiler.

The current supported compiler is clang, and it supports newest language features (up to C11). This is useful for both development and security. You should really learn about the new features and use them extensively as they might help you write more secure code.

A random collection of useful features: intermingled declarations and code, support of `_Generic`, `_Static_assert`, `__builtin_types_compatible_p`, `__typeof` (very useful for safer versions of macros), etc.

## Use safe macro constructs

C is a minefield of problems related to pointers. You can alleviate some of the problems with good macros. However, beware of when they can fail. For example, take the following code:

``` c
#define ARRAY_LEN(a) sizeof(a) / sizeof(a[0])
```

Apart from the "obvious" problem of ARRAY\_LEN macro being written without external parenthesis, making code such as

``` c
(uint8_t) ARRAY_LEN(x)
```

compile to what is understood by the compiler as

``` c
(uint8_t) sizeof(x) / sizeof(x[0])
```

there is an important problem with this macro. If used in the function like this

``` c
void fn(int x[10]) {
    int len = ARRAY_LEN(x)
}
```

The result is unexpectedly len=1. The reason is that `int x[10]` in the function header is silently converted into `int* x` and the length is therefore `sizeof(ptr) / sizeof(int)` which is indeed 1 on the platform. You can read more about the problem and how to define a safe version in <http://zubplot.blogspot.com/2015/01/gcc-is-wonderful-better-arraysize-macro.html> which explains a patch to the Linux kernel to improve safety of its ARRAY\_SIZE macro.

Note that similar problems exist, if x is a pointer, with:

``` c
memset(x, 0, sizeof(x))
```

In general, if writing macros, try to write them in a way that they will fail if they get a pointer instead of struct/array.

## Buffer overflows/underflows

Buffer overflows and underflows are perhaps the biggest source of security vulnerabilities in C code. The following example shows a buffer overflow in (a past version) of one Ledger app.

``` c
#define MAX_RAW_TX 200
...
struct tmpCtx {
    ...
    uint8_t rawTx[MAX_RAW_TX];
} transactionContext_t;

const uint8_t PREFIX[] = {0x00, 0x01, 0x02 ... } // coin-specific signing prefix

void handleSign(uint8_t p1, uint8_t p2, uint8_t *workBuffer,
                uint16_t dataLength, volatile unsigned int *flags,
                volatile unsigned int *tx) {
    ... // (no dataLength validation, we can get up to 255 from APDU)
    // Note: we can pass this line with dataLength > 200
    if (parseTx(workBuffer, dataLength, &txContent) != USTREAM_FINISHED) {
        THROW(0x6A80);
    }
    ...
    memmove(tmpCtx.rawTx, PREFIX, sizeof(PREFIX));

    // Here is the vulnerability. There should be a check of
    // if (!(dataLength + sizeof(SIGN_PREFIX) < MAX_RAW_TX)) THROW(...)
    memmove(tmpCtx.transactionContext.rawTx + sizeof(SIGN_PREFIX), workBuffer, dataLength);
}
```

In general, there is only a single remedy for buffer overflows -**always check for available buffer space before writing to memory**. The best is to not rely on some specific buffer size but instead rely on sizeof operator. If using sizeof, however, be very careful - if you ever pass a buffer to a function, you are losing its size!

``` c
uint8_t a[100];

main() {
 sizeof(a); // 100
 f(a);
 g(a);
}

void f(uint8_t* x) {
  sizeof(x); // 4
}

void g(uint8_t oops[100]) {
  sizeof(oops); // 4
}
```

For the extra safery, consider using a SIZEOF macro defined similarly to <https://github.com/LedgerHQ/ledger-app-cardano/blob/f578c903c19288495a359a2bc909b39c33ee69ca/src/utils.h#L27>

Be also wary of constructs like

``` c
memset(displayAddress, 0, sizeof(fullAddress));
memmove((void *)displayAddress, tmpCtx.address, 5);
memmove((void *)(displayAddress + 5), "...", 3);
memmove((void *)(displayAddress + 8), tmpCtx.address + addressLength - 4, 4);
```

There are several problematic aspects of such code. Apart from truncating important values (see next sections), this code makes a lot of assumptions. For example, if addressLength &lt; 4 (maybe some previous function returns addressLength=0 instead of an error) we get buffer underflow and copy up to 4 bytes of other memory and display it to the user. Or a programmer decides to shorten definition of fullAddress below 13 and we would overwrite memory after the buffer. Finally, this code uses explicit indexes (e.g., 5, 8=5+3). A better trick would be to have a safe helper macro:

``` c
#define APPEND(ptr, end, from, len) \
  do { \
    if (ptr + len >= end || len < 0) THROW(); // not enough space \
    memcpy(ptr, from, len); \
    ptr += len; \
  } while(0)

char* ptr_begin = displayAddress;
char* ptr_end = displayAddress + sizeof(displayAddress); // points behind buffer
APPEND(ptr_begin, ptr_end, tmpCtx.address, 5); // we should also assert addressLength>5
APPEND(ptr_begin, ptr_end, "...", 3); // Note, we still have explicit size here
APPEND(ptr_begin, ptr_end, tmpCtx.address - 4, 4); // Note: another assert
```

Finally, you can use SPRINTF macro from `sdk/include/os_io_seproxyhal.h` but be aware that the definition is

``` c
#define SPRINTF(strbuf, ...) snprintf(strbuf, sizeof(strbuf), __VA_ARGS__)
```

so the above warning about passing pointers instead of arrays applies to it.

## Integer overflows/underflows

Integer overflows go hand in hand with buffer overflows. In fact, they can cause serious buffer overflows. Consider following code where a numeric underflow causes buffer overflow of 64kB!

``` c
void handleSign(uint8_t p1, uint8_t p2, uint8_t *workBuffer,
                uint16_t dataLength, volatile unsigned int *flags,
                volatile unsigned int *tx)
{
    uint32_t i;

    // here we don't check if dataLength > 0 so we might be reading behind the buffer
    tmpCtx.transactionContext.pathLength = workBuffer[0];
    if ((tmpCtx.transactionContext.pathLength < 0x01) ||
        (tmpCtx.transactionContext.pathLength > MAX_BIP32_PATH))
    {
        PRINTF("Invalid path\n");
        THROW(0x6a80);
    }
    workBuffer++;
    dataLength--;
    for (i = 0; i < tmpCtx.transactionContext.pathLength; i++)
    {
        tmpCtx.transactionContext.bip32Path[i] =
            (workBuffer[0] << 24) | (workBuffer[1] << 16) |
            (workBuffer[2] << 8) | (workBuffer[3]);
        workBuffer += 4;
        // here we again blindly assume dataLength >= 4
        dataLength -= 4;
    }

    initTxContext(&txProcessingCtx, &sha256, &dataSha256, &txContent, N_storage.dataAllowed);
    // if we sent APDU with dataLength=0 at the beginning, we would end up with dataLength ~ 64kB here
    txResult = parseTx(&txProcessingCtx, workBuffer, dataLength);
    ...
}
```

As a general rule, be very careful about variables which might overflow or underflow. If possible, use bigger types that can accommodate the arithmetic operations you need to perform. For buffer sizes, prefer unsigned types -- that way, you can easily check both overflow and underflow in one go, i.e.

``` c
void f(uint8_t* buf, size_t bufSize) { // size_t is unsigned
  if (bufSize < REASONABLE_SIZE) THROW(); // guards both against underflow and overflow!
}
```

## Data Truncation

Speaking of safely formatting data, be wary of truncated values. Importantly, make sure you do not truncate any important data when displaying on the Ledger screen.

**Example 1**: Truncating tx hash from "f6954eb23ecd1d64c782e6d6c32fad2876003ae92986606585ae7187470d5e04" to "f695...5e04" might look nice for the users but this effectively reduces the security of hash and an attacker can now easily try to create a hash collision. Instead, prefer scrolling/paging of long important values.

**Example 2**: Raise errors instead of truncation

``` c
int tmp[10]; // max 10 digits, right?

uint32_t amount = 1987654321
SPRINTF(tmp, "%d", amount) // at least we won't get buffer overflow here ...
display(tmp) // but we display an empty screen!

// but it could be worse
// with bad custom formatting function we could get
format_amount(tmp, SIZEOF(tmp), amount) // "198765432" or "987654321"
```

## Stack overflow

You application has only a limited size (about \~700B) of stack. That is one of the reasons why stack cookies are not supported yet on the platform.

Given the memory constraints, BOLOS OS does not have memory mapping which would protect from stack overflow errors. As a result, it is very easy to consume more stack space and overwrite the end of your data.

Recommendation:

Enable `DEFINES += HAVE_BOLOS_APP_STACK_CANARY` in your Makefile. This will help you detect stack overflows during app development. If overflow is detected, the app will reboot the device. Note that the overflow check happens only on the next I/O. This means that the protection is not instant and an attacker might avoid the canary check: this option is not a security feature, and has been added to analyze the stack usage during testing process.

## Optimizations

Do not clear sensitive data with for-loops or other techniques. Do not use `memset` or `bzero` to clear sensitive data: it could be optimized and removed by the compiler.

**Recommendation**: Use `explicit_bzero` which guarantees that the compiler will not remove the erasure. (See [https://www.owasp.org/index.php/Insecure_Compiler_Optimization](https://www.owasp.org/index.php/Insecure_Compiler_Optimization) for an example of how things could go wrong.)
