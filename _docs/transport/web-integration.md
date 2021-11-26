---
title: Introduction
subtitle:
tags: []
category: Connect a wallet
author:
toc: true
layout: doc_tr
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


## Prerequisites

Beforehand we have to install some dependencies. First install <a href="https://nodejs.org/en/download/">Node & npm</a>, choose the LTS version of your operating system. To ensure you have it installed in your machine open a new terminal and run:
- ``` node -v ``` must display something like ``` v14.18.0 ``` (the version may differ)
- ``` npm -v ```  must display something like ``` 6.14.15 ``` (the version may differ)


Now that node and npm are installed, you have to install the <a href="https://www.ledger.com/ledger-live/download">Ledger Live</a> desktop application in order to connect your Ledger device.
After the installation of Ledger Live is finished open Ledger Live and go to the “Manager” tab.
In this integration we will use the bitcoin application from your Ledger.

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

Now you can install the bitcoin application into your Ledger Nano S/X.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/bitcoinInstallation.png" ></div>
<!-- --------------------------------- -->

#### To use bitcoin app, you have to create a bitcoin account

To use the bitcoin application you  previously installed, you have to create a bitcoin account.
Therefore launch the bitcoin application on your Ledger Nano S/X.
Then do the following steps to create your bitcoin account:

- Open the bitcoin app on your ledger device

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="420" src="../images/ledgerBtc.jpg" ></div>
<!-- --------------------------------- -->

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="420" src="../images/ledgerReady.jpg" ></div>
<!-- --------------------------------- -->

- You can create an account by going to the "Manager" tab and click on "Add account".

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/bitcoinInstalled.png" ></div>
<!-- --------------------------------- -->

- Click on "add account" button

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/step1account.png" ></div>
<!-- --------------------------------- -->

- Your account is created

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/step2account.png" ></div>
<!-- --------------------------------- -->

Now you have a bitcoin account, congratulations!

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/step3account.png" ></div>
<!-- --------------------------------- -->


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





