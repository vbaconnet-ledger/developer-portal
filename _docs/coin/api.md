---
title: Wrap your API
subtitle:
tags: [Ledger Live Common, typescript, environment variables, local packages]
category: Blockchain Support
author:
toc: true
layout: doc
---

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
{% include alert.html style="tip" text="Try to separate as much as possible your different APIs (if you use multiple providers) and use typings to ensure you map correctly API responses to Ledger Live types" %}
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

See [Polkadot Coin Integration's api](https://github.com/LedgerHQ/ledger-live-common/tree/master/src/families/polkadot/api) for good inspiration.

#### API Example

Here is an example of a <i>MyCoin</i> API implementation using a fictive SDK that uses something like WebSocket to fetch data.

<!--  -->
{% include alert.html style="tip" text="We don't recommend using WebSocket as it could have drawbacks and is more difficult to scale up and put behind a reverse proxy. If possible, use HTTPS requests as much as possible." %}
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
