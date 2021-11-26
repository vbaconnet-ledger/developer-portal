---
title: Introduction
subtitle:
tags: []
category: Connect a wallet
author:
toc: true
layout: doc_tr
---

Packages from ledger will help you build a mobile application where you can connect your Ledger device. However, many subtle prerequisites are required in order to build the application.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/mobile-integration.png" ></div>
<!-- --------------------------------- -->

Before diving into the code you have to understand that mobile application is different from the desktop and web application. Ledger provide you with a React Native integration, and this integration is provided with the packages:
- React Native HID : <a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/react-native-hid">@ledgerhq/react-native-hid</a> (Only on Android)
- React Native Bluetooth : <a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/react-native-hw-transport-ble">@ledgerhq/react-native-hw-transport-ble</a>

## React Native HID application (Andoid only)
React Native HID application will allow you to create a mobile application which connects to your Ledger device via the HID protocol.

An example of integration is available here <a href="../react-native-android-hid">Getting started with React Native HID</a>

