---
title: Cryptography
subtitle: Ensuring your app passes the security review
tags: [security, errors, blind signing, crypto primitives, BIP32 paths, derivation path, private key, key pairs]
category: Nano Application
toc: true
author:
layout: doc_na
---

This section presents general concepts about cryptography development, but also guidelines specific to the security model of the Ledger devices. It gives guidelines to:

-   Ensure a potential vulnerability in one application will not cause damages to other apps.
-   Make sure all the operations that manipulate secrets are approved by the user.
-   Restrict the use of these secrets by apps.

## Don't roll your own crypto primitives

**You should never roll your own crypto primitives** (including encryption/derivation schemes, hashing functions, HMAC, etc.)

Rationale: It is a purpose of BOLOS operating system to perform these in a secure manner. Importantly, writing your own crypto primitives is likely to open you to side-channel attacks or other problems. If your primitive is not supported by BOLOS (e.g., some very new cryptography), consult with Ledger developers the possibility of including it in the OS.

## Avoid blindly signing data

**You should never allow signing of any attacker-controlled message unless it has been verified for structural validity. Importantly, you should never sign a message that might be a hash of transaction.**

Rationale: If you allow an attacker to blindly sign a message, it can easily supply a hash of a valid transaction. Your signature could then be used to send an unauthorized transaction.

