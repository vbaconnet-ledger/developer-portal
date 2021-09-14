---
title: Test the communication
subtitle:
tags: [communication, transport, wallet, companion, package, repl]
category: Connect a wallet application
author:
toc: true
layout: doc_tr
---



## How to know if a Nano application allows a type of transport?

In a Nano Application, each mode of transport is declared in the Makefile. For a wallet app to communicate with a Nano App through a device, the same mode of transport must be implemented on each side.

You can check the Makefile of a targeted Nano App to find this information. For example, the Bitcoin App enables WebUSB transport and it is declared at the [277th line of the Makefile](https://github.com/LedgerHQ/app-bitcoin/blob/75dfa48faa6c34d96d2aeb7a7994024e895148a9/Makefile#L227).

`DEFINES   += HAVE_WEBUSB WEBUSB_URL_SIZE_B=0 WEBUSB_URL=""`


## Test web transport in a Nano App with Ledger REPL

The [Ledger REPL](https://repl.ledger.tools/) web application is a Nano terminal to exchange binary messages with the device. The three principal transports implemented are webBLE, webusb and webHID.

You can check if the web transport is working in the Nano Application by using [Ledger REPL](https://repl.ledger.tools/)

1. Chose the transport mode in the dropdown menu (webusb, webhid or webBLE)
2. Plug or connect your Ledger Nano S or X
3. Install the Nano Application you want to test
4. Send a basic ADPU (for example `B001000000` which gives you the App's name and version)

If you get a response, this means the transport has been implemented in the Nano App and it is working.

You can use this tool to check normal APDU responses from the Nano App you would like to implement to your wallet application.
