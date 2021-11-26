---
title: Choose the right transport
subtitle:
tags: []
category: Connect a wallet
author:
toc: true
layout: doc
---

On the client side device (Desktop & Mobile) several technologies can be used to communicate with Ledger hardware devices.

Based on your current service implementation you could choose different types of integration. First of all it will depend on your current service implementation technology.

### WebApp
For a web application three options are possible :
- Web HID
- Web USB
- Web Bluetooth (Nano X)

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/webAppsummary.png" ></div>
<!-- --------------------------------- -->

Getting started with WebApp integration => <a href="../web-hid-usb">here</a>

### Mobile Application
For Mobile applications you can integrate through React Native libraries HID and Bluetooth for Nano X wallets.
- React Native HID (Only Android)
- React Native Bluetooth (Nano X)

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/mobile-integration.png" ></div>
<!-- --------------------------------- -->

Getting started with Mobile App integration => <a href="../react-native-android-hid">here</a>

### Desktop Application
For a desktop application your option is to use Node HID Transport layer. The library is only supported on Electron/Node.js
- Node HID

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/desktop-integration.png" ></div>
<!-- --------------------------------- -->

Getting started with Desktop App integration => <a href="../node-electron-hid">here</a>
