---
title: Functional requirements
subtitle:
tags: []
category: Nano Application
author:
layout: doc_na
---

#### Sections in this article
{:.no_toc}
* TOC
{:toc}

## Guidelines on app name and ticker

Ensure that the application name defined in makefile matches the one you want to have displayed on the manager.
Ticker name must be added via ledgerjs update and not directly on makefile.

## Blind signing

For every transaction, the user must be able to verify on the device the amount being transferred and the destination address.

If the display of those parameters (Token, smart contract management) is not possible, the transaction should be rejected by the device unless the user has acknowledged blind signing such a transaction.

To implement this requirement it is recommended to have a setting menu with the possibility to enable/disable contract data.

You can find implementation example inside [Ethereum](https://github.com/LedgerHQ/app-ethereum), [Solana](https://github.com/LedgerHQ/app-solana) or [Elrond](https://github.com/LedgerHQ/app-elrond) code base.

## Wallet requirements

The wallet must give an option to verify the receiving address on the Nano device.
It should also have an affiliate link next connect with ledger option

## Smart contracts & token support

Ledger users must be able to verify every transaction they perform using your Bolos application.
If your chain supports other tokens, ensure that the correct ticker, amount, and destination address are displayed while interacting with them.
If this is not the case, you need to implement a blind signature setting on the application, which by default must be disabled.

## Staking feature

For every staking operation, ledger users must be able to verify the amount, validator/nominator address(es)
