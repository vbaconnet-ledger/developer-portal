---
title: Introduction
subtitle:
tags: []
category: Platform Application
layout: doc_pa
---

#### Sections in this article

{:.no_toc}
* TOC
{:toc}

## Context


In this article, we will guide you through the process of developing and integrating your Platform application to the Ledger Live ecosystem. By having your application supported in Ledger Live, you increase the security and ease of use for your users, while simultaneously having access to over 3 million Ledger Live users.

## What is a Platform Application?

A Platform Application is an application that leverages the Ledger Live API. By doing so it can get access to the native features of Ledger Live and to the user’s accounts and information.

[In a previous article](https://developers.ledger.com/docs/dapp/introduction/), we described the process to get a Decentralized Application (DApp) listed in the Ledger Live Discover section. The DApps running in this section are in fact executed within the first Platform Application Ledger designed : the Dapp Browser.

![interaction between Ledger Live and the Live Apps](../images/ledger_live_interaction_live_apps.png "interaction between Ledger Live and the Live Apps")

## How do I develop a Platform Application? 

In order to develop an application compatible with Ledger Live Platform, we provide you with a set of particular APIs (Ledger Live API). According to the services and features you want to provide, you may have to use some specific APIs in order to interact with Ledger Live. An example would be account registration, or signing transactions. This set of APIs will evolve over time. 

You basically develop a web version of your application, which is then integrated in an iframe inside the platform so all the Ledger Live users can discover it.

You can follow our step-by-step [Tutorial](../tutorial/introduction) to learn how to develop your first Platform App!