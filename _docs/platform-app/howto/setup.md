---
title: Setup
subtitle:
tags: []
category: Platform Application
layout: doc
---

#### Sections in this article
{:.no_toc}
* TOC
{:toc}

To develop an application able to communicate with Ledger Live, you will need to use our Ledger Live Platform SDK. 

## Install the SDK npm dependency

Use the following code to install our typescript Platform SDK library:

```json
yarn add @ledgerhq/live-app-sdk
```

## Import and connect the SDK to your project

Use the following code to import and instantiate the Ledger Live SDK: 

```json
import LedgerLiveApi from "@ledgerhq/live-app-sdk";
import { WindowMessageTransport } from "@ledgerhq/live-app-sdk";

---

const llapi = new LedgerLiveApi(new WindowMessageTransport());
llapi.connect();
```
