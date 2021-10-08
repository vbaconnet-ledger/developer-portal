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

A wallet application contains business-service related code and typically also has a GUI. Its format can be a desktop or smartphone application, or a web application.

In this section, you will learn how to:
- Open a connection to the Nano, using a chosen transport protocol. On this page.
- Push your blockchain-related calls to the Nano. That's on the next page.

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


