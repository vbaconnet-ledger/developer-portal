---
title: Test
subtitle:
tags: []
category: Platform Application
layout: doc_pa
---

#### Sections in this article
{:.no_toc}
* TOC
{:toc}

## Prerequisites

 Before testing your app, make sure you have completed the following requirements:
 - Download and install [Ledger Live Desktop](https://www.ledger.com/ledger-live/download).
 - Enable Ledger Live [Developer Mode](../../reference/developer-mode).
 - Write your [Manifest file](../../reference/manifest).

## Test your Platform App in Ledger Live

In the Ledger Live developer tab, you will need to enable the option **Enable Platform dev tools**. This will allow you to open a browser-like developer tools window to inspect your application.

Then click on **Browse** next to **Add a local app** and import your application's [Manifest file](../../reference/manifest).

![Browse button](../../images/tuto-3-3-browse.png "Browse button")

Your application should now appear in a new row below. 
Click **Open** to open your application inside Ledger Live.

![Add local App](../../images/tuto-3-4-local-app.png "Add local app")

You are now able to locally and autonomously test your application integration inside Ledger Live.

You can refer to the [Tutorial](../../tutorial/4-test) for more details.
