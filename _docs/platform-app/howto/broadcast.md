---
title: Broadcast
subtitle:
tags: [platform app, platform application, live app, ledger live app]
category: Platform Application
toc: true
layout: doc
---

## Introduction

To broadcast a transaction, you will need to use the `broadcastSignedTransaction` function.

[broadcastSignedtransaction](../../classes/#broadcastsignedtransaction):

```javascript
  async broadcastSignedTransaction(
    accountId: string,
    signedTransaction: RawSignedTransaction
  ): Promise<string> {
    return this._request("transaction.broadcast", {
      accountId,
      signedTransaction,
    });
  }
```
  
As you can see, you need the `accountId` and the `signedTransaction`.
  
## Account Id
To get the `accountId`, you have two options. You can either use the `listAccounts` or the `requestAccount` functions.

### List account
List the accounts added by the user on Ledger Live.

[listAccounts](../../classes/#listaccounts):

```javascript
async listAccounts(): Promise<Account[]> {
    const rawAccounts = await this._request<RawAccount[]>("account.list");

    return rawAccounts.map(deserializeAccount);
  }
```
### Request account
Let the user choose an account in Ledger Live, providing filters for choosing currency or allowing add account.

[requestAccount](../../classes/#requestaccount): 

```javascript
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
## Signed Transaction
Refer to the page [How to: sign](https://developers.ledger.com/docs/platform-app/howto/sign/).
