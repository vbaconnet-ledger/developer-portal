---
title: Ledger Live Developer mode
subtitle:
tags: []
category: Dapp Integration
author:
layout: doc_da
---

#### Sections in this article
{:.no_toc}
* TOC
{:toc}

To activate the Developer mode in Ledger Live, go to the **Settings/About** section, and click 10 times on the **Ledger Live version**. See the image below.

This will enable the Developer tab.

![screenshot of the Developer tab](../images/developer_mode_tab.png "Developer tab")

 <!--  -->
{% include alert.html style="success" text="This feature is available for Ledger Live version 2.32 and above only." %}
<!--  -->

This new section will give you access to the following content :

- **Allow debug apps**: Display and enable “debug”-tagged platform apps.
- **Allow experimental apps**: Display and enable experimental tagged platform apps.
- **Set the catalog provider**: Switch between multiple platform app sources (Production of Staging).
- **Enable platform dev tools**: Enable platform app dev tools window.
- **Add a local app**: Browse local files and add a local app using a local manifest.

We will dive into each section to describe how they work.

## Enabling debug apps

When enabled, this setting will display and allow “debug”-tagged platform apps.
The first “debug”-tagged platform app displayed in the Discover section is the Debugger. This app is designed by Ledger to allow you to understand and test how the API works.

## Allow experimental apps

When enabled, this setting will display and allow “experimental”-tagged platform apps.
Until an application is reviewed and approved by Ledger, it must stay experimental.

## Set the catalog provider

The catalog provider is a variable used to define the list of applications being displayed in the discover section. Ledger uses two lists of applications, those in staging (currently being tested), and those in production (already validated, and usually available to all users).

## Enable Platform dev tools

This setting will enable the platform apps dev tools window, which can be useful when debugging an application.

![screenshot of the Platform dev tools](../images/platform_dev_tools.png "Developer tools window")

## Add a local app

Use this option to browse local files and add a local app using a local manifest.
Applications can be tested locally.
To display an application in the Discover section, the corresponding manifest file must be loaded.
