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

{% include alert.html style="warning" text="For security reasons, all commits must be signed using the -S flag : <code>$ git commit -S -m your commit message</code>" %}

## 1. Modify the Makefile

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
## 3. Modify src_common/network.c

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

## 4. Upload your app's icons

Once you have created your App's icons following the [Design requirements](../design-requirements), upload them in the `/icons` folder.

## 5. Modify src/main.h

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

## 6. Modify src/tokens.c

Add:
```c
const tokenDefinition_t const TOKENS_TOMOCHAIN[NUM_TOKENS_TOMOCHAIN] = {};
```

## 7. Modify src/tokens.h

Add:
```c
#define NUM_TOKENS_TOMOCHAIN 0
```

and:
```c
extern tokenDefinition_t const TOKENS_TOMOCHAIN[NUM_TOKENS_TOMOCHAIN];
```

## 8. Add token support (optional)

If you want the app to handle tokens transactions, follow all the steps above and add your token in `src/tokens.c` and `src/tokens.h`.

### Update src/tokens.c

Add your tokens as in the following example. Format of a token is: `{address, ticker, decimals}`.

{% highlight c %}
{% raw %}
const tokenDefinition_t const TOKENS_ETHEREUM[NUM_TOKENS_ETHEREUM] = {
    {{0xdb, 0x25, 0xf2, 0x11, 0xab, 0x05, 0xb1, 0xc9, 0x7d, 0x59,
      0x55, 0x16, 0xf4, 0x57, 0x94, 0x52, 0x8a, 0x80, 0x7a, 0xd8},
     "EURS ",
     2},
    {{0xa7, 0x44, 0x76, 0x44, 0x31, 0x19, 0xA9, 0x42, 0xdE, 0x49,
      0x85, 0x90, 0xFe, 0x1f, 0x24, 0x54, 0xd7, 0xD4, 0xaC, 0x0d},
     "GNT ",
     18},
};
{% endraw %}
{% endhighlight %}

Replace `ETHEREUM` with the name of your chain and the content with your token's address, ticker and decimal.


### Update src/tokens.h

Add the number of tokens like in the following example:

``` c
#define NUM_TOKENS_ETHEREUM         2
```

Replace `ETHEREUM` with the name of your chain and the number with the number of tokens you have added.

Keep this line as shown above:

``` c
extern tokenDefinition_t const TOKENS_ETHEREUM[NUM_TOKENS_ETHEREUM];
```

Replace `ETHEREUM` with the name of your chain

## 9. Open a pull request

When your application is ready, open a pull request on the Ethereum application repository.

