---
title: Ethereum app variants
subtitle:
tags: []
toc: true
author:
layout: doc_na
---

## Start here

1. Clone the Ethereum application: `git clone https://github.com/LedgerHQ/app-ethereum.git`

2. Before commiting your changes remember to sign your commits.

{% include alert.html style="warning" text="For security reasons, all commits must be signed using the -S flag : <code>$ git commit -S -m your commit message</code>" %}

## Modify the Makefile

Following the next example, add your chain to the Ethereum app's makefile, here:

``` c
else ifeq ($(CHAIN),tomochain)
APP_LOAD_PARAMS += --path "44'/889'"
DEFINES += CHAINID_UPCASE=\"TOMOCHAIN\" CHAINID_COINNAME=\"TOMO\" CHAIN_KIND=CHAIN_KIND_TOMOCHAIN CHAIN_ID=88
APPNAME = "TomoChain"
```

Here:

``` c
ifeq ($(filter clean,$(MAKECMDGOALS)),)
$(error Unsupported CHAIN - use ethereum, ropsten, ethereum_classic, expanse, poa, artis_sigma1, artis_tau1, rsk, rsk_testnet, ubiq, wanchain, kusd, musicoin, pirl, akroma, atheios, callisto, ethersocial, ellaism, ether1, ethergem, gochain, mix, reosc, hpb, tomochain, tobalaba, dexon, volta, ewc, webchain, thundercore, bsc, songbird)
endif
```

And finally, here:

``` c
@echo VARIANTS CHAIN ethereum ethereum_classic expanse poa rsk rsk_testnet ubiq wanchain kusd pirl akroma atheios callisto ethersocial ether1 gochain musicoin ethergem mix ellaism reosc hpb tomochain
```

## Modify src/chainConfig.h

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


## Upload your app's icons

Once you have created your App's icons following the [Design requirements](../design-requirements), upload them in the `/icons` folder.

## Adding tokens

If you want the app to handle your tokens' transactions, modifiy `src/main.h`, `src/tokens.c` and `src/tokens.h`, following the next examples.

### Modify src/main.h

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

### Modify src/tokens.c

Add:
```c
const tokenDefinition_t const TOKENS_TOMOCHAIN[NUM_TOKENS_TOMOCHAIN] = {};
```

### Modify src/tokens.h

Add:
```c
#define NUM_TOKENS_TOMOCHAIN 0
```

and:
```c
extern tokenDefinition_t const TOKENS_TOMOCHAIN[NUM_TOKENS_TOMOCHAIN];
```


## Open a pull request

When your application is ready, open a pull request on the Ethereum application repository.

