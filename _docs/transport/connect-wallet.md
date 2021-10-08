---
title: Introduction 
subtitle:
tags: []
category:
author:
toc: true
layout: doc_tr
---

#### Sections in this article
{:.no_toc}
* TOC
{:toc}

A wallet application contains business-service related code and typically also has a GUI. Its format can be a computer or smartphone application, or a web browser.

The aim of this section it to open a connection with your Ledger device with the right transport protocol.

## Choosing the right transport

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/connect-wallet.jpg" ></div>
<!-- --------------------------------- -->

Clickable Legend: 
<div class="transports-legend">
 <a style="background:#008037;" href="../webhid">Web HID</a>
 <a style="background:#0FB670;" href="../node-hid-singleton">Node HID</a>
 <a style="background:#73E5B5;" href="../react-native-hid">React Native HID</a>
 <a style="background:#DBB92E;" href="../webusb">Web USB</a>
 <a style="background:#004AAD;" href="../web-ble">Web Bluetooth</a>
 <a style="background:#6EA7F5;" href="../react-native-ble">React Native Bluetooth</a>
</div>

To establish connexion and communication between the wallet app and the Ledger device, you will use a set of NPM packages from `ledgerjs`.

To connect your application to a Ledger device and its Nano Applications:
1. Decide [which transport](#npm-packages-to-communicate-with-ledger-devices) you want to implement
2. Implement the transport depending on wether you are developing a [web app](../webusb), a [desktop app](../node-hid-singleton) or a [mobile app](../react-native-hid).
3. Implement the [Nano application protocol](../app-protocol).

## Basic usage

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

### Summary of web browsers support

You can check the following link to check the compatibility between a web browser and [WebHID](https://caniuse.com/webhid), [WebUSB](https://caniuse.com/webusb) and [Web Bluetooth](https://caniuse.com/web-bluetooth).

### Implementation language

This documentation will help you implement transport with a Nano device either with a **JavaScript** web wallet, a desktop wallet built with **Node.js**, or a **React Native** mobile app.

<!--  -->
{% include alert.html style="success" text="We currently do not have libraries to help the implentation with wallets written in another language. However, you are free to develop your wallet app in the language of your choosing." %}
<!--  -->


## Transport calls

Typically subset calls that are used:

- `transport.listen: (observer)=>Subscription`
- `transport.open: (descriptor)=>Promise<Transport>`
- `transport.exchange(apdu: Buffer): Promise<Buffer>`
- `transport.close()`

and some derivates:

- `transport.create(): Promise<Transport>`: make use of `listen` and `open` for the most simple scenario.
- `transport.send(cla, ins, p1, p2, data): Promise<Buffer>`: a small abstraction of `exchange`


<!--  -->
{% include alert.html style="success" text="All these transports implement a generic interface exposed by <code><a href='https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport'>@ledgerhq/hw-transport</a></code>.
" %}
<!--  -->


<!--  -->
{% include alert.html style="success" text="<a href='https://en.wikipedia.org/wiki/Smart_card_application_protocol_data_unit'>APDU</a> is the encoding primitive for all binary exchange with the devices. (it comes from smart card industry)" %}
<!--  -->


