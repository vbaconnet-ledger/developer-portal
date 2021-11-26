---
title: Introduction
subtitle:
tags: []
category: Connect a wallet
author:
toc: true
layout: doc
---

Packages from ledger will help you build a desktop application where you can connect your Ledger device. However, many subtle prerequisites are required in order to build the application.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/desktop-integration.png" ></div>
<!-- --------------------------------- -->

Before diving into the code you have to understand that desktop application is only available for the HID type of connexion. Ledger provide you with an electon integration, and this integration is provided with the package:
- Node HID : <a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-node-hid">@ledgerhq/hw-transport-node-hid</a>

## Node HID application
Node HID application will allow you to create a desktop electron application which connects to your Ledger device via the HID protocol.

An example of integration is available here <a href="../node-electron-hid">Getting started with Node Electron HID</a>

