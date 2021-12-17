---
title: Documentation requirements
subtitle: Ensuring your documentation is well documented
tags: [writing documentation, nano app documentation]
category: Nano Application
toc: true
author:
layout: doc
---



## Introduction

It is required for third party teams to provide and host a complete tutorial that will guide users before the app is released on the Ledger Manager. This document presents guidelines for writing such documentation and it should be followed very carefully, as part of the app integration process.

<!--  -->
{% include alert.html style="important" text="Without approval of your documentation, your app will not be released." %}
<!--  -->

### Documentation by Ledger

Just for your information, [Ledger Customer Support](https://support.ledgerwallet.com/hc/en-us) will publish [a brief article](https://support.ledgerwallet.com/hc/en-us/articles/360007583514-Ontology-ONT-) based on your documentation. 


## Content guidelines

You will write and host an article ([example](https://blog.cyberrepublic.org/2020/06/15/how-to-use-your-ledger-device-with-the-elastos-light-wallet/)) that describes:
- Short introduction: what the app and service do, what crypto assets they can manage, why to use a Ledger device, where to get support.
- Requirements: What’s needed before starting.
- Installation instructions: How to install the app using Ledger Live.
- Setup instructions:
    - For a web app: how to connect the Ledger device.
    - For installable app: how to download and install it, how to connect to it.
- Where to view account balance.
- How to receive crypto assets
    - Document all the steps.
    - Explicitly instruct to verify receive addresses on the device.
- How to send crypto assets
    - Document all the steps and form fields to fill.
    - Explicitly instruct to verify transaction details on the device display, before confirming and signing it.
- Support: where to get help if needed (mail address, Slack/Reddit/Telegram communities).

## Style guidelines

- Write short and concise sentences.
- Write clear section titles.
- Give actionable instructions: Click this, enter that. Verify this, confirm that.
- Use text formatting for UI text, example: Your device displays BTC app installed.
- Screenshots can support the instructions if the user interface is complicated.
- **Referring to the hardware wallet**: Ledger Nano S, Ledger Nano S device, device, hardware wallet, Ledger hardware wallet, Ledger device.
<i>Strictly avoid: wallet, Ledger wallet, a Ledger</i>.
- **Referring to crypto assets**: name, ticker, crypto asset(s), coin(s), cryptocurrency.
<i>Please avoid: money</i>.
- Be sure to check [this article](https://blog.cyberrepublic.org/2020/06/15/how-to-use-your-ledger-device-with-the-elastos-light-wallet/) for an example.
