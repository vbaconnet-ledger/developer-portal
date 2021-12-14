---
title: Introduction
subtitle:
category: Swap Providers
tags: []
toc:
layout: doc
---

As a swap provider, it is possible to integrate your service to Ledger Live and appear under the “Swap” section. By becoming a swap provider in Ledger Live, you offer security, ease and accessibility to millions of users!

There are two types of integration:
- On-chain providers can develop a Ledger Live App and are integrated for now in the “Discover” section (like [Paraswap](https://www.ledger.com/blog/more-swapping-freedom-access-paraswap-directly-through-ledger-live)). 
- Off-chain providers, on the other hand, are integrated in the “Swap” section, powered by Ledger Live backend and must provide us with a specific API.

This article explains what needs to be done from the off-chain provider’s side in order to be integrated in Ledger Live, in the “Swap” section. You will also understand the flow, and how the trade is secured between the three parties: the user’s nano device, the Ledger Live back-end and the provider. 
