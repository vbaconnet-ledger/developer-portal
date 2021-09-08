---
title: Node Hid Noevents
subtitle:
tags: [communication, transport, wallet, companion, package]
category: Connect a wallet application
author:
toc: true
layout: doc_tr
---



## Install the package

`yarn add @ledgerhq/hw-transport-node-noevents`

This package uses **only** `node-hid`. Does not provide USB events.

## Implementation

### Parameters

-   `device` **HID.HID**

### Examples

```javascript
import TransportNodeHid from "@ledgerhq/hw-transport-node-hid-noevents";
...
TransportNodeHid.create().then(transport => ...)
```

### exchange

Exchange with the device using APDU protocol.

**Parameters**

-   `apdu` **[Buffer](https://nodejs.org/api/buffer.html)**

Returns **[Promise](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Promise)&lt;[Buffer](https://nodejs.org/api/buffer.html)>** a promise of apdu response

### close

release the USB device.

Returns **[Promise](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Promise)&lt;void>**

### isSupported

Returns **[Promise](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Promise)&lt;[boolean](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Boolean)>**

### list

Returns **[Promise](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Promise)&lt;any>**

### listen

**Parameters**

-   `observer` **Observer&lt;DescriptorEvent&lt;any>>**

Returns **Subscription**

### open

if path="" is not provided, the library will take the first device

**Parameters**

-   `path` **([string](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/String) | null | [undefined](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/undefined))**
