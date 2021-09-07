---
title: Development practices
subtitle: Ensuring your app passes the security review
tags: []
category: Nano Application
toc: true
author:
layout: doc_na
---

Whenever writing a secure Ledger app, the following advice should not be taken lightly.

## Code reviews

We encourage all written code to be peer-reviewed. Importantly, the review should have at least:

1.  One reviewer proficient in C and knowing C security weaknesses.
2.  One reviewer with a "hacker's mind" (looking at the code from the perspective of an attacker).

## Security audits

We encourage third-party security reviews. Note, however, that solid review takes time and a short review might yield a false sense of security (especially if the reviewing party does not have an extensive knowledge of Ledger code specifics).

## Best practices

In order to ease security reviews and maintenance, the Ledger Security Team requires these development best practices to be met:

- The app must build with no warnings using the container image intended for that purpose, [Ledger App Builder](https://github.com/LedgerHQ/ledger-app-builder).
- The scan-build utility from clang must be used to analyze the whole project and produce no errors.
- Units tests must be present, preferably in the `tests/` folder and relying on the [cmocka](https://cmocka.org/) unit testing framework.
- Functional tests must be present. They should allow APDU testing thanks to the speculos emulator (or a real device). We recommend using [pytest](https://pytest.org) as a testing framework if tests are written in Python.

These best practices must be automated using GitHub actions to achieve continuous integration. The [GitHub workflow](https://github.com/LedgerHQ/app-xrp/blob/master/.github/workflows/ci-workflow.yml) of the XRP app acts as a reference.

On top of that, we also encourage the following practices:

- Linting helps improving code quality and ensuring consistent coding style and resolving basic coding errors.
- Developing a fuzzer thanks to [libFuzzer](https://llvm.org/docs/LibFuzzer.html).
- Integration with the Coverity static code analysis tool helps finding security issues and software defects.

They should also be included in the GitHub workflow.
