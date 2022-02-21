---
title: JS Bridge - Sync
tags: [Ledger Live Common, typescript]
category: Blockchain Support
author:
toc: true
layout: doc
---

### Synchronization

We usually group the `scanAccounts` and `sync` into the same file `js-synchronisation.ts` as they both use similar logic as a `getAccountShape` function passed to helpers.

`src/families/mycoin/js-synchronisation.ts`:

```ts
import type { Account } from "../../types";
import type { GetAccountShape } from "../../bridge/jsHelpers";
import { makeSync, makeScanAccounts, mergeOps } from "../../bridge/jsHelpers";

import { getAccount, getOperations } from "./api";

const getAccountShape: GetAccountShape = async (info) => {
  const { id, address, initialAccount } = info;
  const oldOperations = initialAccount?.operations || [];

  // Needed for incremental synchronisation
  const startAt = oldOperations.length
    ? (oldOperations[0].blockHeight || 0) + 1
    : 0;

  // get the current account balance state depending your api implementation
  const { blockHeight, balance, additionalBalance, nonce } = await getAccount(
    address
  );

  // Merge new operations with the previously synced ones
  const newOperations = await getOperations(id, address, startAt);
  const operations = mergeOps(oldOperations, newOperations);

  const shape = {
    id,
    balance,
    spendableBalance: balance,
    operationsCount: operations.length,
    blockHeight,
    myCoinResources: {
      nonce,
      additionalBalance,
    },
  };

  return { ...shape, operations };
};

const postSync = (initial: Account, parent: Account) => parent;

export const scanAccounts = makeScanAccounts(getAccountShape);

export const sync = makeSync(getAccountShape, postSync);
```

The `scanAccounts` function performs the derivation of addresses for a given `currency` and `deviceId`, and returns an Observable that will notify every `Account` that it discovered.

With the `makeScanAccounts` helper, you only have to pass a `getAccountShape` function to execute the generic scan that Ledger Live use with the correct derivation modes for <i>MyCoin</i>, and it will determine when to stop (generally as soon as an empty account was found).

The `sync` function performs one "Account synchronisation" which consists of refreshing all fields of a (previously created) Account from your api.

It is executed every 2 minutes if everything works as expected, but if it fails, a retry strategy will be executed with an increasing delay (to avoid burdening a failing API).

Under the hood of the `makeSync` helper, the returned value is an Observable of an updater function (Account=>Account), which is a pattern having some advantages:

- it avoids race conditions
- the updater is called in a reducer, and allows to produce an immutable state by applying the update to the latest account instance (with reconciliation on Ledger Live Desktop)
- it's an observable, so we can interrupt it when/if multiple updates occurs

In some cases, you might need to do a `postSync` patch to add some update logic after sync (<i>before the reconciliation that occurs on Ledger Live Desktop</i>). If this `postSync` function is complex, you should split this function in a `src/families/mycoin/js-postSyncPatch.js` file.


### Receive

The `receive` method allows to derivatives address of an account with a Nano device but also display it on the device if verify is passed in.
As you may see in `src/families/mycoin/bridge.ts`, Live Common provides a helper to implement it easily with `makeAccountBridgeReceive()`, and there is a very few reason to implement your own.

### Reconciliation

Currently, Ledger Live Desktop executes this bridge in a separate thread. Thus, the "avoid race condition" aspect of sync might not be respected since the UI renderer thread does not share the same objects.
This may be improved in the future, but for updates to be reflected during sync, we implemented reconciliation in [src/reconciliation.js](https://github.com/LedgerHQ/ledger-live-common/blob/master/src/reconciliation.ts), between the account that is in the renderer and the new account produced after sync.

Since we might have added some coin-specific data in `Account`, we must also reconciliate it:

`src/reconciliation`:

```ts
// import {
// ...
  fromMyCoinResourcesRaw,
// } from "./account";
// ...
// export function patchAccount(
//   account: Account,
//   updatedRaw: AccountRaw
// ): Account {
// ...
  if (
    updatedRaw.myCoinResources &&
    account.myCoinResources !== updatedRaw.myCoinResources
  ) {
    next.myCoinResources = fromMyCoinResourcesRaw(
      updatedRaw.myCoinResources
    );
    changed = true;
  }
//   if (!changed) return account; // nothing changed at all
//
//   return next;
// }
```


### Scanning accounts

As we have seen [Synchronization](#synchronization), the `scanAccounts`, which is part of the CurrencyBridge, share common logic with the sync function, that's why we preferably put them in a `js-synchronisation.ts` file.

The `makeScanAccounts` helper will automatically execute the default address derivation logic, but for some reason if you need to have a completely new way to scan account, you could then implement your own strategy.

### Preload currency data (optional)

Before creating or using a currency bridge (e.g. scanning accounts, or every 2 minutes for synchronization), Ledger Live will try to preload some currency data (e.g. tokens, delegators, etc) required for ledger-live-common feature to correctly work.

This preloaded data will be stored in a persisted cache for future use, for Ledger Live to still work if temporarily offline, and speed up startup, depending on `getPreloadStrategy` (`preloadMaxAge` determines the data expiration that will trigger a refresh).

This cache contains the JSON serialized response from `preload` which is then hydrated through `hydrate` (which needs deserialization), directly after preload, or after a boot.

Live-Common features will then be able to reuse those data anywhere (e.g. validating transactions) with `getCurrentMyCoinPreloadData`, or by subscribing to `getMyCoinPreloadDataUpdates` observable.

`src/families/mycoin/preload.ts`:
```ts
import { Observable, Subject } from "rxjs";
import { log } from "@ledgerhq/logs";

import type { MyCoinPreloadData } from "./types";
import { getPreloadedData } from "./api";

const PRELOAD_MAX_AGE = 30 * 60 * 1000; // 30 minutes

let currentPreloadedData: MyCoinPreloadData = {
  somePreloadedData: {},
};

function fromHydratePreloadData(data: any): MyCoinPreloadData {
  let foo = null;

  if (typeof data === "object" && data) {
    if (typeof data.somePreloadedData === "object" && data.somePreloadedData) {
      foo = data.somePreloadedData.foo || "bar";
    }
  }

  return {
    somePreloadedData: { foo },
  };
}

const updates = new Subject<MyCoinPreloadData>();

export function getCurrentMyCoinPreloadData(): MyCoinPreloadData {
  return currentPreloadedData;
}

export function setMyCoinPreloadData(data: MyCoinPreloadData) {
  if (data === currentPreloadedData) return;

  currentPreloadedData = data;

  updates.next(data);
}

export function getMyCoinPreloadDataUpdates(): Observable<MyCoinPreloadData> {
  return updates.asObservable();
}

export const getPreloadStrategy = () => ({
  preloadMaxAge: PRELOAD_MAX_AGE,
});

export const preload = async (): Promise<MyCoinPreloadData> => {
  log("mycoin/preload", "preloading mycoin data...");

  const somePreloadedData = await getPreloadedData();

  return { somePreloadedData };
};

export const hydrate = (data: any) => {
  const hydrated = fromHydratePreloadData(data);

  log("mycoin/preload", `hydrated foo with ${hydrated.somePreloadedData.foo}`);

  setMyCoinPreloadData(hydrated);
};
```

Read more on [Currency Bridge documentation](https://github.com/LedgerHQ/ledger-live-common/blob/master/docs/CurrencyBridge.md).


