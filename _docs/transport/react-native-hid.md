---
title: React native HID
subtitle:
tags: []
category:
author:
toc: true
layout: doc_tr
---

#### Sections in this article
{:.no_toc}
* TOC
{:toc}

## Install the package

`yarn add @ledgerhq/react-native-hid`

## Implementation

### Parameters

-   `nativeId` **[number](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Number)**
-   `productId` **[number](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Number)**

### Examples

```js
import TransportHID from "@ledgerhq/react-native-hid";
...
TransportHID.create().then(transport => ...)
```

### exchange

**Parameters**

-   `apdu` **any** input value

Returns **[Promise](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Promise)&lt;any>** Promise of apdu response

### close

Close the transport

Returns **any** Promise

### isSupported

Check if the transport is supported (basically true on Android)

Returns **[Promise](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Promise)&lt;[boolean](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Boolean)>**

### list

List currently connected devices.

Returns **[Promise](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Promise)&lt;[Array](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Array)&lt;any>>** Promise of devices

### listen

Listen to ledger devices events

**Parameters**

-   `observer` **any**

Returns **any**

### open

Open a the transport with a Ledger device

**Parameters**

-   `deviceObj` **DeviceObj**
