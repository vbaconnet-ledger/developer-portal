---
title: Business logic problems
subtitle: Ensuring your app passes the security review
tags: []
category: Nano Application
toc: true
author:
layout: doc_na
---

## Swallowing errors & half-updated states

It goes without saying that you should check return value of functions for any errors. Fortunately, BOLOS throws an error if something goes wrong and you might want to do the same instead of relying on error codes.

There is, however, a more indirect problem. Some BOLOS apps silently catch exceptions in the main event loop without erasing app memory. This could lead into a following insidious bug:

``` c
uint16_t totalSize;
uint8_t totalBuf[1000];

void signTx(uint8_t p1, uint8_t p2, uint8_t* data, uint16_t dataSize) {
  if (p1 == P1_INIT) {
    totalSize = 0;
  }

  uint8_t* ptr = totalBuf[totalSize];
  totalSize += dataSize;
  if (totalSize > SIZEOF(totalBuf)) THROW(ERR);
  memcpy(ptr, data, dataSize);

  if (p2 == P2_CONTINUE) {
    THROW(0x9000); // early exit with success
  }
  do_something();
}
```

An attacker might do

1.  SignTx(INIT, 100 bytes of data) // OK
2.  SignTx(CONTINUE, 100 bytes of data) // OK

...

1.  SignTx(CONTINUE, 100 bytes of data) // OK
2.  SignTx(CONTINUE, 100 bytes of data) // throws

…

1.  SignTx(CONTINUE, 100 bytes of data) // throws
2.  SignTx(CONTINUE, 100 bytes of data) **// writes to data\[-64..36\]**

The problem here is that the app state is not updated in a "transactional" manner and attacker exploits this.

Recommendations: Try to not affect global state before you throw. Many times you can use a scratch memory to assemble result and only then do `memmove` to write the result. Even better, wipe memory/reboot device on exceptions to destroy any half-updated app states.

## Too lenient parsing of transactions

It might happen that your transaction parsing is too lenient. Importantly, this might cause problems if the transaction serialization spec is ambiguous and different clients might interpret it differently. For example, if a field might be repeated one parser might take the first value while another one a second. In general, lenient tx serialization spec should not happen (and if so, the cryptocurrency has bigger concerns than Ledger wallet).

However, even if the network nodes are strict with the serialization checking, you should not slack off on your part. Any ambiguity in parsing adds an attacker a leverage point once it finds some other vulnerability.

Recommendation: Be as strict as possible with transaction parsing. Accept only fields which are in normalized form. If possible, avoid repeated fields and accept fields only in a pre-described order.

Note: you can even go further and do not parse transaction on the device at all. Instead, just send the data in a custom format and let both the app and host serialize the transaction on their own with the app revealing (and signing) only the serialized hash. This way you can avoid bugs in parsing code and be sure both the host wallet and the app agree perfectly on the content of the transaction.

## Protect Against "Instruction Change" Attacks

Ledger applications live on a secure chip which is very limited in terms of its memory and communication channel. This brings in an interesting problem -- the application might not be able to perform all its work in a single request. Instead, the work will need to be spread over multiple requests. Whenever this happens, the application needs to be protected against attacker mixing multiple non-related (or even related) requests.

If your application contains at least one instruction which works over multiple APDU exchanges (e.g., having `P1_INIT/P1_CONTINUE` flag in the standard application "terminology"), you have to protect it from interference. Common attack scenarios:

### Example: Two multi-APDU instructions

Let's say you have SignTx and SignMessage, both sharing the same global `hash` variable, both instructions working over multiple APDU exchanges.The attacker might now call

1.  SignMessage(INIT)
2.  SignTx(INIT)
3.  SignMessage(CONTINUE) with data (no finish yet)
4.  SignTx(CONTINUE) with data (finish)

At this point, the global memory might be in an inconsistent state (for example, the SignTx hash does contain a different hash than it should be). This might lead to an easy attack.

### Example: Single multi-APDU instruction

Even if you have only a single instruction with multiple APDU exchanges, an attacker might gain some leverage. Let's say you have roughly

``` c
struct pubkey_ctx {
  int[10] bip32_path;
  int bip32_path_len;
}

struct sign_ctx {
  hash_ctx hash;
  // some other data
}

union {
  pubkey_ctx pubkey;
  sign_ctx signTx;
} ctx;
```

