---
title: Setup
subtitle:
tags: []
layout: doc
---

The first step is to create a new project using the `live-app-sdk`. We will use the [`live-app` Create React App (CRA) template](https://www.npmjs.com/package/@ledgerhq/cra-template-live-app) to bootstrap a React TypeScript web app initialized with the `live-app-sdk`.

<!--  -->
{% include alert.html style="tip" text="For more information regarding CRA, refer to <a href ='https://create-react-app.dev/docs/getting-started'>the project's documentation</a>." %}
<!--  -->

Run the following command in your terminal:

```sh
yarn create react-app live-app-tuto --template @ledgerhq/live-app
```

Once the `live-app-tuto` React App is created, start running it with:

```sh
cd live-app-tuto
yarn start
```

The app now runs in development mode. If you go to `http://localhost:3000` on a web browser you should see the following screen:

![demo-app](../../images/tuto-1-1-demo-app.png "Demo app screenshot")

This app is a basic CRA web app. If you are familiar with React and CRA, you will notice that there is an extra **Request account** button at the bottom. If you go and have a look at the `src/App.tsx` file, you will notice the use of the `requestAccount` function from `@ledgerhq/live-app-sdk`, called when clicking on this button.

If you click on the **Request account** button, you will see that nothing happens. This is normal because Ledger Live needs to be aware of your Live App to communicate. This is done through a `manifest` file that we will create in the next section.
