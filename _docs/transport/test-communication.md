---
title: Test the communication
subtitle:
tags: []
author:
toc: true
layout: doc_tr
---



## How to know if a Nano application allows a type of transport?

In a Nano Application, each mode of transport is declared in the Makefile. For a wallet app to communicate with a Nano App through a device, the same mode of transport must be implemented on each side.

You can check the Makefile of a targeted Nano App to find this information. For example, the Bitcoin App enables WebUSB transport and it is declared at the [277th line of the Makefile](https://github.com/LedgerHQ/app-bitcoin/blob/75dfa48faa6c34d96d2aeb7a7994024e895148a9/Makefile#L227).

`DEFINES   += HAVE_WEBUSB WEBUSB_URL_SIZE_B=0 WEBUSB_URL=""`


## Test the communication with Ledger REPL

You can use the [Ledger REPL](https://repl.ledger.tools/) to test if the communication can be established between a Nano App and a web browser.

1. Chose your transport in the dropdown menu
2. Plug your Ledger Nano S or X
3. Send a basic ADPU (for example `B001000000` which gives you the App's name and version)

If you get a response, this means the connexion and communication is working.
