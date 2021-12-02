---
title: Introduction
subtitle:
tags: [publish an app, publish, release app, release, release process]
category: Nano Application
toc: true
author:
layout: doc
---


## Release and deliverables

### Release processes

There are different release levels for a given application:

-   **Public release** (official Ledger support)
-   **Developer mode release** (experimental support)
    -   Developer mode with an **audited** application
    -   Developer mode with an **unaudited** application

In any case, Ledger's decision to publish a third party application may not be considered as any form of partnership or endorsement.

As long as an application isn't audited by Ledger security team, the message `Pending Ledger Review` will be displayed when the application is started. The user can aknowledge and skip this warning by pressing both buttons and use the application at his own risks. As an unaudited application is considered experimental, such application will be visible **only when the developer mode settings is enabled** in Ledger Live settings.

Some applications are also visible when the developer mode setting is enabled, not because of a lack of security review, but rather because they are considered too complex to use. It can be that the mandatory compatible GUI is missing, or that the application purpose is considered too technical for the vast majority of users.

An application will be listed publicly (official Ledger support) when:

-   It passed the security audit
-   It's been tested and validated by at least someone from Ledger Customer Success Team
-   The application is compatible with a wallet app with a GUI (a CLI is not enough)
-   Ledger is ready to communicate officially about the app release (tweet, blogpost, website page update)
-   Customer support pages are available on Ledger Help Center

### Deliverables summary

-   Bolos app Release Candidate source code (preferably a git repository)
-   Companion app (binaries or package, for Windows/MacOS/Linux)
-   Adobe Illustrator templates filled with your icons (see [Design Guidelines](../design-requirements))
-   Contact information (Name, Surname, Legal Entity, URL, email address, phone number)
-   Link to tutorial hosted on third party website (see [Third Party Applications Support](../support-maintenance-requirements))
-   Video of your application running on the Ledger device
    -   Verify public address on the Ledger device
    -   Display transaction information before allowing signature
    -   Reject a transaction on the Ledger device
    -   Sign a transaction on the Ledger device


### Release processes and deliverables overview

<!-- ------------- Image ------------- -->
<!-- --------------------------------- -->
<figure>
<img src="../images/listing-program.png" class="align-center" alt="Ledger listing program" />
</figure>

