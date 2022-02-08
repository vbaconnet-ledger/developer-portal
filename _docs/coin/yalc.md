---
title: Linking local packages with yalc
subtitle:
tags: [Ledger Live Common, yalc, local packages]
category: Blockchain Support
author:
toc: true
layout: doc
---

## Why use yalc?

When you work on several projects that have dependencies between each other.

Using yalc, you can use a local copy of a dependency instead of the one coming from NPM. This allows you to quickly test modifications on the dependency without having to publish a new version on NPM every time.

You may need to override some package with a local version (like `@ledgerhq/cryptoassets` or `@ledgerhq/hw-app-mycoin`) if your js bindings are not published yet.


## How to use yalc?

Install it globally:

`npm i yalc -g  or  yarn global add yalc`

On the repo that is the dependency (eg. @ledgerhq/cryptoassets):

```sh
yarn install
yalc publish --push
```

On the repo that has the dependency (eg. @ledgerhq/ledger-live-common):

```sh
yalc add @ledgerhq/cryptoassets # Notice the difference in the package.json file after this command
yarn install
```

Since your build would be used locally during developemnt, you may also want those dependencies to be local and included in the published local package.
Ensure the `.yalc` directory is included then in the package.json:

`package.json`:

```ts
  "files": [
    ...,
    ".yalc"
  ],
```

To stop using your local dependency repo, and revert to the original one:

`yalc remove @ledgerhq/cryptoassets`

Sometimes yalc’s cache get corrupted, (on Linux) you can clean it with:

`rm -rfv ~/.yalc/{,.}`

How to see all your current uses of yalc:

`yalc installations show`


<!--  -->
{% include alert.html style="warning" text="Do not commit changes due to the usage of <code>yalc</code> as it may result in wrong behaviour." %}
<!--  -->