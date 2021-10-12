---
title: ASA
subtitle:
tags: [tokens]
category: Token Integration
toc: true
author:
layout: doc_et
---



For ASAs, compared to ERC20, the process differs due to the fact that the tokens details are hardcoded within the Algorand Nano application instead of being streamed to the device. Furthermore, the ownership of the Algorand Nano Application source code lies with the Algorand team. Request for updates must be validated by them before being reviewed by Ledger.

## How to request a token addition

### 1. Is my ASA token listed?

First, make sure your token isn’t already listed by checking this table of the [supported crypto-assets](https://github.com/LedgerHQ/ledger-live-desktop/blob/develop/cryptoassets.md).

<!--  -->
{% include alert.html style="success" text="The list of supported assets on the <a href='https://www.ledger.com/supported-crypto-assets/'>website</a> is managed through an internal Ledger process. For the moment it’s difficult to guarantee the exact mapping between tokens available on Ledger Live and listed on the website." %}
<!--  -->

### 2. How to get my token listed?

Update the [Algorand Nano app](https://github.com/algorand/ledger-app-algorand/blob/master/src/algo_asa.c).
When your PR is validated by the Algorand team, they will make a PR to Ledger Github repository.

Then, you need to update the [ledgerjs package](https://github.com/LedgerHQ/ledgerjs/blob/master/packages/cryptoassets/data/asa.js).

<!--  -->
{% include alert.html style="warning" text="To ensure both these topics are handled properly, we invite you to contact our engineering team through the <a href='https://ledger-dev.slack.com'>Ledger's Developer Slack</a>, or use <a href='https://developers.ledger.com/contact/'>this contact form</a> to get signed in." %}
<!--  -->


### What will Ledger do?

Ledger will review the PR made by the Algorand team to [Ledger Github repository](https://github.com/LedgerHQ/app-algorand).
Ledger will review and merge the PR made on the [ledgerjs package](https://github.com/LedgerHQ/ledgerjs/blob/master/packages/cryptoassets/data/asa.js).
Ledger will perform a functional review of the changes before release in production.
