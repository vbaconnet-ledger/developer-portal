---
title: Introduction 
subtitle:
tags: []
category: Connect a wallet
author:
layout: doc_tr
---

#### Sections in this article
{:.no_toc}
* TOC
{:toc}

A wallet application contains business-service related code and typically also has a GUI. Its format can be a desktop or smartphone application, or a web application.

This section is a guide for using [github.com/LedgerHQ/ledgerjs](https://github.com/LedgerHQ/ledgerjs). You will learn how to:
- Open a connection to a Nano, using a chosen transport protocol, on this page.
- Push your Nano application API calls to the Nano. That is on the next page.

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


<br>
<!--  -->
{% include alert.html style="success" text="All these transports implement a generic interface exposed by <code><a href='https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport'>@ledgerhq/hw-transport</a></code>.
" %}
<!--  -->


## Basic call structure

Typically subset calls that are used:

- `transport.open: (descriptor)=>Promise<Transport>`
- `transport.listen: (observer)=>Subscription`
- `transport.exchange(apdu: Buffer): Promise<Buffer>`
- `transport.close()`

and some additional calls:

- `transport.create(): Promise<Transport>`: make use of `listen` and `open` for the most simple scenario.
- `transport.send(cla, ins, p1, p2, data): Promise<Buffer>`: a small abstraction of `exchange`


## Try our example

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
 
<br>

You can see more examples in our dedicated Examples section.


