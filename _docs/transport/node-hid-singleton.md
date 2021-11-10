---
title: Node Hid Singleton
subtitle:
tags: [communication, transport, wallet, companion, package]
category: Connect a wallet
author:
toc: true
layout: doc_tr
---

**This page is an extract from the repository**

## Install the package

`yarn add @ledgerhq/hw-transport-node-singleton`

This package uses `node-hid` and `usb-detection`. Keep transport opened and re-use it as a singleton, one device at a time on a computer but more robust implementation.

<!--  -->
{% include alert.html style="tip" text='It is recommended not to use <code>hw-transport-node-hid\*</code> transport in the "renderer thread" but instead to spawn a dedicated thread. Otherwise the USB connection is blocking the thread and can cause performance issues' %}
<!--  -->

## API

### TransportNodeHidSingleton

#### Extends TransportNodeHidNoEvents

#### Examples

```javascript
import TransportNodeHid from "@ledgerhq/hw-transport-node-hid-singleton";
...
TransportNodeHid.create().then(transport => ...)
```

#### isSupported

#### list

#### listen

**Parameters**

-   `observer` **Observer&lt;DescriptorEvent&lt;any>>**

Returns **Subscription**

#### disconnect

globally disconnect the transport singleton

#### open

if path="" is not provided, the library will take the first device

Returns **[Promise](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Promise)&lt;[TransportNodeHidSingleton](#transportnodehidsingleton)>**

