---
title: Specificities
subtitle:
tags: [variant, clone]
category: Nano Application
toc: true
author:
layout: doc_na
---


## What is a Nano application clone ?


A Nano application variant, or clone, is developed when all the logic for signing transaction can be contained in the Ethereum Nano Application.

Just as for any Nano Application, you must follow our guidelines to comply Ledger's publication requirements.

## What is the process?

### Developing the application

Instead of building your application in a separate repository, you will make changes to the [Ethereum app](https://github.com/LedgerHQ/app-ethereum).
Click here to develop an [Ethereum clones](../eth-clones). More types of clone applications will be added to the documentation in the future.

### Building the application

To build the clone application, [follow these guidelines](../quickstart).
1. First run the `make` command for the Ethereum App and run `make load`
2. Run `make clean`
2. Load the Nano App clone with the name of your chain. E.g: `make load CHAIN=ambrosus`

### Publishing the application

If you want to publish a clone application, follow the process in [Publishing an application](../publish-introduction).

## Get in touch with the Ledger developer community

If you’re already signed up to the Ledger Devs Slack workspace, introduce yourself to the developer community in the #introductions channel and get help in the #support and ledgerjs channels. Otherwise, send us a request by filling [this contact form](https://developers.ledger.com/contact/).
