---
title: Icon
tags: [Ledger Live Common, typescript, environment variables, local packages]
category: Blockchain Support
author:
toc:
layout: doc
---

Icons are usually maintained by Ledger's design team, so you must first check that <i>MyCoin</i> icon is not already added in ledger-live-common, in [src/data/icons/svg](https://github.com/LedgerHQ/ledger-live-common/tree/master/src/data/icons/svg). It contains cleaned-up versions of Cryptocurrency Icons from [cryptoicons.co](http://cryptoicons.co/), organized by ticker.

If you need to add your own, they must respect those requirements:
- Clean SVG with **only** `<path>` elements representing the crypto
- Size and viewport must be `24x24`
- Icon should be `18x18` and centered / padded
- Flat-styled, and must respect crypto color scheme (filled)
- No background or decorative shape added
- No `<g>` or `transform`, `style` attributes...

Name should be the coin's ticker (e.g. `MYC.svg`) and must not conflict with an existing coin or token.

When building ledger-live-common, a [script](https://github.com/LedgerHQ/ledger-live-common/blob/master/scripts/buildReactIcons.js) automatically converts them to React and React Native components.