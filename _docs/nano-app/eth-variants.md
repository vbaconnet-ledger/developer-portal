---
title: Ethereum app variants
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

{% include alert.html style="warning" text="For security reasons, all commits must be signed using the -S flag : <code>$ git commit -S -m your commit message</code>" %}

## 1.1 Modify the Makefile

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

## 1.2 Modify src/chainConfig.h

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
## 1.3 Modify src_common/network.c

It is not compulsory but it is highly recommended to add your chain in `scr_common/network.c` like the following examples:

```c
const network_info_t NETWORK_MAPPING[] = {
    {.chain_id = 1, .name = "Ethereum", .ticker = "ETH "},
    {.chain_id = 3, .name = "Ropsten", .ticker = "ETH "},
    {.chain_id = 4, .name = "Rinkeby", .ticker = "ETH "},
    (...)
    {.chain_id = 44787, .name = "Celo Alfajores", .ticker = "aCELO "},
    {.chain_id = 62320, .name = "Celo Baklava", .ticker = "bCELO "},
    {.chain_id = 11297108109, .name = "Palm Network", .ticker = "PALM "}};
```

## 1.4 Upload your app's icons

Once you have created your App's icons following the [Design requirements](../design-requirements), upload them in the `/icons` folder.

## 2. Add token support (optional)

If you want the app to handle tokens transactions, modifiy `src/main.h`, `src/tokens.c` and `src/tokens.h`, following the next examples.

### 2.1 Modify src/main.h

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

### 2.2 Modify src/tokens.c

Add:
```c
const tokenDefinition_t const TOKENS_TOMOCHAIN[NUM_TOKENS_TOMOCHAIN] = {};
```

### 2.3 Modify src/tokens.h

Add:
```c
#define NUM_TOKENS_TOMOCHAIN 0
```

and:
```c
extern tokenDefinition_t const TOKENS_TOMOCHAIN[NUM_TOKENS_TOMOCHAIN];
```


## 3. Open a pull request

When your application is ready, open a pull request on the Ethereum application repository.

