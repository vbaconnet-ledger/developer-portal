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


## Prerequisites

Beforehand we have to install some dependencies. First install <a href="https://nodejs.org/en/download/">Node & npm</a>, choose the LTS version of your operating system. To ensure you have it installed in your machine open a new terminal and run:
- ``` node -v ``` The commands should print the versions of Node.js and npm accordingly.
- ``` npm -v ```  The commands should print the versions of Node.js and npm accordingly.


Now that node and npm are installed, you have to install the <a href="https://www.ledger.com/ledger-live/download">Ledger Live</a> desktop application in order to connect your Ledger device.
After the installation of Ledger Live is finished open Ledger Live and go to the “Manager” tab.
In this integration we will use the ethereum application from your Ledger.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/ledgerlivetabs.png" ></div>
<!-- --------------------------------- -->

Then connect your Ledger to your machine make sure to unlock it.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="420" src="../images/ledgerCodePin.jpg" ></div>
<!-- --------------------------------- -->

Then Ledger Live will ask you to allow the Ledger device, just press the two buttons simultaneously to allow it.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="420" src="../images/ledgerConnect.png" >
<img width="420" src="../images/ledgerAllow.jpg" >
</div>
<!-- --------------------------------- -->

Now you can install the ethereum application into your Ledger Nano S/X

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/ethereumInstallation.png" ></div>
<!-- --------------------------------- -->

## React Native HID application (Andoid only)
React Native HID application will allow you to create a mobile application which connects to your Ledger device via the HID protocol.

An example of integration is available here <a href="../react-native-android-hid">Getting started with React Native HID</a>

