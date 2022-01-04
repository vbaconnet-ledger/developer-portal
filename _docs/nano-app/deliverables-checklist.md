---
title: Submission form Content
subtitle:
tags: [publish an app, publish, release app, release, release process]
category: Nano Application
toc: true
author:
layout: doc
---

## Introduction

The submission of a Nano App is completed through a form. This will ask you for all the various items required together in one place.

Below, you will find the details of the form content, per section. You can use this page as a checklist to gather everything that is required.

Make sure you have followed our documentation and guidelines ([see declaration](#self-declaration)). 


## Section details

### 1 - General information

- Nano App name
- Legal Entity name
- Postal address
- Email address

### 2 - Nano app and Companion Wallet

- Nano App source code (GitHub repository),   
- and its Companion Wallet: either  
  - a link to the CLI repository, or
  - a link to the GUI running on Windows/MacOS/Linux (mandatory for Public release)

### 3 - Documentation

- Link to a Google doc tutorial about how to install and use your app (see [Third Party Applications Support](../support-maintenance-requirements))
    - The doc must include the link to the published tutorial hosted on third party website 

### 4 - Support

- Main support contact (mail address, Slack/Reddit/Telegram/Discord communities)

### 5 - Nano app specifications

- Two icons for the Nano and for the Ledger Live Manager in Adobe Illustrator format (see [Design Guidelines](../design-requirements))
- [UI Flow](../nano-app/ui-flow-video/#ui-flow) of how your application works
- [Video](../nano-app/ui-flow-video/#video) of your application running on the Ledger device



### 6 - Self Declaration

#### Security

**I certify that**:  
- I have read the [security guidelines](../secure-app)  
- I have used the Clang Static Analyzer in my GitHub workflow 
- All vulnerabilities have been detected and corrected

#### Test

**I certify that**:  
- My app repository has a test folder that contains the Unit Tests list and the functional Tests
- The App has been fully tested with a companion wallet (CLI or GUI)

#### Compliance

**I certify that**:  
- I have read the [coding guidelines](../display-management)
- I have read the [marketing page](../marketing-requirements) 
- I have read the [support and maintenance page](../support-maintenance-requirements)
- I have read and agree with information laid out the [warranty and liability disclaimer](../warranty-disclaimer)

