---
title: Transport choices
subtitle:
tags: []
category:
author:
toc: true
layout: doc_tr
---




A companion application, or wallet application, contains the business logic and is (typically) a GUI, running on a computer, a phone, or a web browser, connected to the Ledger device.

This documentation will help you implement transport with a Nano device either with a **JavaScript** web wallet, a desktop wallet built with **Node.js**, or a **React Native** mobile app.

<!--  -->
{% include alert.html style="success" text="We currently do not have libraries to help the implentation with wallets written in another language. However, you are free to develop your companion app in the language of your chosing." %}
<!--  -->

To establish connexion and communication betwin the companion app and the Ledger device, you will use a set of NPM packages from `ledgerjs`.


## Development process

To connect your application to a Ledger device and its Nano Applications:
1. Decide [which transport](#npm-packages-to-communicate-with-ledger-devices) you want to implement
2. Implement the transport depending on wether you are developing a [web app](../webusb), a [desktop app](../node-hid-singleton) or a [mobile app](../react-native-hid).
3. Implement the [Nano application protocol](../app-protocol).

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



## NPM packages to communicate with Ledger devices

To communicate with a Ledger device, you first need to identify which transport(s) to use.

| Channels    | U2F/WebAuthn | HID | WebUSB | Bluetooth |
|-------------|--------------|-----|--------|-----------|
|<b>Nano S</b>| DEPRECATED   | YES | YES    | NO        |
|<b>Nano X</b>| DEPRECATED   | YES | YES    | YES       |

<!--  -->
{% include alert.html style="danger" text="<code>@ledgerhq/hw-transport-u2f</code> and <code>@ledgerhq/hw-transport-webauthn</code> have been deprecated.<br><b>We strongly advise to migrate to <code><a href='../webusb'>@ledgerhq/hw-transport-webusb</a></code> or <code><a href='../webhid'>@ledgerhq/hw-transport-webhid</a></code></b>" %}
<!--  -->

### Summary of implementations available per type of application


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

### Summary of web browsers support

You can check the following link to check the compatibility between a web browser and [WebHID](https://caniuse.com/webhid), [WebUSB](https://caniuse.com/webusb) and [Web Bluetooth](https://caniuse.com/web-bluetooth).
