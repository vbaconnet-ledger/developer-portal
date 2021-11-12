---
title: A - Connecting the DApp 
subtitle:
tags: [server, iframe]
category: DApp Integration
author:
toc: true
layout: doc_la
---

This page is a description of the three parts of the implementation of your DApp.

## 1. Update your DApp server

Ledger has a [DApp browser](https://github.com/LedgerHQ/ledger-live-platform-apps) to host your web3 DApp.

One of the most useful features of this DApp Browser is to be able to log-in automatically from a Ledger Live Ethereum account, therefore obviating the step to manually “Connect a Wallet”.

As a DApp developer, you must add the specific iframe provider from Ledger to your web3 provider list.

The server must allow DApps to be embedded into iframes. To know more on how to proceed, have a look at [this documentation](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy/frame-ancestors). This explains how to easily authorize your DApp to be embedded only by Ledger Live DApp Browser by specifying the DApp Browser URL without using wildcards.

There is a useful [reference article](https://blog.ledger.com/paraswap-defi/) on the Ledger Blog.

The package to add a [new web3 provider](https://www.npmjs.com/package/@ledgerhq/iframe-provider) is available here. This simply diverts all RPC calls made from the DApp to the parent window using the PostMessage API. It does not do any Ledger-specific computing. It could in the future become a development standard to work out-of-the-box with other wallets.

A DApp must run differently if it is called from within an iframe or not. If it is, then directly initialize the web3 instance with the iframe provider. In this way, there is no web3modal connect flow at all, and users are automatically connected to the wallet of the parent window. To detect if a call is made from within an iframe or not, use a query param such as `?embed=true`.

## 2. Test the provider locally

A tool is available to test the provider integration. It is a DApp browser empty shell that uses mock data. To use it, put your URL in <b>https://ledger-live-platform-apps.vercel.app/app/dapp-browser?mock=true&url=&lt;Your_URL></b>
  
For example, this is how it is used with Paraswap:

[https://ledger-live-platform-apps.vercel.app/app/dapp-browser?mock=true&url=https://paraswap.io?embed=true](https://ledger-live-platform-apps.vercel.app/app/dapp-browser?mock=true&url=https://paraswap.io?embed=true)

You will see that the page information content depends on the chosen account in the drop-down list in the page header.

<!--  -->
{% include alert.html style="tip" text="The first requirement is that the DApp must work flawlessly within this test tool." %}
<!--  -->

## 3. Smooth out user experience

* Please make sure basic cases are handled.

  For instance, check what happens when you click on the **log out** or **disconnect** button in your Dapp. The user may be automatically logged back in Ledger Live iframe provider or redirected to the standard list of providers (Metamask, connect wallet, and such…).

* We currently have limited blockchain support. If your Dapp supports several EVM-compatible blockchains (such as Polygon or BSC), please **remove the network selection option** so that users are restricted to the Ethereum network. Other networks may be added in the future.

* Please **remove any references to third-party services** that are not part of the current Ledger environment. You are free however to redirect to Ledger Live Buy or Swap services.

* UI must be **responsive** and available for both **Desktop** and **Mobile** screen sizes.

