---
title: Transport implementation
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

## Transport calls

The transport calls are essentially:

- `transport.listen: (observer)=>Subscription`
- `transport.open: (descriptor)=>Promise<Transport>`
- `transport.exchange(apdu: Buffer): Promise<Buffer>`
- `transport.close()`

and some derivates:

- `transport.create(): Promise<Transport>`: make use of `listen` and `open` for the most simple scenario.
- `transport.send(cla, ins, p1, p2, data): Promise<Buffer>`: a small abstraction of `exchange`


<!--  -->
{% include alert.html style="success" text="All these transports implement a generic interface exposed by <code><a href='https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport'>@ledgerhq/hw-transport</a></code>.
" %}
<!--  -->


<!--  -->
{% include alert.html style="success" text="<a href='https://en.wikipedia.org/wiki/Smart_card_application_protocol_data_unit'>APDU</a> is the encoding primitive for all binary exchange with the devices. (it comes from smart card industry)" %}
<!--  -->


