---
title: Introduction
subtitle: Ensuring your app passes the security review
tags: []
author:
layout: doc_na
---


Developing applications for Ledger devices is an intricate process. The security of the user funds relies on the fact that the application works in a correct and secure manner and that potential attackers cannot misuse it to extract private data and/or sign requests which are not authorized by the user. The app should guard against such attacks because they have a very low entry point -- a Ledger device attached to a compromised host might be a victim of the attacker's program sending invalid/non-standard requests to the device.

<!--  -->
{% include alert.html style="warning" text="This guide is meant to be a summary of all important aspects of Ledger Apps security and it shall be read by developers before developing an app for Ledger." %}
<!--  -->