If you want to sign user-supplied "personal" messages, prefix them with a fixed string (which shouldn't be a valid transaction prefix). It is also a good practice to include message length in the text to be signed. Ledger-app-eth has a good example in function `handleSignPersonalMessage`. Note that sometimes cryptocurrencies have a standardized way of signing such personal messages and in that case you should use the approved scheme.

Warning: If you allow signing untrusted hashes (while displaying a prompt to the user), be aware that

1.  Some users are not familiar with security and could be easily tricked. They can click through your prompt without properly checking unless you give them explicit "Warning: this is a very unusual operation. Do not continue unless you know what you are doing" warning. They might not see the message even then.
1.  A compromised host might both change hash on the screen and also data sent to device. This opens the possibility of users signing something they didn't want to.

## Restrict Apps to Coin-Specific BIP32 Prefix

BIP32 paths on which the app can derive keys must be restricted in your application. The chosen derivation paths must not conflict with existing paths if the use case differs.

<!--  -->
{% include alert.html style="warning" text="Ledger will not sign apps whose BIP32 prefixes have not been properly set." %}
<!--  -->


Restricting the derivation path can be done by setting the `--path` property in the app Makefile.

For example, if your application derive keys on the hardened path 44'/60', specify in your Makefile:

``` makefile
APP_LOAD_PARAMS += --path "44'/60'"
```

Derivation can also be restricted to a specific curve using the `--curve` property. Supported curves are `secp256k1`, `prime256r1` and `ed25519`.

Several curves and paths can be configured at the same time. For example, if your app must derive keys on paths 44'/535348', 13' and 17', on curves Ed25519 and prime256r1, the Makefile should contain:

``` makefile
APP_LOAD_PARAMS=--curve ed25519 --curve prime256r1 --path "44'/535348'" --path "13'" --path "17'"
```

Rationale: Setting prefixes is crucial, as it limits the amount of damage an attacker can cause if they manage to compromise an application. If a vulnerability is exploited on a poorly written or backdoored application, an attacker should not be able to exploit it to extract private keys from other apps, such as Bitcoin or Ethereum keys.

<!--  -->
{% include alert.html style="warning" text="If your application derives keys on the hardened path 44'/60' then the chainID parameter must be different from 0 or 1. This is necessary to avoid replaying transactions broadcoast on Ethereum-like chains on Ethereum. As a general recommendation, and to ensure a good level of privacy for the end user, we recommend to always use the correct coin type in the derivation path as defined in <a href='https://github.com/satoshilabs/slips/blob/master/slip-0044.md' class='alert-link'> slip44 </a>" %}
<!--  -->

## Signing/disclosing keys without user approval

<!--  -->
{% include alert.html style="warning" text="You must always require user approval for signing transactions/messages." %}
<!--  -->

Rationale: If you do not require user consent for signing important data, an attacker can use your device as a signing black box and sign whatever they want.


<!--  -->
{% include alert.html style="primary" text="You might also consider approvals for extracting public keys, as some users might want extended privacy." %}
<!--  -->


1.  They might not want to reveal their *root/account* public key, only address keys
2.  They might not want to reveal address public key until it is required. (Some cryptocurrencies use addresses that are hash of public keys. It is therefore enough to send the address to the host).


<!--  -->
{% include alert.html style="primary" text="There is a trade-off between privacy and usability here. If you want privacy, it would require a user interaction every time they want to use Ledger device, as opposed to only interaction while signing transactions. The behaviour could also be manually set in the application options." %}
<!--  -->

## Private Key Management

**You should minimize the code that works with private (ECDSA, RSA, etc.) or secret (HMAC, AES, etc.) keys.** Importantly, you should always **clear the memory** after you use these keys. That includes key data and key objects.

Leaving parts of private or secret keys lying around in memory is not a security issue on its own because there is no easy way to extract the RAM content on the chip. If a key is left in RAM by an app, another app will not be able to access it.

However, if the key has not properly been erased, a security issue could lead to the leak of this key, even if it is not used anymore. An attacker able to read arbitrary memory from the app, or execute arbitrary code, will be able to read the content of the stack segment, hence the parts of the key which have not been erased.

Here is an exemple of a common and **wrong way** of doing this:

``` c
uint8_t privateKeyData[64];
cx_ecfp_private_key_t privateKey;

os_perso_derive_node_bip32(
    tmpCtx.transactionContext.curve, tmpCtx.transactionContext.bip32Path,
    tmpCtx.transactionContext.pathLength, privateKeyData,
    NULL);
cx_ecfp_init_private_key(tmpCtx.transactionContext.curve, privateKeyData,
                         32, &privateKey);
explicit_bzero(privateKeyData, sizeof(privateKeyData));

// (later, after privateKey is not needed)
explicit_bzero(&privateKey, sizeof(privateKey));
```

In the happy path, the previous code will correctly clean the memory once the private key is initialized. Note, however, that this code **fails to protect private keys in case some system call throws (for example cx\_ecfp\_init\_private\_key)**. Correct code should wrap the clearing in `BEGIN_TRY { TRY { ... } FINALLY { explicit_bzero() } END_TRY;`.

Applications where such issues were fixed include [the ARK app](https://github.com/LedgerHQ/app-ark/commit/e84a4dc0c422f7ade586c831cbab56cb15c64df1) and [the Solana app](https://github.com/LedgerHQ/app-solana/pull/5/files).

## Be Wary of Untrusted Input

Some cryptocurrencies do not have *explicit* fee encoded in the transaction. In such cases, the app cannot rely on the fee value sent from the host. Instead, it should receive previous UTxOs and check their output amounts. Note that this usually needs to be done in a separate step due to memory constraints. Check with BTC/Cardano app design for this.

## Properly protect data you wish to cache on the host computer

Sometimes your app needs to compute over more data than it can fit inside memory. Taking an example from the previous section, it might not be easy to store all UTxOs in the device memory. As such, you might break computation into multiple steps and, for example, verify each UTxO separately and let the host computer cache a "certified summary". If you do this, be aware that

1. If the information you want the host to cache is public, you still need to attach a signature to it so that the host cannot send some other value later. This could be done with standard HMAC digest. We would recommend using a temporary (per session) key for this --having a per-session HMAC allows you to truncate the digest size (e.g., you don't need to have HMAC which withstands years of brute-force attack. Instead, you can balance the digest size against some reasonable upper bound on how long the session lives (e.g., one month should be enough)).

2. If the information is not public, you need to both encrypt and provide a signature. Notably, it is not enough to "scramble" the data by XORing with a random key as this would still allow the attacker to tamper with the values. (Or even break the scrambling if you re-use the same key).

    Instead:

    -   Encrypt the information with a sufficiently strong cypher
    -   Provide a digest to avoid tampering with the value

## Do not allow the host to freely manipulate key-pairs

Some cryptocurrencies (notably Monero) need to perform an extensive calculation with *(public, private)* key-pair spread over multiple APDU exchanges. If you need to do the same, **do not** allow the attacker to step out of the protocol. Notably, allowing the attacker to freely perform key manipulation (e.g., group multiplications, exponentiations, etc.) could undermine your app security **even if the private key never leaves the device**. In general, keep an explicit protocol state machine during the computation. Also, consult with cryptography experts to check for implications if you misstep from the protocol.
