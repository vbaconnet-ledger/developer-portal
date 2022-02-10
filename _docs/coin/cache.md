---
title: Cache and performance (optional)
tags: [Ledger Live Common, typescript, environment variables, local packages]
category: Blockchain Support
author:
toc: 
layout: doc
---

It is important to keep in mind that all currencies work independently and that Live Common provides a common framework to synchronize accounts with a polling strategy, and that network connectivity is not always stable and optimal.

Hence, the more cryptocurrencies Ledger Live is using, the more requests and calculations are executed, which can take time.

To avoid making the same requests several times, we recommend using a local cache in your implementation (e.g. fees estimations, some currency data to preload, etc in a `src/families/mycoin/cache.ts` file.

We have a [`src/cache.ts`](https://github.com/LedgerHQ/ledger-live-common/blob/master/src/cache.ts) helper for creating Least-Recently-Used caches anywhere if needed.

See for example the [Polkadot's cache implementation](https://github.com/LedgerHQ/ledger-live-common/blob/master/src/families/polkadot/cache.ts).

