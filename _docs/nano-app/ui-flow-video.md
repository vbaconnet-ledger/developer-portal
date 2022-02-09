---
title: Demo
subtitle:
tags: [nano app, nano application, applications, deliverables]
category: Nano Application
toc: true
author:
layout: doc
---

## Requirement Summary

|    Release Type       |          Unaudited     |          Audited       |          Public        |
|-----------------------|------------------------|------------------------|------------------------|
|  This requirement is: |    <b>Mandatory</b>    |   <b>Mandatory</b>     |   <b>Mandatory</b>     |

You are required to submit a demo of your Nano App in the form of a UI flow (file) and a video (URL) as described below.



## UI Flow

<!-- ------------- Image ------------- -->
<a href="../images/eth-flow.png">
	<img width="395" src="../images/eth-flow.png" style="float:right">
</a>
<!-- --------------------------------- -->

Please create your flow following the given [Ethereum example](../docs/eth-flow.pdf).  

It contains the basic functions App information, Receive and send operations.  

You are free to choose the format of your own document (pdf, jpg, tif or Google doc).  

Include all the operations that your Nano app contains.  

Try to apply the same kind of flow design for all of them.  


### Blind signing

In case you need the users to blind sign transactions, you will need to include the blind signing flows.

- When blind signing is not enabled:

{: .uk-text-center}
[![](../images/blind-signing-not-enabled.png){:width="200"}](../images/blind-signing-not-enabled.png)

- How to modify the blind signing settings:

{: .uk-text-center}
[![](../images/blind-signing-enabled.png){:width="300"}](../images/blind-signing-enabled.png)


- When blind signing is enabled:

{: .uk-text-center}
[![](../images/blind-signing-settings.png){:width="300"}](../images/blind-signing-settings.png)


## Video

Please create your video using the example given.  

<video controls width="395" style="float:right; padding-top:60px;" muted preload='none' poster='../images/ledger-submission.png'><source src="../../videos/ledger-submission.mp4" type='video/mp4'></video><br>

On the video demo you must show how to: 
- Verify a public address on the Ledger device
- Display the transaction information before allowing the signature
- Reject a transaction on the Ledger device
- Sign a transaction on the Ledger device
- Allow blind signing (if applicable)
- Sign a transaction with blind signing (if applicable)

