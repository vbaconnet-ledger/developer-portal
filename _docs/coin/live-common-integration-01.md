---
title: Integration pt. 1
subtitle:
tags: []
author:
toc: true
layout: doc_ci
---

## Step by Step integration

### MyCoin cryptoassets

We will consider that <i>MyCoin</i> is already in [@ledgerhq/cryptoassets](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/cryptoassets) package. If not, see [\*MyCoin\* in CryptoAssets](../cryptoassets-library).

### Derive Address from device

If your app JS bindings (See [\*My Coin\* App JS Bindings](../js-bindings)) are not yet published in [LedgerJS](https://github.com/LedgerHQ/ledgerjs), you can put them in `src/families/mycoin/hw-app-mycoin`.

First and easiest step is to get an address from the device for <i>MyCoin</i>, by creating the `hw-getAddress.ts` Resolver:

`src/families/mycoin/hw-getAddress.js`:

```ts
import type { Resolver } from "../../hw/getAddress/types";
import MyCoin from "./hw-app-mycoin/MyCoin";

const resolver: Resolver = async (transport, { path, verify }) => {
  const myCoin = new MyCoin(transport);

  const r = await myCoin.getAddress(path, verify);

  return {
    address: r.address,
    publicKey: r.publicKey,
    path,
  };
};

export default resolver;
```

Test that you can derive an address:

```sh
ledger-live getAddress --currency mycoin --path "44'/8008'/0'/0/0" --derivationMode ""
```

### Derivation

Ledger Live uses the BIP44 derivation mode by default (as `derivationMode=""`), which is standard and most common way for HD wallet.
If <i>MyCoin</i> has a conventional derivation path (BIP44), Ledger Live should already be able to derive an address correctly.

**If you need to use another derivation mode:**

Make changes to [`src/derivation.ts`](https://github.com/LedgerHQ/ledger-live-common/tree/master/src/derivation.ts):

1. Add a new derivation mode with `overridesDerivation`:

```ts
// const modes = Object.freeze({
// ...
  mycoinbip44h: { // Hardened BIP44 for MyCoin
    overridesDerivation: "44'/8008'/<account>'/0'/<address>'",
  },
// });
```

2. add the mode to family in `legacyDerivations`:

```ts
// const legacyDerivations: $Shape<CryptoCurrencyConfig<DerivationMode[]>> = {
// ...
  mycoin: ["mycoinbip44h"],
// };
```

3. disable the default use of BIP44 in `disableBIP44`:

```ts
// const disableBIP44 = {
// ...
  mycoin: true,
// };
```

See [Derivation documentation](https://github.com/LedgerHQ/ledger-live-common/blob/master/docs/derivation.md) for further details.

You can check that the derivationMode is correct by executing:

```sh
ledger-live derivation --currency mycoin

#>  default: MyCoin 1: 44'/8008'/<account>'/<change>/<address>
```

### Types

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

All main accounts share a common ground:

- `id: string`: a unique account identifier we build up with many pieces of information. It's generally composed of 5 parts split by a `:`
- `seedIdentifier: string`: a unique way to identify a seed the account was associated with
- `xpub?: string`: the xpub if relevant. This information is redundant with the `id` and might be eventually dropped
- `derivationMode: DerivationMode` identifies the derivation scheme that is used. See [Derivation](#derivation)
- `index: number`: the index of the account among a given `derivationMode`
- `freshAddress: string`: the "next" public address where a user should receive funds. For account-based blockchains, it is the current public address
- `freshAddressPath: string` represents the derivation path where the `freshAddress` was taken from
- `freshAddresses: Address[]`: an array of "future" fresh addresses. It is a generalisation of `freshAddress` and `freshAddressPath`
- `name: string`: name of the account that the user has set. It is not saved or restored from any place but is defined by the user and locally saved
- `balance: BigNumber` represent the total amount of assets that this account holds
- `spendableBalance: BigNumber`: represents the subset of `balance` that can be spent. Most of the time it will be equal to `balance` but this can vary in some blockchains
- `blockHeight: number`: tracks the current blockchain block height
- `currency: CryptoCurrency`: the associated crypto currency of the Account. See [\*MyCoin\* in CryptoAssets](../cryptoassets-library)
- `unit: Unit`: the user defined preferred unit to view the account with. It's initialized to `currency.units[0]`
- `operationsCount: number` gives the total number of operations this account contains. This field exists because the `operations` array is not guaranteed to be complete
- `operations: Operation[]`: an array of operations sorted from the most recent to the oldest one. It might be partial, containing only the last N operations but can be paginated on
- `pendingOperations: Operation[]`: like `operations` but only for <i>optimistic updates</i> of operations resulting from transactions that were just performed and not yet confirmed
- `lastSyncDate: Date`: the date of the last time a synchronisation was performed
- `subAccounts?: SubAccount[]`: an optional field that is defined for accounts that can contain children accounts. This is for instance used for tokens and Tezos originated accounts
- `balanceHistory?: BalanceHistoryMap`: a cache that contains the historical datapoints of the balance in different ranges of time. It might not be present in Account and in that case, a fallback JS implementation will be used to calculate this from the operations array

But if needed by the blockchain, an account can also contain coin-specific resources related to a single account, like its "nonce" or additional balances (e.g. for staking), or anything that may be displayed or used in your implementation. It's generally an additional field like `myCoinResources`. See [Family-specific types](#family-specific-types) below.

For further details, see [Account documentation](https://github.com/LedgerHQ/ledger-live-common/blob/master/src/types/account.ts)

#### Operation

In short, transactions history in Ledger Live is a list of `Operation`, that are confirmed, unconfirmed or pending (not yet fetched from explorer).

They all share the same model, with an `extra` field that can store any additional data you may need to display:

- `id: string`: unique identifier (encoded as `accountId-hash-TYPE`)
- `hash: string`: transaction hash from blockchain
- `type: OperationType`: see [Operation Type](#operation-type) below
- `value: BigNumber`: atomic value of the operation, as <i>a positive value</i> that affects the account balance (includes fees for OUT, not for IN, only fees for FEES...)
- `fee: BigNumber`: atomic value of the operation fees (no matter which direction)
- `senders: string[]`: list of senders addresses
- `recipients: string[]`: list of recipients addresses
- `blockHeight?: number`: (optional) height of the block on the blockchain
- `blockHash?: string`: (optional) hash of the block the operation is in
- `transactionSequenceNumber?: number`: sequence number of the transaction in blockchains (aka "nonce")
- `accountId: string`: the Ledger Live account id
- `date: Date`: parsed transaction date
- `hasFailed?: boolean`: does the transaction succeeded
- `subOperations?: Operation[]`: (advanced) in context of accounts that can have tokens, an operation can contains itself operations
- `internalOperations?: Operation[]`: (advanced) in context of accounts that have internal transactions that belong to a parent transaction
- `extra: Object`: Extra crypto specific fields

If <i>MyCoin</i> has specific operation fields (like `additionalField` we added for example), you will be able to display them later. They are not meant to be useful in any flow, only for UI.

If <i>MyCoin</i> uses a "nonce", then `transactionSequenceNumber` must be filled correctly, as it will be necessary for signing new transactions (and will interpreted to clear pending operations). Only outgoing transaction must have this value though. See [Optimistic Operation](#optimistic-operation).

See [src/types/operation.ts](https://github.com/LedgerHQ/ledger-live-common/blob/master/src/types/operation.ts) for better understanding of all fields.

#### Operation Type

As said above, an `Operation` has a `type` which is generic string typed as `OperationType`, giving more or less the direction of the operation:

- `OUT`: A send / transfer amount transaction
- `IN`: A received / incoming amount transaction
- `FEES`: A transaction that only charges fees
- `NONE`: A transaction that does not affect balance
- `REWARD`: A claimed reward (as an outgoing transaction with fees)
- `REWARD_PAYOUT`: A received reward (as an incoming transaction)
- `SLASH`: A staking slash (with slashed amount generally)

There are more types available, existing one will have predefined icons, translations and behaviours (i.e. `getOperationAmountNumber()` in [src/operation.ts](https://github.com/LedgerHQ/ledger-live-common/blob/master/src/operation.ts)).

<i>MyCoin</i> could have also specific operation types, if you need to add a type that is not yet implemented, add them in `src/types/operation.ts`. You will later need to implement some specific code for the Ledger Live Desktop and Mobile to display them correctly.

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

You will be implementing the flow types that will be used in your integration, like the Transaction type or the additional data needed to be added to the Account shared type, but also any other types that you will need (remember to always type your functions with flow types).

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
export type TransactionRaw =TransactionCommonRaw & {
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

Because of Account being generic, you may need to add your specific resources to `src/types/account.ts`...

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
  myCoinResources?: MyCoinResourcesRawp;
// };
```

...and handle the associated serialization in `src/account/serialization.ts`:

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


#### Operation, Account and Transaction serialization

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

### Wrap your API

Before this part, you will need an indexer/explorer to get a list of operations. You may also obtain from it, or from a SDK, the state of an account on the blockchain, such as balances, nonce (if your blockchain uses something similar), and any data relevant to show or fetch in Ledger Live.

For the example, we will assume that <i>MyCoin</i> provides a SDK that is able to do both getting the state and the account history.

The best way to implement your API in Live Common is to create a dedicated `api` subfolder, that exports all functions that require calls to 3rd-party and map their responses to Ledger Live types.

```plaintext
./src/families/mycoin
└── api
  ├── index.ts
  ├── sdk.ts
  └── sdk.types.ts
```
<!--  -->
{% include alert.html style="success" text="Try to separate as much as possible your different APIs (if you use multiple providers) and use typings to ensure you map correctly API responses to Ledger Live types" %}
<!--  -->

You will likely need to export thoses functions, but implemention is up-to-developer:

`src/families/mycoin/api/index.ts`:

```ts
export {
  getAccount,
  getOperations,
  getPreloadedData, // adjust with needs of preloaded data
  getFees,
  submit,
  disconnect, // if using persisting connection
} from "./sdk";
```

Basically, in the next sections, `getAccount` will be called to create an `Account` with balances and any additional resources, and `getOperations` will be called to fill the `operations[]` of this account, with the whole history of operations that can be requested incrementally. Then `getFees` before sending a transaction to let the user know of the network cost (estimated or effective), and `submit` to broadcast its transaction after signing.

See [Polkadot Blockchain Integration's api](https://github.com/LedgerHQ/ledger-live-common/tree/master/src/families/polkadot/api) for good inspiration.

#### API Example

Here is an example of a <i>MyCoin</i> API implementation using a fictive SDK that uses something like WebSocket to fetch data.

<!--  -->
{% include alert.html style="success" text="We don't recommend using WebSocket as it could have drawbacks and is more difficult to scale up and put behind a reverse proxy. If possible, use HTTPS requests as much as possible." %}
<!--  -->

```ts
import MyCoinApi from "my-coin-sdk";
import type { MyCoinTransaction } from "my-coin-sdk";
import { BigNumber } from "bignumber.js";

import type { Operation, OperationType } from "../../../types";
import { getEnv } from "../../../env";
import { encodeOperationId } from "../../../operation";

type AsyncApiFunction = (api: typeof MyCoinApi) => Promise<any>;

const MYCOIN_API_ENDPOINT = () => getEnv("MYCOIN_API_ENDPOINT");

let api = null;

/**
 * Connects to MyCoin Api
 */
async function withApi(execute: AsyncApiFunction): Promise<any> {
  // If client is instanciated already, ensure it is connected & ready
  if (api) {
    try {
      await api.isReady;
    } catch (err) {
      api = null;
    }
  }

  if (!api) {
    api = new MyCoinApi(MYCOIN_API_ENDPOINT);
    api.connect();
    api.onClose(() => {
      api = null;
    });
    await api.isReady;
  }

  try {
    const res = await execute(api);

    return res;
  } catch {
    // Handle Error or Retry
    await disconnect();
  }
}

/**
 * Disconnects MyCoin Api
 */
export const disconnect = async () => {
  if (api) {
    const disconnecting = api;
    api = null;
    await disconnecting.close();
  }
};

/**
 * Get account balances and nonce
 */
export const getAccount = async (addr: string) =>
  withApi(async (api) => {
    const { balance, additionalBalance } = await api.getBalances(addr);
    const nonce = await api.getNonce(addr);
    const blockHeight = await api.getBlockHeight();

    return {
      blockHeight,
      balance: BigNumber(balance),
      additionalBalance: BigNumber(additionalBalance),
      nonce,
    };
  });

/**
 * Returns true if account is the signer
 */
function isSender(transaction: MyCoinTransaction, addr: string): boolean {
  return transaction.sender === addr;
}

/**
 * Map transaction to an Operation Type
 */
function getOperationType(
  transaction: MyCoinTransaction,
  addr: string
): OperationType {
  return isSender(transaction, addr) ? "OUT" : "IN";
}

/**
 * Map transaction to a correct Operation Value (affecting account balance)
 */
function getOperationValue(
  transaction: MyCoinTransaction,
  addr: string
): BigNumber {
  return isSender(transaction, addr)
    ? BigNumber(transaction.value).plus(transaction.fees)
    : BigNumber(transaction.value);
}

/**
 * Extract extra from transaction if any
 */
function getOperationExtra(transaction: MyCoinTransaction): Object {
  return {
    additionalField: transaction.additionalField,
  };
}

/**
 * Map the MyCoin history transaction to a Ledger Live Operation
 */
function transactionToOperation(
  accountId: string,
  addr: string,
  transaction: MyCoinTransaction
): Operation {
  const type = getOperationType(transaction, addr);

  return {
    id: encodeOperationId(accountId, transaction.hash, type),
    accountId,
    fee: BigNumber(transaction.fees || 0),
    value: getOperationValue(transaction, addr),
    type,
    hash: transaction.hash,
    blockHash: null,
    blockHeight: transaction.blockNumber,
    date: new Date(transaction.timestamp),
    extra: getOperationExtra(transaction),
    senders: [transaction.sender],
    recipients: transaction.recipient ? [transaction.recipient] : [],
    transactionSequenceNumber: isSender(transaction, addr)
      ? transaction.nonce
      : undefined,
    hasFailed: !transaction.success,
  };
}

/**
 * Fetch operation list
 */
export const getOperations = async (
  accountId: string,
  addr: string,
  startAt: number
): Promise<Operation[]> =>
  withApi(async (api) => {
    const rawTransactions = await api.getHistory(addr, startAt);

    return rawTransactions.map((transaction) =>
      transactionToOperation(accountId, addr, transaction)
    );
  });

/**
 * Obtain fees from blockchain
 */
export const getFees = async (unsigned: string): Promise<BigNumber> =>
  withApi(async (api: typeof MyCoinApi) => {
    const { fees } = await api.dryRun(unsigned);

    return BigNumber(fees);
  });

/**
 * Broadcast blob to blockchain
 */
export const submit = async (blob: string) =>
  withApi(async (api: typeof MyCoinApi) => {
    const { hash, fees } = await api.submit(blob);

    // Transaction hash is likely to be returned
    return { hash, fees: BigNumber(fees) };
  });
```

If you need to disconnect from your API after using it, update `src/api/index.ts` to add your api disconnect in the `disconnectAll` function, it will avoid tests and CLI to hang.

### JS Bridge

`bridge/js.ts` is the entry point of a blockchain integration. It must export two bridges:

- a CurrencyBridge
- an AccountBridge

#### Starting with a mock

TO BE WRITTEN

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

#### Split your code

You can now start to implement the JS bridge for <i>MyCoin</i>. It may need some changes back and forth between the types, your api wrapper, and the differente files.

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
{% include alert.html style="success" text="You could implement all the methods in a single file, but for better readability and maintainability, you should split your code into multiple files." %}
<!--  -->
