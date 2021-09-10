---
title: Bitcoin app variants
subtitle:
tags: [bitcoin clone, clone]
category: Nano Application
toc: true
author:
layout: doc_na
---

## Start here

1. Clone the Bitcoin application: `git clone https://github.com/LedgerHQ/app-bitcoin.git`

2. Before commiting your changes remember to sign your commits.

{% include alert.html style="warning" text="For security reasons, all commits must be signed using the -S flag : <code>$ git commit -S -m your commit message</code>" %}

## Modify the Makefile

Following the next example, add your chain to the Bitcoin app's makefile, here:

``` c
else ifeq ($(COIN),firo)
DEFINES   += BIP44_COIN_TYPE=136 BIP44_COIN_TYPE_2=136 COIN_P2PKH_VERSION=82 COIN_P2SH_VERSION=7 COIN_FAMILY=1 COIN_COINID=\"Zcoin\" COIN_COINID_HEADER=\"FIRO\" COIN_COLOR_HDR=0x3EAD54 COIN_COLOR_DB=0xA3DCAE COIN_COINID_NAME=\"Firo\" COIN_COINID_SHORT=\"FIRO\" COIN_KIND=COIN_KIND_FIRO
APPNAME ="Firo"
APP_LOAD_PARAMS += --path $(APP_PATH)
```

and here:

```c
ifeq ($(filter clean,$(MAKECMDGOALS)),)
$(error Unsupported COIN - use bitcoin_testnet, bitcoin, bitcoin_cash, bitcoin_gold, litecoin, dogecoin, dash, zcash, horizen, komodo, stratis, peercoin, posw, pivx, viacoin, vertcoin, stealth, digibyte, qtum, hcash, bitcoin_private, firo, gamecredits, zclassic)
```

### Modify include/btchip_context.h

``` c
typedef enum btchip_coin_kind_e {
    COIN_KIND_BITCOIN_TESTNET,
    (...)
    COIN_KIND_FIRO,
    COIN_KIND_ZCLASSIC,
    COIN_KIND_XSN,
    COIN_KIND_NIX,
    COIN_KIND_LBRY,
    COIN_KIND_RESISTANCE,
    COIN_KIND_RAVENCOIN
} btchip_coin_kind_t;

```

## Upload your app's icons

Once you have created your App's icons following the [Design requirements](../design-requirements), upload them in the `/icons` folder.

## Open a pull request

When your application is ready, open a pull request on the Bitcoin application repository.
