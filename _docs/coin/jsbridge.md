---
title: JS Bridge
tags: [Ledger Live Common, typescript, environment variables, local packages]
category: Blockchain Support
author:
toc: true
layout: doc
---

We call it JS Bridge because historically we used to write the support of blockchain in C++, this is referenced as libcore in the code. We are working to get rid of libcore and importing everything on Javascript. So it's a bridge in JavaScript for the currency to communicate with the Live environment 

`src/families/mycoin/bridge/js.ts` is the entry point of a coin integration. It must export two bridges:

- a CurrencyBridge
- an AccountBridge

## Starting with a mock

A mock will help you test different UI flows on Desktop and Mobile.
It's connected to any indexer / explorer and gives you a rough idea on how it will look like when connected to the UI.

For example you can use it by doing `MOCK=1 yarn start` on `ledger-live-desktop`

```ts
import { BigNumber } from "bignumber.js";
import {
  NotEnoughBalance,
  RecipientRequired,
  InvalidAddress,
  FeeTooHigh,
} from "@ledgerhq/errors";
import type { Transaction } from "../types";
import type { AccountBridge, CurrencyBridge } from "../../../types";
import {
  scanAccounts,
  signOperation,
  broadcast,
  sync,
  isInvalidRecipient,
} from "../../../bridge/mockHelpers";
import { getMainAccount } from "../../../account";
import { makeAccountBridgeReceive } from "../../../bridge/mockHelpers";

const receive = makeAccountBridgeReceive();

const createTransaction = (): Transaction => ({
  family: "mycoin",
  mode: "send",
  amount: BigNumber(0),
  recipient: "",
  useAllAmount: false,
  fees: null,
});

const updateTransaction = (t, patch) => ({ ...t, ...patch });

const prepareTransaction = async (a, t) => t;

const estimateMaxSpendable = ({ account, parentAccount, transaction }) => {
  const mainAccount = getMainAccount(account, parentAccount);
  const estimatedFees = transaction?.fees || BigNumber(5000);
  return Promise.resolve(
    BigNumber.max(0, mainAccount.balance.minus(estimatedFees))
  );
};

const getTransactionStatus = (account, t) => {
  const errors = {};
  const warnings = {};
  const useAllAmount = !!t.useAllAmount;

  const estimatedFees = BigNumber(5000);

  const totalSpent = useAllAmount
    ? account.balance
    : BigNumber(t.amount).plus(estimatedFees);

  const amount = useAllAmount
    ? account.balance.minus(estimatedFees)
    : BigNumber(t.amount);

  if (amount.gt(0) && estimatedFees.times(10).gt(amount)) {
    warnings.amount = new FeeTooHigh();
  }

  if (totalSpent.gt(account.balance)) {
    errors.amount = new NotEnoughBalance();
  }

  if (!t.recipient) {
    errors.recipient = new RecipientRequired();
  } else if (isInvalidRecipient(t.recipient)) {
    errors.recipient = new InvalidAddress();
  }

  return Promise.resolve({
    errors,
    warnings,
    estimatedFees,
    amount,
    totalSpent,
  });
};

const accountBridge: AccountBridge<Transaction> = {
  estimateMaxSpendable,
  createTransaction,
  updateTransaction,
  getTransactionStatus,
  prepareTransaction,
  sync,
  receive,
  signOperation,
  broadcast,
};

const currencyBridge: CurrencyBridge = {
  scanAccounts,
  preload: async () => {},
  hydrate: () => {},
};

export default { currencyBridge, accountBridge };
```

## Split your code

You can now start to implement the JS bridge for <i>MyCoin</i>. It may need some changes back and forth between the types, your api wrapper, and the different files.

The skeleton of `src/families/mycoin/bridge/js.ts` should look something like this:

```ts
import type { AccountBridge, CurrencyBridge } from "../../../types";
import type { Transaction } from "../types";
import { makeAccountBridgeReceive } from "../../../bridge/jsHelpers";

import { getPreloadStrategy, preload, hydrate } from "../preload";

import { sync, scanAccounts } from "../js-synchronisation";
import {
  createTransaction,
  updateTransaction,
  prepareTransaction,
} from "../js-transaction";
import getTransactionStatus from "../js-getTransactionStatus";
import estimateMaxSpendable from "../js-estimateMaxSpendable";
import signOperation from "../js-signOperation";
import broadcast from "../js-broadcast";

const receive = makeAccountBridgeReceive();

const currencyBridge: CurrencyBridge = {
  getPreloadStrategy,
  preload,
  hydrate,
  scanAccounts,
};

const accountBridge: AccountBridge<Transaction> = {
  estimateMaxSpendable,
  createTransaction,
  updateTransaction,
  getTransactionStatus,
  prepareTransaction,
  sync,
  receive,
  signOperation,
  broadcast,
};

export default { currencyBridge, accountBridge };
```

<!--  -->
{% include alert.html style="tip" text="You could implement all the methods in a single file, but for better readability and maintainability, you should split your code into multiple files." %}
<!--  -->

## Account Bridge

AccountBridge offers a generic abstraction to synchronize accounts and perform transactions.

It is designed for the end user frontend interface and is agnostic of the way it runs, has multiple implementations and does not know how the data is even stored: in fact **it's just a set of stateless functions**.

<!-- ------------- Image ------------- -->
<!-- --------------------------------- -->
![account bridge flow](../images/account-bridge-flow.png)

## Currency Bridge

CurrencyBridge offers a generic abstraction (for all crypto currencies) to add accounts with a Ledger device.

It is responsible for scanning accounts for a crypto family, but also preloading any data needed for the integration to work.

<!-- ------------- Image ------------- -->
<!-- --------------------------------- -->
![currency bridge flow](../images/currency-bridge-flow.png)

