---
title: Desktop Integration
subtitle:
tags: []
category: Connect a wallet
author:
toc: true
layout: doc_tr
---

Web packages from ledger will help you build a desktop application where you can connect your ledger device. However, many subtle prerequisites are required in order to build the application.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/desktop-integration.png" ></div>
<!-- --------------------------------- -->

Before diving into the code you have to understand that desktop application is only available for the HID type of connexion. Ledger provide you with an electon integration, and this integration is provided with the package:
- Node HID : <a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-node-hid">@ledgerhq/hw-transport-node-hid</a>


## Prerequisites

Beforehand we have to install some dependencies. First install <a href="https://nodejs.org/en/download/">Node & npm</a>, choose the LTS version of your operating system. To ensure you have it installed in your machine open a new terminal and run:
- ``` node -v ``` The commands should print the versions of Node.js and npm accordingly.
- ``` npm -v ```  The commands should print the versions of Node.js and npm accordingly.


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

Now you can install the bitcoin application into your Ledger Nano S/X

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


## Node HID application
Node HID application will allow you to create a desktop electron application which connects to your Ledger device via the HID protocol.

An example of integration is available here <a href="../node-electron-hid">Getting started with Node Electron HID</a>

