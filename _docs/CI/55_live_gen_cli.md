---
title: General CLI Checklist - User tests
subtitle:
tags: []
author:
layout: doc_ci
---

#### Sections in this article
{:.no_toc}
* TOC
{:toc}

# General CLI Checklist - User tests

<!--
No toc originally here
-->

---

- Create a new account
- Retrive the receive address of new account
- Get balance of the account (before and after sending funds to it)
- Handle all user-level errors
- Synchronize account
- Retrieve operations
- Performance test. E.g., Synch acoount holding 1000 operations in less than 30s
- Display the details of an operation, RX TX addresses, Hash, Date and Time, Fees.

---

# How-to test

[Sync](../58_live_common_test_framework/#sync-accounts)


[Send](../58_live_common_test_framework/#send-get-transaction-status)

