---
title: Architecture Dataflow
subtitle:
tags: []
category: Connect a wallet
author:
toc: true
layout: doc
---


## Dataflow Overview

During a transaction handled by Ledger Device several exchanges are done between different application & hardware components.
These exchanges allow to read data from Ledger Device & Sign Transactions with internal private key without sharing it.



{: .center}
![Application Sequence Diagram](../images/application-sequence.png)
*Fig. 1: Application Sequence Diagram*


This diagram demonstrate the sequence of different calls done by each application layer during a transaction.
5 different layers are used to handle a transaction:

- Your Application Core Code
- Ledger JS Transport API
- Ledger JS Dedicated App Lib
- Nano App
- Ledger Device Software

This workflow demonstrate a typical use case of Ledger Device using an Nano App Lib. If you are planning to integrate with a Nano API-less you have to complete all actions done by LedgerJS Dedicated App Lib within your application core code.
