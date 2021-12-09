---
title: Developing and submitting a Nano app
subtitle: Find the necessary instructions to develop and submit an app for Ledger devices
tags: [development phases, develop nano app, submit an app, submission]
category: Nano Application
toc: true
author:
layout: doc
---

## User profile

#### You are new to developing Nano Applications

Please read this section entirely.

#### You already understand BOLOS and Personal Security Devices (PSDs)

You can skip the first paragraph and go to [Things to do](#things-to-do).

## Development phases

![Development phases](../images/nanoappdevphases.png)


## Things to know

### The BOLOS platform (Learn - Bolos)

BOLOS is the operating system behind all Ledger personal security devices. It provides a lightweight, open-source framework for developers to build source code portable applications that run in a secure environment.

[Learn about the BOLOS platform](../bolos-introduction)

### Personal Security Devices (Learn - PSDs)

Ledger personal security devices allows users to store cryptographic secrets and sign transactions securely and conveniently. It is important to understand how they work before coding a Nano Application.

[Learn about the personal security devices](../psd-introduction)

### Submission process

To submit your app for the Ledger Live manager, make sure that your app is ready before submitting it for review and that you have followed  our documentation.

Once your app is ready and you have made sure it follows our guidelines, you can submit it by completing a form. Make sure you thoroughly complete it as it will impact the speed of the release process.

Go to the submission form [here](https://ledger.typeform.com/to/qQSf7CVh).


## Things to do

### Get in touch with the Ledger developer community
Join [our Discord server](https://discord.gg/Ledger) and introduce yourself to the developer community in the **#introductions** channel.

### Process & Requirements
Make sure you understand the [Process](../publish-introduction/) and the [Requirements](../requirements.md)

### Set up the BOLOS development environment
In order to build or compile BOLOS applications for Ledger devices, the appropriate environment must be set up. This environment consists in an SDK and two compilers. The environment is [all set in a Docker image](../build).

### Code
[Coding](../secure-app/)Nano applications is done in C on the Blockchain Open Ledger Operating System (BOLOS).

To develop a Nano Application you will need to:
- Use Linux or a VM with Linux installed
- Set up the BOLOS environment (consisting of the Nano S or X SDK, and two compilers)

Other languages are possible (no details here).


## Contribute
If you want to improve the documentation you can the comment box at the bottom of each page, open a pull request on our repository.
