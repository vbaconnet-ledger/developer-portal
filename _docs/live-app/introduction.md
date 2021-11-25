---
title: Development steps
subtitle:
tags: [platform app, live application, ledger live app, dapp]
category: Live App
toc: true
layout: doc
---

This section you will help you transform your Web3 application or classical application into a Live App.

Live Apps are services that have been integrated into Ledger Live Discover section. Many applications such as Paraswap, Moonpay or Lido, have already been integrated. 

By having your application supported in a Ledger DApp browser, you increase the security of your application and also make it easier for your users, while simultaneously having access to over 3 million Ledger Live users.


<img src="../images/discover-section.png" alt="Discover section"/>


### Development steps

What you will need to do to integrate your application as a Live App will differ depending on it being a DApp or a classical non decentralized application.

|             |  Use the Ledger Live SDK | Update your web3 provider list| Write a manifest | Create a Nano Plugin |
| ----------- | ------------ | ------------------------ | ---------------- | -------------------------- |
| <b>To integrate a DApp, you will:</b>| No   | Yes		| Yes 		       | Yes, in most cases         |
|<b>To integrate a non DApp, you will:</b>| Yes  | No   | Yes              | No                         |


#### Ledger Live SDK

The Ledger Live SDK helps you integrate your centralized Live App into Ledger Live without having to code all the Ledger Live API logic. If you are integrating an Web3 DApp, you won't need it as it will be run from inside our DApp browser.

[Click here](../intro-sdk) to know more.


#### Web3 provider list update

Since, as mentionned above, Web3 DApp a running in Ledger Live through our DApp browser, you will need to adapt your Web3 provider list.

[Click here](../dapp-customisation) to know more.

#### Manifest

The manifest is mandatory for all types of Live Apps. It is like an ID card for your application that will be use by Ledger Live when the application is opened in the Discover section.

[Click here](../manifest) to know more.


#### Nano App plugin

Plugins are some very specific applications that handle dedicated smart contract methods, therefore making unverifiable contract data readable on the Nano screen.

[Click here](../nano-app-plugin) to know more.


### Special cases

The development steps may differ depending on the application you want to integrate. Please get in touch with us on [the Ledger Discord server](https://discord.gg/Ledger) to discuss your project.


