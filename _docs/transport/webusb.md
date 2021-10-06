---
title: WebUSB
subtitle:
tags: [communication, transport, wallet, companion, package]
category: Connect a wallet application
author:
toc: true
layout: doc_tr
---

### FAQ: "DOM Exception" is triggered when creating the transport

The transport functions `create()` and `listen()` must be called in the context of an user interaction (like a **"click"** event), otherwise it fails with DOM Exception. This is by WebUSB design. You also must run on HTTPS.

### How to use this transport regarding WebUSB paradigm?

In WebUSB, we have a "permission native" modal that appears when we need to "request" a device. This is required at-least-once for the user to accept, and then we can open the transport without triggering this modal. However, in both cases, it must happen in context of a click like explain above. Our current implementation tradeoff is to abstract this out and only trigger the permission modal if no device are listed. This might change in the future.

In term of UX, there are two classical usecases:

1.  you only need the device at key times, like once to get the address. once to sign a transaction,...
2.  your app lifecycle requires that you need to access the device at the beginning and/or at any time (like you want to ping with getAddress to get the wallet address)

in (1) case, you can just do your logic in each button (Get Address / Sign Transaction) time (create it, do the logic, close it).
in (2) case, you will need to have a Connect button that appear when you don’t have the connection yet. and you need to hook to the “disconnect” event to potentially make the UI reflect that and require user to click again on that Connect button, because you can’t automatically `create()`/`open()` again.

### Support status

WebUSB is currently only supported on Google Chrome / Chromium.

-   In Linux, user need to install the [specific udev rules](https://raw.githubusercontent.com/LedgerHQ/udev-rules/master/add_udev_rules.sh)
-   In Mac, it should work.
-   In Windows, [WebUSB does not work out of the box](https://github.com/WICG/webusb/issues/143) but you can fix it with [Zadig](https://zadig.akeo.ie/).
-   In Android Chrome it works.

## Install the package

`yarn add @ledgerhq/hw-transport-webusb`

## Implementation


### Parameters

-   `device` **USBDevice**
-   `interfaceNumber` **[number](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Number)**

### Examples

```js
import TransportWebUSB from "@ledgerhq/hw-transport-webusb";
...
TransportWebUSB.create().then(transport => ...)
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

-   `observer` **Observer&lt;DescriptorEvent&lt;USBDevice>>**

Returns **Subscription**

### request

Similar to create() except it will always display the device permission (even if some devices are already accepted).

### openConnected

Similar to create() except it will never display the device permission (it returns a Promise&lt;?Transport>, null if it fails to find a device).

### open

Create a Ledger transport with a USBDevice

**Parameters**

-   `device` **USBDevice**

## Troubleshooting

### "DOM Exception" is triggered when creating the transport

The transport functions `create()` and `listen()` must be called in the context of an user interaction (like a **"click"** event), otherwise it fails with DOM Exception. This is by WebUSB design. You also must run on HTTPS.

### Chrome error while creating the transport

If you get the following error while creating the transport:

```bash
message: "Cannot read property 'getDevices' of undefined"
name: "TransportOpenUserCancelled"
```

You need to run a secure app and serve it via port 443, having at least a self-signed certificate working on it.

