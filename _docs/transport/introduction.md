---
title: Introduction
subtitle:
tags: []
author:
layout: doc_tr
---

#### Sections in this article
{:.no_toc}
* TOC
{:toc}

## JS Libraries to communicate with Ledger devices

The `hw-transport` libraries implement communication protocol for our hardware wallet devices (Ledger Nano S and X) in many platforms (Web, Node, Electron, React Native,...) and using many different communication channels (HID, WebUSB, Bluetooth,...)

To communicate with a Ledger device, you first need to identify which transport(s) to use.

| Channels | U2F/WebAuthn | HID | WebUSB | Bluetooth |
|----------|--------------|-----|--------|-----------|
| Nano S   | DEPRECATED<sup>1</sup> | YES | YES    | NO        |
| Nano X   | DEPRECATED<sup>1</sup> | YES | YES    | YES       |

1. U2F is deprecated. See https://github.com/LedgerHQ/ledgerjs/blob/master/docs/migrate_webusb.md


### Summary of implementations available per platform


|    Platforms     |                HID                |       WebUSB        |           Bluetooth           |
|------------------|-----------------------------------|---------------------|-------------------------------|
| Web              | `@ledgerhq/hw-transport-webhid` | `@ledgerhq/hw-transport-webusb` | `@ledgerhq/hw-transport-web-ble`          |
| Electron/Node.js | `@ledgerhq/hw-transport-node-hid`<sup>1</sup> | NO                  | `@ledgerhq/hw-transport-node-ble`         |
| iOS              | NO                                | NO                  | `@ledgerhq/react-native-hw-transport-ble` |
| Android          | `@ledgerhq/react-native-hid`                  | `@ledgerhq/hw-transport-webusb`<sup>2</sup>    | `@ledgerhq/react-native-hw-transport-ble` |

1. Three implementations available
2. Via Android Chrome


### Current web support


| Channels | WebHID.         | WebUSB             | WebBluetooth |
|----------|-----------------|--------------------|--------------|
| Windows  | YES             | OK BUT<sup>1</sup> | YES          |
| Mac      | YES             | YES                | YES          |
| Linux    | YES             | YES                | YES          |
| Chrome   | YES<sup>2</sup> | YES                | YES          |
| Safari   | NO              | NO                 | NO           |
| Firefox  | NO              | NO                 | NO           |
| IE.      | NO              | NO                 | NO           |


1. Instabilities has been reported
2. WebHID supported under <i>Chrome experimental flags</i>


## An unified Transport interface

All these transports implement a generic interface exposed by
[@ledgerhq/hw-transport](./packages/hw-transport).
There are specifics for each transport which are explained in each package.

A Transport is essentially:

- `Transport.listen: (observer)=>Subscription`
- `Transport.open: (descriptor)=>Promise<Transport>`
- `transport.exchange(apdu: Buffer): Promise<Buffer>`
- `transport.close()`

and some derivates:

- `transport.create(): Promise<Transport>`: make use of `listen` and `open` for the most simple scenario.
- `transport.send(cla, ins, p1, p2, data): Promise<Buffer>`: a small abstraction of `exchange`

<!--  -->
{% include alert.html style="success" text="<a href='https://en.wikipedia.org/wiki/Smart_card_application_protocol_data_unit'>APDU</a> is the encoding primitive for all binary exchange with the devices. (it comes from smart card industry)" %}
<!--  -->

