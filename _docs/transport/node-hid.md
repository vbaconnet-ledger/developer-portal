---
title: webhid
subtitle:
tags: []
author:
layout: doc_tr
---

#### Sections in this article
{:.no_toc}
* TOC
{:toc}

## TransportNodeHid

### Examples

```js
import TransportNodeHid from "@ledgerhq/hw-transport-node-hid";
...
TransportNodeHid.create().then(transport => ...)
```

### isSupported

### list

### setListenDevicesDebounce

#### Parameters

-   `delay` **[number](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Number)**

### setListenDevicesPollingSkip

#### Parameters

-   `conditionToSkip` **function (): [boolean](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Boolean)**

### setListenDevicesDebug

### listen

#### Parameters

-   `observer` **Observer&lt;DescriptorEvent&lt;([string](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/String) | null | [undefined](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/undefined))>>**

Returns **Subscription**

### open

if path="" is not provided, the library will take the first device

#### Parameters

-   `path` **([string](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/String) | null | [undefined](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/undefined))**
