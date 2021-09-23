---
title: Ethereum clones app
subtitle:
tags: [ethereum clone, clone]
category: Nano Application
toc: true
author:
layout: doc_na
---

## Start here

1. Clone the Ethereum application: `git clone https://github.com/LedgerHQ/app-ethereum.git`

2. Before commiting your changes remember to sign your commits.

{% include alert.html style="warning" text="For security reasons, the repository is set up to accept only pull requests with signed commits. To sign your commits, use the -S flag : <code>$ git commit -S -m your commit message</code>" %}

## 1. Modify the Makefile

Following the next example, add your chain to the Ethereum app's makefile, here:

``` c
else ifeq ($(CHAIN),tomochain)
APP_LOAD_PARAMS += --path "44'/889'"
DEFINES += CHAINID_UPCASE=\"TOMOCHAIN\" CHAINID_COINNAME=\"TOMO\" CHAIN_KIND=CHAIN_KIND_TOMOCHAIN CHAIN_ID=88
APPNAME = "TomoChain"
```

<!--  -->
{% include alert.html style="warning" text="It is necessary to choose a Derivation Path and a Chain ID specific to your network to prevent the risk of replay attack (Introduced by EIP155) that can happen when using the same Derivation Path ( m/44'/60'/0') and Chain ID as Ethereum. This could expose your users to loss of funds.<br>
You can either use the same Derivation Path but define a new chain ID (make sure this is not used by another network) or use slip44/BIP44 standard to reserve a dedicated coin type that will allow you to define a new derivation path." %}
<!--  -->


Add your chain to the following list:

``` c
ifeq ($(filter clean,$(MAKECMDGOALS)),)
$(error Unsupported CHAIN - use ethereum, ropsten, ethereum_classic, expanse, poa, artis_sigma1, artis_tau1, rsk, rsk_testnet, ubiq, wanchain, kusd, musicoin, pirl, akroma, atheios, callisto, ethersocial, ellaism, ether1, ethergem, gochain, mix, reosc, hpb, tomochain, tobalaba, dexon, volta, ewc, webchain, thundercore, bsc, songbird)
endif
```

And finally, here:

``` c
@echo VARIANTS CHAIN ethereum ethereum_classic expanse poa rsk rsk_testnet ubiq wanchain kusd pirl akroma atheios callisto ethersocial ether1 gochain musicoin ethergem mix ellaism reosc hpb tomochain
```

## 2. Modify src/chainConfig.h

Inside `scr/chainConfig.h`, add your chain in `chain_kind_e`:

``` c
typedef enum chain_kind_e {
    CHAIN_KIND_ETHEREUM,
  CHAIN_KIND_REOSC,
  (...)
  CHAIN_KIND_HPB,
  CHAIN_KIND_TOMOCHAIN
} chain_kind_t;

```
## 3. Upload your app's icons

Once you have created your App's icons following the [Design requirements](../design-requirements), upload them in the `/icons` folder.

## 4. Modify src/main.h

Add:

```c
case CHAIN_KIND_TOMOCHAIN:
    numTokens = NUM_TOKENS_TOMOCHAIN;
    break;
```

and:
```c
case CHAIN_KIND_TOMOCHAIN:
    currentToken = (tokenDefinition_t *)PIC(&TOKENS_TOMOCHAIN[i]);
    break;
```

## 5. Open a pull request

When your application is ready, open a pull request on the Ethereum application repository.

Please get in touch with our team on the [Ledger Dev Slack workspace](https://developers.ledger.com/contact/) to get your PR reviewed.
