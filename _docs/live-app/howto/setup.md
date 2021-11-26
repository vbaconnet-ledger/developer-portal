---
title: Setup
subtitle:
tags: []
category: Live Application
toc: true
layout: doc
---

To develop an application able to communicate with Ledger Live, you will need to use our Ledger Live Platform SDK. 

## Install the SDK npm dependency

Install our typescript Platform SDK library:

```bash
yarn add @ledgerhq/live-app-sdk
```

## Import the SDK to your project

Import and instantiate the Ledger Live SDK: 

```bash
import LedgerLiveApi from "@ledgerhq/live-app-sdk";
import { WindowMessageTransport } from "@ledgerhq/live-app-sdk";

---

const llapi = new LedgerLiveApi(new WindowMessageTransport());
```
