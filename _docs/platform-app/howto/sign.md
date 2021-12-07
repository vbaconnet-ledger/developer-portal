---
title: Sign
subtitle:
tags: []
category: Platform Application
layout: doc
---

## Introduction

Signing a transaction is pretty straight-forward. 

[signTransaction](../../classes/#signtransaction):

```json
async signTransaction(
    accountId: string,
    transaction: Transaction,
    params?: {
      /**
       * The name of the Ledger Nano app to use for the signing process
       */
      useApp: string;
    }
  ): Promise<RawSignedTransaction> {
    return this._request<RawSignedTransaction>("transaction.sign", {
      accountId,
      transaction: serializeTransaction(transaction),
      params: params || {},
    });
  }
```

The two mandatory parameters that you need in order to sign a transaction are:
- Get the account of the user: `accountId` 
- Build the transaction: `transaction`. 

## Account Id

To get the `accountID`, you have two options. You can either use the `listAccounts` or the `requestAccount` functions.

### List account

List the accounts added by the user on Ledger Live.

[listAccounts](../../classes/#listaccounts):

```json
async listAccounts(): Promise<Account[]> {
    const rawAccounts = await this._request<RawAccount[]>("account.list");

    return rawAccounts.map(deserializeAccount);
  }
```
### Request account

Let the user choose an account in Ledger Live, providing filters for choosing currency or allowing add account.

[requestAccount](../../classes/#requestaccount): 

```json
async requestAccount(
    params: {
      currencies?: string[];
      allowAddAccount?: boolean;
    } = {}
  ): Promise<Account> {
    const rawAccount = await this._request<RawAccount>(
      "account.request",
      params
    );

    return deserializeAccount(rawAccount);
  }
```

## Transaction

The `transaction` parameter (type) must be built by yourself, it isn't returned by a function. 

[transaction](../../modules/#transaction):

```json
export interface TransactionCommon {
  amount: BigNumber;
  recipient: string;
}

export type Transaction =
  | EthereumTransaction
  | BitcoinTransaction
  | AlgorandTransaction
  | CryptoOrgTransaction
  | RippleTransaction
  | CosmosTransaction
  | TezosTransaction
  | PolkadotTransaction
  | StellarTransaction
  | TronTransaction;
```
