---
title: B - Writing the Manifest
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


If you have followed instructions on the previous page, you should now be ready to interact with the Dapp directly from Ledger Live interface to make sure all the basic features work as expected.

To test and integrate your application, you first need to write your application Manifest file.
This file must contain some mandatory information, such as the app package names, the components, the permissions needed, the hardware and software features, etc.

Check and if necessary edit your manifest file as described [below](#example-of-manifest-json-format-for-the-lido-application).

To load your DApp locally, [Unlock the Developer mode](../developer-mode/)in Ledger Live and [add a local app](../developer-mode/#add-a-local-app).

### Example of Manifest (JSON format) for the “Lido” application:

```json
{
    "id": "lido",
    "name": "Lido",
    "url": "https://ledger-live-platform-apps.vercel.app/app/dapp-browser?dappName=Lido&nanoApp=Lido&url=https%3A%2F%2Fstake.lido.fi%2F%3Fref%3D0x558247e365be655f9144e1a0140D793984372Ef3%26embed%3Dtrue",
    "homepageUrl": "https://lido.fi/",
    "icon": "https://cdn.live.ledger.com/icons/platform/lido.png",
    "platform": "all",
    "apiVersion": "0.0.1",
    "manifestVersion": "1",
    "branch": "stable",
    "categories": [
      "staking",
      "defi"
    ],
    "currencies": [
      "ethereum"
    ],
    "content": {
      "shortDescription": {
        "en": "Stake your ETH with Lido to earn daily staking rewards."
      },
      "description": {
        "en": "Stake your ETH with Lido to earn daily staking rewards."
      }
    },
    "permissions": [],
    "domains": [
      "https://*"
    ]
  }
```

Here is the list of the mandatory fields required in your Manifest file:
- `id`: the identification of your application. Must be in lowercase.
Type: string.
- `name`: the name of your application ("Lido" in this example).
Type: string.
- `url`: the URL of your application. Must be expressed in the following way "https://ledger-live-platform-apps.vercel.app/app/dapp-browser?dappName=Lido&nanoApp=Lido&url=YOUR_URL", with YOUR_URL encoded with a tool like [this one](https://meyerweb.com/eric/tools/dencoder/).
Type: string.
- `homepageUrl`: the homepage of your service. For instance, "https://www.google.fr/"
Type: string.
- `icon`: a link to the icon displayed in the Ledger Live Discover section. Will be hosted on Ledger CDN before being released in production.
Type: url.
- `platform`: to set the platform (desktop, mobile, iOS, Android) on which your service is available. By default, you should set the value to "all".
Type: string.
- `apiVersion`: the API version, by default "0.0.1".
Type: string.
- `manifestVersion`: the manifest version. By default should be "1".
Type: string.
- `branch`: the specific branch used by Ledger to deploy the changes. Can take the values stable | experimental | debug | soon. By default, you should set it to  "stable". The value “soon” will mark your app as “Coming soon” and it won’t be usable.
Type: string.
- `categories`: a JSON array of metadata information about your application. For instance : ["staking","defi" ]
Type: list(string).
- `currencies`: a JSON array of the currency/network being used by your application. For instance ["ethereum",”polygon”]
Type: list(string).
- `content`: a description of your service. It will be displayed on the entry card of your application.
Type: l18n strings.
- `permissions`:
- `domains`:

