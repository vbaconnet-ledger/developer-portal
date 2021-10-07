---
title: Transport implementation
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

## Transport calls

The transport calls are essentially:

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


## Title 

There are specifics for each transport which are explained in the next sections in Transport implementation.


|    Types of application          |                                            HID                                   |                                 WebUSB                                |                                  Bluetooth                                   |
|-----------------------|----------------------------------------------------------------------------------|-----------------------------------------------------------------------|------------------------------------------------------------------------------|
|<b>Web App <sup>1</sup></b>             | <code><a href='../webhid'>hw-transport-webhid</a></code>                         | <code><a href='../webhid'>hw-transport-webusb</a> </code>             | <code><a href='../web-ble'>hw-transport-web-ble</a></code>                   |
|<b>Desktop App <sup>2</sup></b>| <code><a href='../node-hid-singleton'>hw-transport-node-hid-singleton</a></code> | NO                                                                    | NO                                                                           |
|<b>iOS <sup>3</sup></b>             | NO                                                                               | NO                                                                    | <code><a href='../react-native-ble'>react-native-hw-transport-ble</a></code> |
|<b>Android <sup>3</sup></b>         | <code><a href='../react-native-hid'>react-native-hid</a></code>                  | <code><a href='../webusb'>hw-transport-webusb</a></code> <sup>4</sup>  | <code><a href='../react-native-ble'>react-native-hw-transport-ble</a></code> |

1. JavaScript only
2. Electron/Node.js only
3. React Native only
4. Via Android Chrome


<!--  -->
{% include alert.html style="success" text="<a href='https://en.wikipedia.org/wiki/Smart_card_application_protocol_data_unit'>APDU</a> is the encoding primitive for all binary exchange with the devices. (it comes from smart card industry)" %}
<!--  -->

