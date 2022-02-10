---
title: Front-end helpers
tags: [Ledger Live Common, typescript, environment variables, local packages]
category: Blockchain Support
author:
toc: true
layout: doc
---

Live Common is mainly dedicated to be used by Ledger Live front-ends (Desktop and Mobile), so it also contains utilities for react and displaying crypto-specific data.

#### Device transaction fields

When signing a transaction, the user is shown on his device all the parameters of this transaction through multiple screen, that he must check towards the value he entered, and compare with what Ledger Live is presenting.

The list of all displayed fields on device are provided by the `getDeviceTransactionConfig` function, which must return all transaction fields for a given transaction.

`src/families/mycoin/deviceTransactionConfig.ts`:
```ts
import type { AccountLike, Account, TransactionStatus } from "../../types";
import type { Transaction } from "./types";
import type { DeviceTransactionField } from "../../transaction";

function getDeviceTransactionConfig({
  transaction,
  status: { estimatedFees },
}: {
  account: AccountLike;
  parentAccount?: Account;
  transaction: Transaction;
  status: TransactionStatus;
}): Array<DeviceTransactionField> {
  const fields: Array<DeviceTransactionField> = [];

  if (transaction.useAllAmount) {
    fields.push({
      type: "text",
      label: "Method",
      value: "Transfer All",
    });
  } else {
    fields.push({
      type: "text",
      label: "Method",
      value: "Transfer",
    });
    fields.push({
      type: "amount",
      label: "Amount",
    });
  }

  if (!estimatedFees.isZero()) {
    fields.push({
      type: "fees",
      label: "Fees",
    });
  }

  return fields;
}

export default getDeviceTransactionConfig;
```
<!--  -->
{% include alert.html style="important" text="Since a not-well-informed user could be tricked to sign transaction with wrong recipients, we never show the <code>destination</code> fields in Ledger Live applications, in order for users to get used to always verify it externally." %}
<!--  -->
