---
title: Why my app can not communicate with a Nano App?
subtitle:
tags: [transport, device, wallet app, communicate, wallet, companion]
category: CConnect your app
author:
toc:
layout: doc
---

For a wallet app to communicate with a Nano App through a device, the same mode of transport must be implemented on each side. If the communication does not work, it may be because the transport is not implemented in the Nano App. It happens rarely because the Makefile is inherited from the SDK which contains the transport declarations. 

However, you may want to check what type of transport has been implemented in a Nano App you can check in the Nano App source code. For example, the Bitcoin App enables WebUSB transport and it is declared at the [277th line of the Makefile](https://github.com/LedgerHQ/app-bitcoin/blob/75dfa48faa6c34d96d2aeb7a7994024e895148a9/Makefile#L227).

`DEFINES   += HAVE_WEBUSB WEBUSB_URL_SIZE_B=0 WEBUSB_URL=""`
