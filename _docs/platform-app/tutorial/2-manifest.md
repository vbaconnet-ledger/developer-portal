---
title: Manifest
subtitle:
tags: []
layout: doc
---

Now that you have created your Live App, let’s create the associated manifest.

A manifest is a `.json` file providing information about your Live App to Ledger Live.

Create a `manifest.json` file at the root of your project and paste in the following content:

```json
{
  "id": "tuto-app",
  "name": "Tuto app",
  "url": "http://localhost:3000",
  "homepageUrl": "https://developers.ledger.com/",
  "icon": "",
  "platform": "all",
  "apiVersion": "0.0.1",
  "manifestVersion": "1",
  "branch": "debug",
  "categories": ["tools"],
  "currencies": "*",
  "content": {
    "shortDescription": {
      "en": "Simple boilerplate Tuto Live App. Use at your own risk."
    },
    "description": {
      "en": "Simple boilerplate Tuto Live App. Use at your own risk."
    }
  },
  "permissions": [
    {
      "method": "*"
    }
  ],
  "domains": ["https://*"]
}
```

We will not go into much details about each field in this tutorial. Check out the [Manifest](../../reference/manifest) article in the Reference section for more information.

For this tutorial we will only focus on the `url` field. It must match the url of your Live App. Here it is set at `http://localhost:3000` because we are currently running our app in local for development and test purposes.

Now that we have our Live App manifest, we need to import it into Ledger Live, this is what we will see in the next section.