To overwrite the hash context with an exact chosen value.

### Example: "Self"-attack on a single multi-APDU instruction

You don't even need two instructions to perform a variation of the attack. Suppose your code goes along these lines

``` c
void signTx () {
  if (p1 == P1_INIT) {
    initialize_half_of_my_state()
    if (some_bad_input) THROW(error)
    initialize_rest_of_the_state
  } else {
    // do something
  }
}
```

Assuming that you do not reset state on exceptions, this might happen

1.  signTx(INIT, valid data)
2.  signTx(CONTINUE, valid data)
3.  signTx(INIT, data which throws)
4.  signTx(CONTINUE, more data)

An attacker now managed to reset half of your state (maybe tx length) but not the rest of it (maybe tx hash) which might allow it to attack your code.

Obviously, there are many variations of this basic scheme and an utmost care needs to be taken here. The recommendation here is:

1.  Do not allow mixing of instructions
2.  Within instruction, keep an explicit state machine of what is allowed to happen next)
1.  Clear memory on exceptions

## Use explicit state machines

Whenever a host is required to perform certain actions in a specific order, be sure to explicitly track the state and verify that the next step is consistent. Good examples of what might need to be checked

1. If the host claims some number of tx inputs/outputs, make sure you receive exactly that amount, not more and not less
2. If the host needs to send multiple transaction inputs and outputs and you have to process inputs before outputs, make sure the host cannot send additional input after it received an output.
3. Check that once you finished an action (signing), the attacker cannot resume with additional data (which might be empty). This is important, because usually signing "closes" some hash contexts (or destroy some other data) and re-running `SignTx(CONTINUE, empty data)` might, therefore, yield either crash or produce a signature of some different data. In general, after finishing a request you should wipe the context variable
4. If you do not reset UI after sending APDU (for example, because you displayed an address and now you are waiting for another APDU containing tx amount), make sure your button handlers fire just once -- a user might press the buttons multiple times. A general recommendation would be to always reset UI with APDU response. Additionally, you can guard your app against itself (and against bad SDK) with tracking whether it should be in IO/UI phase and assert on it in APDU/UI handlers.

A (somewhat contrived) example of problematic button handlers

``` c
void handle_sign_message(...) {
  ... // validations
  if (!is_last_apdu) {
    cx_hash(CX_CONTINUE, ctx->hash, data);
  else {
    memcpy(ctx->last_part, data);
    flags *= IO_ASYNCH;
    display_tx_prompt();
  }
}

unsigned int io_seproxyhal_touch_tx_ok() {
  // for some reason we modify ctx state here
  cx_hash(CX_LAST, ctx->last_part);
  sign(ctx->last_part);
  // now do io_exchange

  // Warning: this might throw (host might do something weird with USB)
  // -> user will press the button second time
  // -> we do another round of cx_hash -> efficiently signing
  io_exchange(....);
  // now reset UI
  ui_idle(); // <-- this line resets button callback
}
```

A fully resilient solution would be

``` c
void display_tx_prompt() {
   tx_prompt_handled = false;
   ...
}

unsigned int io_seproxyhal_touch_tx_ok() {
  assert(!tx_prompt_handled);
  tx_prompt_handled = true;
  ...
}

unsigned int io_seproxyhal_touch_tx_cancel() {
  assert(!tx_prompt_handled);
  tx_prompt_handled = true;
  ...
}
```

But such a solution is needed only if `tx_ok` or `tx_cancel` modify context/global variables before calling `ui_idle()`.

As a side note, if your `__ok()`/`__cancel()` handler both :
1. do not check whether the memory is cleared, but :
2. clear the memory inside the handler

make sure that memclear happens after calling `ui_idle()`.


Note: If not guarded properly, an attacker might try a following line of attack:

1.  Send transaction which is not what user wanted
2.  User realizes that the transaction is wrong and presses reject
3.  Attacker hogs `io_exchange` (presumably by doing some bad things to USB communication)
1.  User tries again a few more times, thinks that the UI is broken and the app hanged. The callbacks are fired again and again but `io_exchange` still throws
1.  At this point in time, a desperate user might click on "confirm" button to unblock the UI. If an attacker can guess this time, she can un-hog USB and receive confirm callback
