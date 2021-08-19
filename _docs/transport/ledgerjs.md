---
title: Using ledgerjs npm packages
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

This documentation will help you implement transport with a Nano device either with a JavaScript web wallet, a Node.js desktop wallet, or a React Native mobile app.

(SHOULD WE ADD SOMETHING ABOUT A GENERAL SDK COMING IN THE FUTURE?)

To establish connexion and communication betwin the companion app and the Ledger device, you will use a set of NPM packages from `ledgerjs`.


## NPM packages to communicate with Ledger devices

To communicate with a Ledger device, you first need to identify which transport(s) to use.

| Channels    | U2F/WebAuthn | HID | WebUSB | Bluetooth |
|-------------|--------------|-----|--------|-----------|
|<b>Nano S</b>| DEPRECATED   | YES | YES    | NO        |
|<b>Nano X</b>| DEPRECATED   | YES | YES    | YES       |

<!--  -->
{% include alert.html style="danger" text="<code>@ledgerhq/hw-transport-u2f</code> and <code>@ledgerhq/hw-transport-webauthn</code> have been deprecated.<br><b>We strongly advise to migrate to <a href='../webusb'><code>@ledgerhq/hw-transport-webusb</code></a> or <a href='../webhid'><code>@ledgerhq/hw-transport-webhid</code></a></b>" %}
<!--  -->

### Summary of implementations available per platform


|    Platforms          |                                     HID                               |                         WebUSB                             |                            Bluetooth                              |
|-----------------------|-----------------------------------------------------------------------|------------------------------------------------------------|-------------------------------------------------------------------|
|<b>Web</b>             |       <a href='../webhid'>`hw-transport-webhid`</a>                   | <a href='../webhid'>`hw-transport-webusb`</a>              | <a href='../web-ble'>`hw-transport-web-ble`</a>                   |
|<b>Electron/Node.js</b>| <a href='../node-hid-singleton'>`hw-transport-node-hid-singleton`</a> | NO                                                         | NO                                                                |
|<b>iOS</b>             | NO                                                                    | NO                                                         | <a href='../react-native-ble'>`react-native-hw-transport-ble`</a> |
|<b>Android</b>         | <a href='../react-native-hid'>`react-native-hid`</a>                  | <a href='../webusb'>`hw-transport-webusb`</a><sup>1</sup>  | <a href='../react-native-ble'>`react-native-hw-transport-ble`</a> |

1. Via Android Chrome

### Summary of web browsers support

You can check the following link to check the compatibility between a web browser and [WebHID](https://caniuse.com/webhid), [WebUSB](https://caniuse.com/webusb) and [Web Bluetooth](https://caniuse.com/web-bluetooth).

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

## Basic gist

```js
import Transport from "@ledgerhq/hw-transport-node-hid";
// import Transport from "@ledgerhq/hw-transport-webusb";
// import Transport from "@ledgerhq/react-native-hw-transport-ble";
import AppBtc from "@ledgerhq/hw-app-btc";
const getBtcAddress = async () => {
  const transport = await Transport.create();
  const btc = new AppBtc(transport);
  const result = await btc.getWalletPublicKey("44'/0'/0'/0/0");
  return result.bitcoinAddress;
};
getBtcAddress().then(a => console.log(a));
```
