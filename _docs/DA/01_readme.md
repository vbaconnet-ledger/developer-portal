---
title: Integrating DApps
subtitle: 
tags: []
toc: true
toc_sticky: true
author: hugo
layout: doc_da
---

## Introduction (Process flow)
Lorem ipsum dolor sit amet

## Local Installation
- Add a new web3 provider
The package available here https://www.npmjs.com/package/@ledgerhq/iframe-provider. This simply diverts all RPC calls made from the DApp to the parent window using the PostMessage API. It does not do any Ledger-specific computing. It could in the future become a standard, to work out-of-the-box with other wallets.

## Server prerequisite
The server must allow DApps to be embedded in iframes.

## Coding
The DApp must run differently if it is run from within an iframe or not. If it's the case, directly initialize the web3 instance with the iframe-provider. This way there is no web3modal connect flow at all, and users are instantly connected to the parent window's wallet. Detecting if the wallet is being run or not in an iframe can be done simply by using a query param such as  `?embed=true`.

## Testing Locally
We have a little tool to test the provider integration. It is a DApp browser empty shell that uses mock data. 
https://iframe-dapp-browser-test.vercel.app/app/dapp-browser?mock=true&url=<Your_URL>

For example, this is how it is used with Paraswap: https://iframe-dapp-browser-test.vercel.app/app/dapp-browser?mock=true&url=https://paraswap.io?embed=true 

Note the page information is driven by the chosen account in the drop-down list in the page header. 

## Security Plugin



## Submitting your DApp for Release

When you have your DApp coded with the security plugin installed contact us (mailto:pascal.gautiera@ledger.fr)  to have your DApp referenced.

