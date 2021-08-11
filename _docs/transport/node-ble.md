---
title: Protocols
subtitle:
tags: []
author:
layout: doc_tr
---

#### Sections in this article
{:.no_toc}
* TOC
{:toc}

## Implementation

### Parameters

-   `device` **Device**
-   `writeCharacteristic` **any**
-   `notifyObservable` **Observable&lt;[Buffer](https://nodejs.org/api/buffer.html)>**
-   `deviceModel` **DeviceModel**

### Examples

```js
import BluetoothTransport from "@ledgerhq/hw-transport-node-ble";
```

### exchange

communicate with a BLE transport

#### Parameters

-   `apdu` **[Buffer](https://nodejs.org/api/buffer.html)**

Returns **[Promise](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Promise)&lt;[Buffer](https://nodejs.org/api/buffer.html)>**

### isSupported

Returns **[Promise](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Promise)&lt;[boolean](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Boolean)>**

### availability

### listen

Scan for bluetooth Ledger devices

#### Parameters

-   `observer` **any**

### open

Open a BLE transport

#### Parameters

-   `deviceOrId` **any**

### disconnect

Globally disconnect a BLE device by its ID

#### Parameters

-   `id` **any**
