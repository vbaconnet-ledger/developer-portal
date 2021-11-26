---
title: Introduction
subtitle:
tags: []
category: Connect a wallet
author:
toc: true
layout: doc
---

Web packages from ledger will help you build a web application where you can connect your ledger device. However, many subtle prerequisites are required in order to build the application.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/webAppsummary.png" ></div>
<!-- --------------------------------- -->

Before diving into the code you have to understand your needs. Ledger provide you with three different integration, and each integration is provided with the package corresponding:
- Web USB : <a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-webusb">@ledgerhq/hw-transport-webusb</a>
- Web HID : <a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-webhid">@ledgerhq/hw-transport-webhid</a>
- Web bluetooth ( Only for nano X ) : <a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-web-ble">@ledgerhq/hw-transport-web-ble</a>

Each integration is provided with different package, and you have to check the browser support:
- Web USB : <a href="https://caniuse.com/webusb">browser support</a> for USB
- Web HID : <a href="https://caniuse.com/webhid">browser support</a> for HID
- Web Bluetooth : <a href="https://caniuse.com/web-bluetooth">browser support</a> for Bluetooth


## Web USB application
Web USB application will allow you to create a web application which connects to your ledger via the USB protocol.
Some browsers support the USB connection between your computer and your ledger, refer to <a href="https://caniuse.com/webusb">browser support</a> for more information.

An example of integration is available here <a href="../web-hid-usb">Getting started with Web USB</a>


## Web HID application
Web HID application will allow you to create a web application which connects to your ledger via the HID protocol. Web HID is exactly the same as Web USB, however, the packages are different.Some browsers support the USB connection between your computer and your ledger, refer to <a href="https://caniuse.com/webhid">browser support</a> for more information.

An example of integration is available here <a href="../web-hid-usb">Getting started with Web HID</a>


## Web Bluetooth application (Only nano X)
Web Bluetooth application will allow you to create a web application which connects to your ledger via bluetooth.Some browsers support the USB connection between your computer and your ledger, refer to <a href="https://caniuse.com/web-bluetooth">browser support</a> for more information.

An example of integration is available here  <a href="../web-bluetooth">Getting started with Web Bluetooth</a>





