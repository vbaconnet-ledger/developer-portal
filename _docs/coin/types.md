---
title: Types
subtitle:
tags: [Ledger Live Common, typescript, environment variables, local packages]
category: Blockchain Support
author:
toc: true
layout: doc
---

Generic types can be found in [src/types/](https://github.com/Ledger-Coin-Integration-team/ledger-live-common/blob/master/src/types), with some documentation in source.

#### Semantics

> **Semantic: What is an Account?**

An account represents a wallet where a user detains crypto assets for a given crypto currency.

Ledger Live model is essentially an array of `Account` because many accounts can be created, even within a same crypto currency.

More technically, an account is a view of the blockchain in the context of a specific user. While blockchain tracks the series of transactions, assets motions that happen between addresses, an account essentializes that from the point of view of a user that owns a set of addresses and wants to view the associated funds they detain and be able to perform transactions with it.

Essentially what the user wants to see at the end is his balance, a historic graph, and a series of past operations that were performed. Moving from the blockchain to the concept of account is not necessarily trivial (in blockchains like Bitcoin, the concept of account does not exist – you don't create or destroy, this concept is a view, a lense, that we abstract for the user).

> **Semantic: What is an Operation?**

Note the wording "Operation" is used instead of "Transaction". An account does not have transactions, it has **operations**.

The same abstraction applies as for Account on top of blockchain: an Operation is a view of a transaction that happened in the blockchain that **concerns** the contextual account. It's always in the context of an account, in other words, an operation does not exist on its own.

Most of the time, a transaction yield of one operation. But in some blockchains (like Ethereum) one transaction that concerns the account associated addresses can result in 0 to N operations. A typical example is contract or token transfers (one transaction to move a token generate a token operation and a fee operation in the ethereum account). Another example that is possible in most blockchains is a "self" transaction yields two operations (sending out, sending in). But in fact, that's semantic, we, Ledger, have put. We could also have allowed the concept of "SELF" operation.

> **Semantic: What is a Transaction?**

In Ledger Live, the "Transaction" is the data model that is created and updated in order to build the final blob to be signed by the device, and then broadcasted to the blockchain.

It is highly specific to the blockchain protocol, and contains any data that will need to be serialized into the transmission format of the blockchain. It only lives for a short period of time in the application - during which the user is choosing the parameters of its transaction before it is signed and sent to the blockchain, after which it will be transformed into an Operation.

Note that this Operation will be considered "pending", as it is an optimistic version of the real Operation that will appear in the account history, after being synchronized.

#### Account

In Live Common, there are currently 3 types of accounts:

- `Account` which is a top level account associated to a `CryptoCurrency` - the "main" account.
- `TokenAccount` which is a nested level account, **inside** an Account and that is associated to a `TokenCurrency`.
- `ChildAccount` which is a variant of TokenAccount but more in context of a `CryptoCurrency` (typically used for Tezos)

They are aggregated as a single `AccountLike` type, used across Ledger Live implementations.

We will focus only on the `Account` type as we won't cover the Token integration in this document.

All main accounts share a common ground, that you will find defined and commented [here](https://github.com/LedgerHQ/ledger-live-common/blob/master/src/types/account.ts#L118).

If needed by the blockchain, an account can also contain coin-specific resources related to a single account, like its "nonce" or additional balances (e.g. for staking), or anything that may be displayed or used in your implementation. It's generally an additional field like `myCoinResources`. See [Family-specific types](#family-specific-types) below.



#### Operation

In short, transactions history in Ledger Live is a list of `Operation`, that are confirmed, unconfirmed or pending (not yet fetched from explorer).

They all share the same model, with an `extra` field that can store any additional data you may need to display. You will find the detailed and commented fields [here](https://github.com/LedgerHQ/ledger-live-common/blob/master/src/types/operation.ts#L34).

If <i>MyCoin</i> has specific operation fields (like `additionalField` we added for example), you will be able to display them later. They are not meant to be useful in any flow, only for UI.

If <i>MyCoin</i> uses a "nonce", then `transactionSequenceNumber` must be filled correctly, as it will be necessary for signing new transactions (and will interpreted to clear pending operations). Only outgoing transaction must have this value though. 


#### Operation Type

An `Operation` has a `type` which is generic string typed as `OperationType`, giving more or less the direction of the operation:

- `OUT`: A send / transfer amount transaction
- `IN`: A received / incoming amount transaction
- `FEES`: A transaction that only charges fees
- `NONE`: A transaction that does not affect balance
- `REWARD`: A claimed reward (as an outgoing transaction with fees)
- `REWARD_PAYOUT`: A received reward (as an incoming transaction)
- `SLASH`: A staking slash (with slashed amount generally)

There are more types available, existing one will have predefined icons, translations and behaviours (i.e. `getOperationAmountNumber()` in [src/operation.ts](https://github.com/LedgerHQ/ledger-live-common/blob/master/src/operation.ts)).

<i>MyCoin</i> could have also specific operation types, if you need to add a type that is not yet implemented, add them in `src/types/operation.ts`. You will later need to implement some specific code for the Ledger Live Desktop and Mobile to display them correctly.

You will be asked to add an svg for the icon of your type and a label to be translated, you can check for "OPT_IN" operation in Algorand.


In LLD : 
```
src/renderer/components/OperationsList/ConfirmationCheck.js
```

In LLM : 
(You will need to check SVG is wrapped into our component)
```
src/icons/OperationStatusIcon/index.js
```

#### Transaction

`Transaction` will contains any data needed to create a transaction on the blockchain. It is created as soon as the user initiates a transaction flow on Ledger Live, and will be updated according to its inputs, like the amount or choosing a recipient.

It shares a common shape between all coins, to which we will add specific-fields:

- `amount: BigNumber`: amount parsed from user input - will be 0 if user use all amount
- `recipient: string`: the recipient of this amount
- `useAllAmount?: boolean`: indicated if user wants to transfer whole available balance
- `subAccountId?: ?string`: the child/token account id if relevant
- `family: string`: the coin-family of the transaction (as a coin discriminator)

Some coins also have some fields generally respecting the same semantics, here are some provided as example:

- `mode: string`: type of transaction to be broadcasted (`"send"`, `"freeze"`, `"delegate"`, `"claimReward"`...)
- `fees: BigNumber`: fees (provided by blockchain, or filled by user)
- `memo: ?string`: memo if required by exchange

Although some fields are required, they can be emptied (recipent = "" and amount = 0) and ignored for transactions not using them.

You should add any fields that would be required by <i>MyCoin</i> to be correctly broadcasted - respecting as much as possible its protocol's lexicon.

See existing implementations for inspiration: [Polkadot types](https://github.com/LedgerHQ/ledger-live-common/blob/master/src/families/polkadot/types.ts), [Cosmos types](https://github.com/LedgerHQ/ledger-live-common/blob/master/src/families/cosmos/types.ts)

#### Family-specific types

You will be implementing typescript types that will be used in your integration, like the Transaction type or the additional data needed to be added to the Account shared type, but also any other types that you will need (remember to always type your functions with typescript).

`src/families/mycoin/types.ts`:

```ts
import type { BigNumber } from "bignumber.js";
import type {
  TransactionCommon,
  TransactionCommonRaw,
} from "../../types/transaction";

// for legacy
export type CoreStatics = Record<any,any>;
export type CoreAccountSpecifics = Record<any,any>;
export type CoreOperationSpecifics = Record<any,any>;
export type CoreCurrencySpecifics = Record<any,any>;

/**
 * MyCoin account resources
 */
export type MyCoinResources = {
  nonce: number;
  additionalBalance: BigNumber;
};

/**
 * MyCoin account resources from raw JSON
 */
export type MyCoinResourcesRaw = {
  nonce: number;
  additionalBalance: string;
};

/**
 * MyCoin transaction
 */
export type Transaction = TransactionCommon & {
  mode: string;
  family: "mycoin";
  fees?: BigNumber;
  // add here all transaction-specific fields if you implement other modes than "send"
};

/**
 * MyCoin transaction from a raw JSON
 */
export type TransactionRaw = TransactionCommonRaw & {
  family: "mycoin";
  mode: string;
  fees?: string;
  // also the transaction fields as raw JSON data
};

/**
 * MyCoin currency data that will be preloaded.
 * You can for instance add a list of validators for Proof-of-Stake blockchains,
 * or any volatile data that could not be set as constants in the code (staking progress, fee estimation variables, etc.)
 */
export type MyCoinPreloadData = {
  somePreloadedData: Record<any, any>,
};

export const reflect = (_declare: *) => {};
```
<!--  -->
{% include alert.html style="success" text="Core types should be exported for legacy compatibility with existing libcore integrations." %}
<!--  -->



Since some of thoses types will be serialized when stored or cached, you may need to define serialize/deserialize functions for those:

`src/families/mycoin/serialization.ts`:

```ts
import { BigNumber } from "bignumber.js";
import type { MyCoinResourcesRaw, MyCoinResources } from "./types";

export function toMyCoinResourcesRaw(r: MyCoinResources): MyCoinResourcesRaw {
  const { nonce, additionalBalance } = r;
  return {
    nonce,
    additionalBalance: additionalBalance.toString(),
  };
}

export function fromMyCoinResourcesRaw(r: MyCoinResourcesRaw): MyCoinResources {
  const { nonce, additionalBalance } = r;
  return {
    nonce,
    additionalBalance: BigNumber(additionalBalance),
  };
}
```

Because of Account being generic, you may need to add your specific resources to `src/types/account.ts`, if you need to store specific information related to the blockchain (like staking, validators, or frozen balance...) that are not handle in Account.

```ts
// ...
import type {
  MyCoinResources,
  MyCoinResourcesRaw,
} from "../families/mycoin/types";

// export type Account = {
// ...
// // On some blockchain, an account can have resources (gained, delegated, ...)
  myCoinResources?: MyCoinResources;
// };

// export type AccountRaw = {
  myCoinResources?: MyCoinResourcesRaw;
// };
```

...and handle the associated serialization in `src/account/serialization.ts` (if you use BigInt you will need to make it raw by changing it to string for example):

```ts
// ...
import {
  toMyCoinResourcesRaw,
  fromMyCoinResourcesRaw,
} from "../families/mycoin/serialization";
// ...
export { toMyCoinResourcesRaw, fromMyCoinResourcesRaw };
// ...

// export function fromAccountRaw(rawAccount: AccountRaw): Account {
//   const {
//     ...
    myCoinResources,
// }
// ...
  if (myCoinResources) {
    res.myCoinResources = fromMyCoinResourcesRaw(myCoinResources);
  }
//   return res;
// }

// export function toAccountRaw({
// ...
  myCoinResources,
// }: Account): AccountRaw {
// ...
  if (myCoinResources) {
    res.myCoinResources = toMyCoinResourcesRaw(myCoinResources);
  }
//   return res;
// }
```

<!--  -->
{% include alert.html style="success" text="If your integration of <i>MyCoin</i> does not require coin-specific data in an account, you will not need to define <code>MyCoinResources</code>." %}
<!--  -->


#### Display Format

Since `Operation` will be stored as JSON, you will need to implement specific serializers for the `extra` field.

We also would like the `Operation` and `Account` to be displayed in CLI with their specifics, so you must provide formatters to display them.

`src/families/mycoin/account.ts`:

```ts
import { BigNumber } from "bignumber.js";
import type { Account, Operation, Unit } from "../../types";
import { getAccountUnit } from "../../account";
import { formatCurrencyUnit } from "../../currencies";

function formatAccountSpecifics(account: Account): string {
  const { myCoinResources } = account;
  if (!myCoinResources) {
    throw new Error("mycoin account expected")
  }

  const unit = getAccountUnit(account);
  const formatConfig = {
    disableRounding: true,
    alwaysShowSign: false,
    showCode: true,
  };

  let str = " ";

  str +=
    formatCurrencyUnit(unit, account.spendableBalance, formatConfig) +
    " spendable. ";

  if (myCoinResources.additionalBalance.gt(0)) {
    str +=
      formatCurrencyUnit(
        unit,
        myCoinResources.additionalBalance,
        formatConfig
      ) + " additional. ";
  }

  if (myCoinResources.nonce) {
    str += "\nonce : " + myCoinResources.nonce;
  }

  return str;
}

function formatOperationSpecifics(op: Operation, unit: ?Unit): string {
  const { additionalField } = op.extra;

  let str = " ";

  const formatConfig = {
    disableRounding: true,
    alwaysShowSign: false,
    showCode: true,
  };

  str +=
    additionalField && !additionalField.isNaN()
      ? `\n    additionalField: ${
          unit
            ? formatCurrencyUnit(unit, additionalField, formatConfig)
            : additionalField
        }`
      : "";

  return str;
}

export function fromOperationExtraRaw(extra: ?Object) {
  if (extra && extra.additionalField) {
    extra = {
      ...extra,
      additionalField: BigNumber(extra.additionalField),
    };
  }
  return extra;
}

export function toOperationExtraRaw(extra: ?Object) {
  if (extra && extra.additionalField) {
    extra = {
      ...extra,
      additionalField: extra.additionalField.toString(),
    };
  }
  return extra;
}

export default {
  formatAccountSpecifics,
  formatOperationSpecifics,
  fromOperationExtraRaw,
  toOperationExtraRaw,
};
```

<!--  -->
{% include alert.html style="success" text="<code>formatOperationSpecifics()</code> and <code>formatAccountSpecifics()</code> are used in the CLI to display account-specific fields and extras of the transaction history, useful for debugging." %}
<!--  -->

The same idea applies also to the `Transaction` type which needs to be serialized and formatted for CLI:

`src/families/mycoin/transaction.ts`:

```ts
import type { Transaction, TransactionRaw } from "./types";
import { BigNumber } from "bignumber.js";
import {
  fromTransactionCommonRaw,
  toTransactionCommonRaw,
} from "../../transaction/common";
import type { Account } from "../../types";
import { getAccountUnit } from "../../account";
import { formatCurrencyUnit } from "../../currencies";

export const formatTransaction = (
  { mode, amount, recipient, useAllAmount }: Transaction,
  account: Account
): string =>
  `
${mode.toUpperCase()} ${
    useAllAmount
      ? "MAX"
      : amount.isZero()
      ? ""
      : " " +
        formatCurrencyUnit(getAccountUnit(account), amount, {
          showCode: true,
          disableRounding: true,
        })
  }${recipient ? `\nTO ${recipient}` : ""}`;

export const fromTransactionRaw = (tr: TransactionRaw): Transaction => {
  const common = fromTransactionCommonRaw(tr);
  return {
    ...common,
    family: tr.family,
    mode: tr.mode,
    fees: tr.fees ? BigNumber(tr.fees) : null,
  };
};

export const toTransactionRaw = (t: Transaction): TransactionRaw => {
  const common = toTransactionCommonRaw(t);
  return {
    ...common,
    family: t.family,
    mode: t.mode,
    fees: t.fees?.toString() || null,
  };
};

export default { formatTransaction, fromTransactionRaw, toTransactionRaw };
```
