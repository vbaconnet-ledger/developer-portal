---
title: Node Speculos
subtitle:
tags: [communication, transport, wallet, companion, package]
category: Connect a wallet application
author:
toc: true
layout: doc_tr
---



This is a package for the Speculos Nano emulator.

## Install the package

`yarn add @ledgerhq/hw-transport-node-speculos`

## Getting started

-   Install [Speculos](../../speculos/introduction).
-   Make sure to have a Speculos running with a APDU port and (optionally) a buttons port available.

```js
import SpeculosTransport from "@ledgerhq/hw-transport-node-speculos";

const apduPort = 40000;

async function exampleSimple() {
  const transport = await SpeculosTransport.open({ apduPort });
  const res = await transport.send(0xE0, 0x01, 0x00, 0x00);
}

async function exampleAdvanced() {
  const transport = await SpeculosTransport.open({ apduPort });
  setTimeout(() => {
    // in 1s i'll click on right button and release
    transport.button("Rr");
  }, 1000); // 1s is a tradeoff here. In future, we need to be able to "await & expect a text" but that will need a feature from speculos to notify us when text changes.
  // derivate btc address and ask for device verification
  const res = await transport.send(0xE0, 0x40, 0x01, 0x00, Buffer.from("058000002c8000000080000000000000000000000f"));
}
```

## With ledger-live CLI

It's working with SPECULOS_APDU_PORT and SPECULOS_HOST envs.

```sh
SPECULOS_APDU_PORT=40000 ledger-live sync -c btc

# starts an http proxy with speculos (http proxy that works with LLD and LLM)
SPECULOS_APDU_PORT=40000 ledger-live proxy
```

To make it work with Docker, you need to expose some port and do this:

```sh
docker run -it -p 40000:40000 -v "$(pwd)"/apps:/speculos/apps speculos /bin/bash

$ pipenv shell
$ ./speculos.py -m nanos ./apps/btc.elf --sdk 1.6 --seed "abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon about" --display headless --apdu-port 40000
```

## Implementation

### SpeculosTransportOpts

Type: {apduPort: [number](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Number), buttonPort: [number](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Number)?, automationPort: [number](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Number)?, host: [string](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/String)?}

#### Properties

-   `apduPort` **[number](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Number)**
-   `buttonPort` **[number](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Number)?**
-   `automationPort` **[number](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Number)?**
-   `host` **[string](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/String)?**

### SpeculosTransport

**Extends Transport**

Speculos TCP transport implementation

#### Parameters

-   `apduSocket` **net.Socket**
-   `opts` **[SpeculosTransportOpts](#speculostransportopts)**

#### Examples

```javascript
import SpeculosTransport from "@ledgerhq/hw-transport-node-speculos";
const transport = await SpeculosTransport.open({ apduPort });
const res = await transport.send(0xE0, 0x01, 0, 0);
```

#### button

Send a speculos button command
typically "Ll" would press and release the left button
typically "Rr" would press and release the right button

**Parameters**

-   `command` **any**

Returns **[Promise](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Promise)&lt;void>**

#### open

**Parameters**

-   `opts` **[SpeculosTransportOpts](#speculostransportopts)**

Returns **[Promise](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Promise)&lt;[SpeculosTransport](#speculostransport)>**
