---
title: Using ledgerjs libraries
subtitle:
tags: []
author:
layout: doc_tr
---

#### Sections in this article
{:.no_toc}
* TOC
{:toc}


A companion application, or wallet application, contains the business logic and is (typically) a GUI, running on a computer, a phone, or a web browser, connected to the Ledger device.

To establish connexion and communication betwin the companion app and the Ledger device, you will use a set of TypeScript librairies from `ledgerjs`.


## TypeScript Libraries to communicate with Ledger devices

The `hw-transport` libraries implement communication protocol for our hardware wallet devices (Ledger Nano S and X) in many platforms (Web, Node, Electron, React Native,...) and using many different communication channels (HID, WebUSB, Bluetooth,...)

To communicate with a Ledger device, you first need to identify which transport(s) to use.

| Channels    | U2F/WebAuthn | HID | WebUSB | Bluetooth |
|-------------|--------------|-----|--------|-----------|
|<b>Nano S</b>| DEPRECATED<sup>1</sup> | YES | YES    | NO        |
|<b>Nano X</b>| DEPRECATED<sup>1</sup> | YES | YES    | YES       |

<!--  -->
{% include alert.html style="danger" text="<code>@ledgerhq/hw-transport-u2f</code> and <code>@ledgerhq/hw-transport-webauthn</code> have been deprecated.<br><b>We strongly advise to migrate to <a href='../webusb'><code>@ledgerhq/hw-transport-webusb</code></a> or <a href='../webhid'><code>@ledgerhq/hw-transport-webhid</code></a></b>" %}
<!--  -->

### Summary of implementations available per platform


|    Platforms          |                                HID                            |                         WebUSB                             |                            Bluetooth                              |
|-----------------------|---------------------------------------------------------------|------------------------------------------------------------|-------------------------------------------------------------------|
|<b>Web</b>             |       <a href='../webhid'>`hw-transport-webhid`</a>           | <a href='../webhid'>`hw-transport-webusb`</a>              | <a href='../web-ble'>`hw-transport-web-ble`</a>                   |
|<b>Electron/Node.js</b>| <a href='../node-hid'>`hw-transport-node-hid`</a><sup>1</sup> | NO                                                         | <a href='../node-ble'>`hw-transport-node-ble`</a>                 |
|<b>iOS</b>             | NO                                                            | NO                                                         | <a href='../react-native-ble'>`react-native-hw-transport-ble`</a> |
|<b>Android</b>         | <a href='../react-native-hid'>`react-native-hid`</a>          | <a href='../webusb'>`hw-transport-webusb`</a><sup>2</sup>  | <a href='../react-native-ble'>`react-native-hw-transport-ble`     |

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


## A unified Transport interface

All these transports implement a generic interface exposed by
[@ledgerhq/hw-transport](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport).
There are specifics for each transport which are explained in [the next section](../webhid).

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

