---
title: Introduction
subtitle:
tags: [platform app, platform application, live app, ledger live app]
category: Live Application
toc: true
layout: doc
---

## Summary

To integrate a **non-DApp**, you need to: 
- write [a manifest](../reference/manifest)
- use the Ledger Live SDK

## Context

In this article, we will guide you through the process of developing and integrating your classical application (non DApp or Platform app) to the Ledger Live ecosystem. By having your application supported in Ledger Live, you offer security, ease and accessibility to millions of users.

## What is a Platform App?

A Platform App is an application that leverages the Ledger Live API. By doing so it can get access to the native features of Ledger Live and to the user’s accounts and information.

[In a previous article](../../dapp/dapp-customisation/), we described the process to get a Decentralized Application (DApp) listed in the Ledger Live Discover section. The DApps that are running in this section are in fact executed within the first Platform App Ledger has designed: the Dapp Browser.

![interaction between Ledger Live and the Live Apps](../images/ledger_live_interaction_live_apps.png "interaction between Ledger Live and the Live Apps")

## How do I develop a Platform App? 

To develop an application compatible with the Ledger Live application, we provide you with a set of particular APIs (Ledger Live API). According to the services and features you want to provide, you may have to use some specific APIs in order to interact with Ledger Live. An example would be account registration, or signing transactions. This set of APIs will evolve over time. 

You basically develop a web version of your application, which is then integrated in an iframe inside the platform so all the Ledger Live users can discover it.

You can follow our step-by-step [Tutorial](../tutorial/introduction) to learn how to develop your first Platform App!
