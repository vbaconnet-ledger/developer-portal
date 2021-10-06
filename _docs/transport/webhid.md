---
title: Web HID (draft)
subtitle:
tags: []
category:
author:
toc: true
layout: doc_tr
---



### FAQ: "DOM Exception" is triggered when creating the transport

The transport functions `create()` and `listen()` must be called in the context of a user interaction (like a **"click"** event), otherwise it fails with DOM Exception. This is by WebUSB design. You also must run on HTTPS.

### How to use this transport?

Please check [hw-transport-webusb documentation](../hw-transport-webusb) because it is very similar paradigm.

## Install the package

`yarn add @ledgerhq/hw-transport-webhid`

## Implementation

### Parameters

-   `device` **HIDDevice**

### Examples

```js
import TransportWebHID from "@ledgerhq/hw-transport-webhid";
...
TransportWebHID.create().then(transport => ...)
```

### close

Release the transport device

Returns **[Promise](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Promise)&lt;void>**

### exchange

Exchange with the device using APDU protocol.

**Parameters**

-   `apdu` **[Buffer](https://nodejs.org/api/buffer.html)**

Returns **[Promise](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Promise)&lt;[Buffer](https://nodejs.org/api/buffer.html)>** a promise of apdu response

### isSupported

Check if WebUSB transport is supported.

### list

List the WebUSB devices that was previously authorized by the user.

### listen

Actively listen to WebUSB devices and emit ONE device
that was either accepted before, if not it will trigger the native permission UI.

Important: it must be called in the context of a UI click!

**Parameters**

-   `observer` **Observer&lt;DescriptorEvent&lt;HIDDevice>>**

Returns **Subscription**

### request

Similar to create() except it will always display the device permission (even if some devices are already accepted).

### openConnected

Similar to create() except it will never display the device permission (it returns a Promise&lt;?Transport>, null if it fails to find a device).

### open

Create a Ledger transport with a HIDDevice

**Parameters**

-   `device` **HIDDevice**
