---
title: Development steps
subtitle:
tags: [platform app, live application, ledger live app, dapp]
category: Live App
toc: true
layout: doc
---

This section you will help you transform your Web3 application or classical application into a Live App.

Live Apps are services that have been integrated into Ledger Live Discover section. Many applications such as Paraswap, Moonpay or Lido, have already been integrated. This allows our users to have easier access to different services but also discover new ways to handle their crypto-assets. 



<img src="../images/discover-section.png" alt="Discover section"/>


### What kind of applications can be integrated?

#### Web3 DApps

DApps can be integrated as Live Applications, using our DApp browser.

#### SDK services  

We call SDK services all applications than are not Decentralized Applications and rely on the Ledger Live SDK to be integrated.


### Development steps

Whether you're integrating a Web3 application or another type of application, you will need to know if you have to:

| Type of App            |  Use the SDK | Adapt web3 provider list | Write a manifest | Create a &nbsp;Nano Plugin |
| ---------------------- | ------------ | ------------------------ | ---------------- | -------------------- |
| <b>DApps</b>        | No           | Yes		               | Yes 		      | Yes, in most cases   |
|<b>SDK services</b>| Yes        | No                       | Yes              | No                   |


#### Ledger Live SDK

The Ledger Live SDK helps you integrate your centralized Live App into Ledger Live without having to code all the Ledger Live API logic. If you are integrating an Web3 DApp, you won't need it as it will be run from inside our DApp browser.

[Click here](../intro-sdk) to know more.


#### Web3 provider list adaptation

Since, as mentionned above, Web3 DApp a running in Ledger Live through our DApp browser, you will need to adapt your Web3 provider list.

[Click here](../intro-dapp) to know more.

#### Manifest

The manifest is mandatory for all types of Live Apps. It is like an ID card for your application that will be use by Ledger Live when the application is opened in the Discover section.

[Click here](../manifest) to know more.


#### Nano App plugin

Plugins are some very specific applications that handle dedicated smart contract methods, therefore making unverifiable contract data readable on the Nano screen.

[Click here](../nano-app-plugin) to know more.


#### Special cases

The development steps may differ depending on the application you want to integrate. Please get in touch with us on [the Ledger Discord server](https://discord.gg/Ledger) to discuss your project.


