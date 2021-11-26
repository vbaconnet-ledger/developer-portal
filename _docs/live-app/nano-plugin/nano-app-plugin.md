---
title: Nano App Plugin
subtitle:
tags: []
category: Dapp Integration
author:
layout: doc
---

The security model for Ledger Nano devices is “What you see is what you sign”.
The end-user must verify and approve transactions by carefully verifying all the information displayed on the Nano screen ensuring it is correct, before signing. This particularly applies to the destination address and amount of transactions

The purpose of the Nano (BOLOS) application is specifically to handle the parsing and displaying of transaction details to the end-user.

We refer to blind signing when the user cannot verify transaction details because they are not displayed on the Nano screen.
This is often the case when users interact with smart contracts. Indeed, as each smart contract interaction is different, there is no easy way for the BOLOS application to easily parse the message to be signed.

To solve this problem, Ledger has designed <b>plugins</b>. Plugins are some very specific applications that handle dedicated smart contract methods, therefore making unverifiable contract data readable on the Nano screen.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="680" src="../images/plugin.png">
</div>
<!-- --------------------------------- -->

Ledger designed and implemented Paraswap, the first Ethereum plugin.

<video controls muted preload='none' poster='../images/paraswap.png' ><source src="../../videos/paraswap.mp4" type='video/mp4'></video><br>

<!--  -->
{% include alert.html style="tip" text="The second mandatory requirement to obtain official support by Ledger for your DApp is using a plugin to verify transaction details on the Nano device." %}
<!--  -->

