---
title: Application Architecture
subtitle:
tags: []
category: Connect a wallet
author:
toc: true
layout: doc_tr
---

You have now managed to connect to the Nano by using multiple means like USB, HID and bluetooth.
Additionnaly, during the integration walkthrough we use different technology (Javascript, React Native, Node, Electron).

## Transport
To sum up the "Transport" package have the crucial rôle to communicate with the Ledger Nano S/X.
It communicate thanks to an APDU protocol (Application Protocol Data Unit).

Many ways of communication exist, it depends on the application you want to build.

You can find a list of Transport below.

| Web Application | Transport |
|-------------|--------------|
|[Web] (Web Bluetooth) | [![npm](https://img.shields.io/npm/v/@ledgerhq/hw-transport-web-ble.svg)](https://www.npmjs.com/package/@ledgerhq/hw-transport-web-ble) [@ledgerhq/hw-transport-web-ble](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-web-ble)   |
|[Web] (WebHID) | [![npm](https://img.shields.io/npm/v/@ledgerhq/hw-transport-webhid.svg)](https://www.npmjs.com/package/@ledgerhq/hw-transport-webhid) [@ledgerhq/hw-transport-webhid](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-webhid)   |
|[Web] (WebUSB) | [![npm](https://img.shields.io/npm/v/@ledgerhq/hw-transport-webusb.svg)](https://www.npmjs.com/package/@ledgerhq/hw-transport-webusb) [@ledgerhq/hw-transport-webusb](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-webusb)   |

| Web Application | Transport |
|-------------|--------------|
|[React Native] (HID) Android | [![npm](https://img.shields.io/npm/v/@ledgerhq/react-native-hid.svg)](https://www.npmjs.com/package/@ledgerhq/react-native-hid) [@ledgerhq/react-native-hid](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/react-native-hid)   |
|[React Native] (Bluetooth) | [![npm](https://img.shields.io/npm/v/@ledgerhq/react-native-hw-transport-ble.svg)](https://www.npmjs.com/package/@ledgerhq/react-native-hw-transport-ble) [@ledgerhq/react-native-hw-transport-ble](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/react-native-hw-transport-ble)   |

| Desktop Application | Transport |
|-------------|--------------|
|[Node]/Electron (BLE) (experimental) | [![npm](https://img.shields.io/npm/v/@ledgerhq/hw-transport-node-ble.svg)](https://www.npmjs.com/package/@ledgerhq/hw-transport-node-ble) [@ledgerhq/hw-transport-node-ble](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-node-ble)   |
|[Node]/Electron (HID) | [![npm](https://img.shields.io/npm/v/@ledgerhq/hw-transport-node-hid-noevents.svg)](https://www.npmjs.com/package/@ledgerhq/hw-transport-node-hid-noevents) [@ledgerhq/hw-transport-node-hid-noevents](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-node-hid-noevents)   |
|[Node]/Electron (HID) | [![npm](https://img.shields.io/npm/v/@ledgerhq/hw-transport-node-hid-singleton.svg)](https://www.npmjs.com/package/@ledgerhq/hw-transport-node-hid-singleton) [@ledgerhq/hw-transport-node-hid-singleton](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-node-hid-singleton)   |
|[Node]/Electron (HID) | [![npm](https://img.shields.io/npm/v/@ledgerhq/hw-transport-node-hid.svg)](https://www.npmjs.com/package/@ledgerhq/hw-transport-node-hid) [@ledgerhq/hw-transport-node-hid](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-node-hid)   |

All these transports implement a generic interface exposed by [@ledgerhq/hw-transport](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport). There are specifics for each transport which are explained in each package on the [Ledger Github](https://github.com/LedgerHQ/ledgerjs).


## Nano API

This section describes how to call various instructions to the Nano using a Nano API.
You must have encontered few of the APIs if you have gone through the <a href='./web-integration'>Integration Walkthrough</a>.
In the <a href='./web-integration'>Integration Walkthrough</a> we have mostly used the Bitcoin and Ethereum API provided by ledger.

The APIs are not written in the same way for all Nano apps. In addition, while some of them are provided by ledger, others are written by the various crypto communities.

You can have a look at how they are coded and documented at the <a href='https://github.com/LedgerHQ/ledgerjs'>LedgerHQ repository</a>.
You can also see the different Nano API provided by ledger below.

### Nano APIs provided by Ledger

Here is the list of all the APIs provided by Ledger.

| Blockchain | Nano API |
|-------------|--------------|
|Algorand | [![npm](https://img.shields.io/npm/v/@ledgerhq/hw-app-algorand.svg)](https://www.npmjs.com/package/@ledgerhq/hw-app-algorand) [@ledgerhq/hw-app-algorand](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-app-algorand)   |
|Bitcoin | [![npm](https://img.shields.io/npm/v/@ledgerhq/hw-app-btc.svg)](https://www.npmjs.com/package/@ledgerhq/hw-app-btc) [@ledgerhq/hw-app-btc](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-app-btc)   |
|Cosmos | [![npm](https://img.shields.io/npm/v/@ledgerhq/hw-app-cosmos.svg)](https://www.npmjs.com/package/@ledgerhq/hw-app-cosmos) [@ledgerhq/hw-app-cosmos](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-app-cosmos)   |
|Elrond | [![npm](https://img.shields.io/npm/v/@ledgerhq/hw-app-elrond.svg)](https://www.npmjs.com/package/@ledgerhq/hw-app-elrond) [@ledgerhq/hw-app-elrond](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-app-elrond)   |
|Ethereum | [![npm](https://img.shields.io/npm/v/@ledgerhq/hw-app-eth.svg)](https://www.npmjs.com/package/@ledgerhq/hw-app-eth) [@ledgerhq/hw-app-eth](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-app-eth)   |
|Polkadot | [![npm](https://img.shields.io/npm/v/@ledgerhq/hw-app-polkadot.svg)](https://www.npmjs.com/package/@ledgerhq/hw-app-polkadot) [@ledgerhq/hw-app-polkadot](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-app-polkadot)   |
|Solana | [![npm](https://img.shields.io/npm/v/@ledgerhq/hw-app-solana.svg)](https://www.npmjs.com/package/@ledgerhq/hw-app-solana) [@ledgerhq/hw-app-solana](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-app-solana)   |
|Stellar | [![npm](https://img.shields.io/npm/v/@ledgerhq/hw-app-str.svg)](https://www.npmjs.com/package/@ledgerhq/hw-app-str) [@ledgerhq/hw-app-str](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-app-str)   |
|Tezos | [![npm](https://img.shields.io/npm/v/@ledgerhq/hw-app-tezos.svg)](https://www.npmjs.com/package/@ledgerhq/hw-app-tezos) [@ledgerhq/hw-app-tezos](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-app-tezos)   |
|Tron | [![npm](https://img.shields.io/npm/v/@ledgerhq/hw-app-trx.svg)](https://www.npmjs.com/package/@ledgerhq/hw-app-trx) [@ledgerhq/hw-app-trx](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-app-trx)   |
|Ripple | [![npm](https://img.shields.io/npm/v/@ledgerhq/hw-app-xrp.svg)](https://www.npmjs.com/package/@ledgerhq/hw-app-xrp) [@ledgerhq/hw-app-xrp](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-app-xrp)   |


### Nano APIs provided by the crypto-asset community

You may find these libraries on the GitHub repositories written by the community.

We currently do not have an updated list of all community-developed Nano APIs. If you wish to contribute yours, please use the comment box at the bottom of this page.

Here is the list of all the APIs from the community that you can find on npm.

| Blockchain | Nano API |
|-------------|--------------|
|Vite | [![npm](https://img.shields.io/npm/v/@vite/ledgerjs-hw-app-vite.svg)](https://www.npmjs.com/package/@vite/ledgerjs-hw-app-vite) [ledgerjs-hw-app-vite](https://github.com/vitelabs/ledgerjs-hw-app-vite)   |
|Ergo | [![npm](https://img.shields.io/npm/v/ledgerjs-hw-app-ergo.svg)](https://www.npmjs.com/package/ledgerjs-hw-app-ergo) [ledgerjs-hw-app-ergo](https://github.com/tesseract-one/ledger-app-ergo)   |
|Cardano | [![npm](https://img.shields.io/npm/v/@cardano-foundation/ledgerjs-hw-app-cardano.svg)](https://www.npmjs.com/package/@cardano-foundation/ledgerjs-hw-app-cardano) [@cardano-foundation/ledgerjs-hw-app-cardano](https://github.com/cardano-foundation/ledger-app-cardano)   |
|Sia | [![npm](https://img.shields.io/npm/v/@siacentral/ledgerjs-sia.svg)](https://www.npmjs.com/package/@siacentral/ledgerjs-sia) [@siacentral/ledgerjs-sia](https://github.com/siacentral/ledgerjs-sia)   |

### Raw Nano app calls

When there is no available Nano API, the way to make your Nano calls is by constructing the call yourself, by using the syntax information found in the application documentation.

Here are some examples:

| Blockchain App | Application documentation |
|-------------|--------------| 
| Polymath | [Polymath](https://github.com/LedgerHQ/app-polymesh/blob/master/docs/APDUSPEC.md) | 
| Filecoin | [Filecoin](https://github.com/LedgerHQ/app-filecoin/blob/master/docs/APDUSPEC.md) | 



## Test APDUs with Ledger REPL

The [Ledger REPL](https://repl.ledger.tools/) web application is a Nano terminal to exchange binary messages with the device. The three principal transports implemented are webBLE, webusb and webHID. You can connect a Nano and interact with a Nano Application with the Ledger REPL to see what types of APDUs you can send and receive. 


## How to know if a Nano application allows a type of transport?

In a Nano Application, each mode of transport is declared in the Makefile. For a wallet app to communicate with a Nano App through a device, the same mode of transport must be implemented on each side.

You can check the Makefile of a targeted Nano App to find this information. For example, the Bitcoin App enables WebUSB transport and it is declared at the [277th line of the Makefile](https://github.com/LedgerHQ/app-bitcoin/blob/75dfa48faa6c34d96d2aeb7a7994024e895148a9/Makefile#L227).

`DEFINES   += HAVE_WEBUSB WEBUSB_URL_SIZE_B=0 WEBUSB_URL=""`


## Test web transport in a Nano App with Ledger REPL

The [Ledger REPL](https://repl.ledger.tools/) web application is a Nano terminal to exchange binary messages with the device. The three principal transports implemented are webBLE, webusb and webHID.

You can check if the web transport is working in the Nano Application by using [Ledger REPL](https://repl.ledger.tools/)

1. Chose the transport mode in the dropdown menu (webusb, webhid or webBLE)
2. Plug or connect your Ledger Nano S or X
3. Install the Nano Application you want to test
4. Send a basic ADPU (for example `B001000000` which gives you the App's name and version)

If you get a response, this means the transport has been implemented in the Nano App and it is working.

You can use this tool to check normal APDU responses from the Nano App you would like to implement to your wallet application.
