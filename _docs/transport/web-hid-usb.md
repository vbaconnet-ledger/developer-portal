---
title: Web USB/HID
subtitle:
tags: []
category: Connect a wallet
author:
toc: true
layout: doc_tr
---

In this section we will guide you through the creation of a little application. This application will connect to your Ledger to display the address of your account (eg. bitcoin account, ethereum account).

## Prerequisites
To start with the Web Integration go through the <a href="../prerequisites">Prerequisites</a> before diving into the implementation.
## Web App USB and HID

The implementation of a web application which use the USB or HID protocol is exactly the same. The only difference is that instead of using the <a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-webusb">@ledgerhq/hw-transport-webusb</a> you will use <a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-webhid">@ledgerhq/hw-transport-webhid</a> and vise versa.

It is time to implement the application and test it. First open a terminal and create a new folder, during this tutorial the folder will be named “examples-web-hid-usb”.
Run the following command to create the folder and go into it:

```console
mkdir examples-web-hid
cd examples-web-hid
```

Then, initialise the project by running the following:

```console
npm init
```

During the initialization multiple questions will be printed on the terminal, if you don’t know what to do always press enter till the end. By always pressing enter all the default responses will be selected.

Now that the folder is initialized, open it in an editor.
Create a folder named “src” and two files named “index.html” and “main.js” in the “src” folder.
Your folder must look like this.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="210" src="../images/folderUsbHid.png" ></div>
<!-- --------------------------------- -->


In index.html copy paste the following code :
#### index.html
```html
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <title>My First Ledger App</title>
    <script type="module" src="main.js"></script>
  </head>
  <body id="main">

  </body>
</html>
```


In main.js copy paste the following code :
#### main.js
```javascript
import "babel-polyfill";
import { listen } from "@ledgerhq/logs";
import AppBtc from "@ledgerhq/hw-app-btc";

// Keep this import if you want to use a Ledger Nano S/X with the USB protocol and delete the @ledgerhq/hw-transport-webhid import
import TransportWebUSB from "@ledgerhq/hw-transport-webusb";
// Keep this import if you want to use a Ledger Nano S/X with the HID protocol and delete the @ledgerhq/hw-transport-webusb import
import TransportWebHID from "@ledgerhq/hw-transport-webhid";

//Display the header in the div which has the ID "main"
const initial = "<h1>Connect your Ledger and open Bitcoin app. Click anywhere to start...</h1>";
const $main = document.getElementById("main");
$main.innerHTML = initial;


document.body.addEventListener("click", async () => {
  $main.innerHTML = initial;
  try {

    //trying to connect to your Ledger device with USB protocol
    const transport = await TransportWebUSB.create();

    //trying to connect to your Ledger device with HID protocol
    const transport = await TransportWebHID.create();

    //listen to the events which is sent by the Ledger packages in order to debug the app
    listen(log => console.log(log))

    //When the Ledger connected it is trying to display the bitcoin address
    const appBtc = new AppBtc(transport);
    const { bitcoinAddress } = await appBtc.getWalletPublicKey(
      "44'/0'/0'/0/0",
      { verify: false, format: "legacy"}
    );

    //Display your bitcoin address on the screen
    const h2 = document.createElement("h2");
    h2.textContent = bitcoinAddress;
    $main.innerHTML = "<h1>Your first Bitcoin address:</h1>";
    $main.appendChild(h2);

    //Display the address on the Ledger device and ask to verify the address
    await appBtc.getWalletPublicKey("44'/0'/0'/0/0", {format:"legacy", verify: true});
  } catch (e) {

    //Catch any error thrown and displays it on the screen
    const $err = document.createElement("code");
    $err.style.color = "#f66";
    $err.textContent = String(e.message || e);
    $main.appendChild($err);
  }
});
```

Now that the code is paste, the dependencies of the code have to be installed.
To do that install the following package by running the command :

- Install <a href="https://babeljs.io/docs/en/babel-polyfill">babel-polyfill</a>:
```console
npm install --save babel-polyfill
```
- Install the Ledger package <a href="https://www.npmjs.com/package/@ledgerhq/logs">@ledgerhq/logs</a> which provide you the log of all the error from your connexion with your Ledger device that may appear when developing:
```console
npm install --save @ledgerhq/logs
```
- Install <a href="https://parceljs.org/">parcel</a>, it is a build tool which will help you package your application to run it in the browser:
```console
npm install --save-dev parcel
```
- Install <a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-app-btc">@ledgerhq/hw-app-btc</a>, it is a package that will help you ask your Ledger Nano to access the bitcoin address:
```console
npm install --save @ledgerhq/hw-app-btc
```

Then depending on your choice install one of the corresponding packages:
- Install the Ledger package <a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-webhid">@ledgerhq/hw-transport-webhid</a> which provide you with all the methods to interact with  your Ledger with a HID connexion:
    - `npm install --save @ledgerhq/hw-transport-webhid`
- Install the Ledger package <a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-webusb">@ledgerhq/hw-transport-webusb</a> which provide you with all the methods to interact with  your Ledger with a USB connexion:
    - `npm install --save @ledgerhq/hw-transport-webusb`

Now that the dependencies are installed you can find them in the “package.js”.
This is how your “package.json” has to look like.



#### package.json
```javascript
{
  "name": "examples-web-hid-usb",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "dependencies": {
    "@ledgerhq/hw-app-btc": "^6.12.1",
    "@ledgerhq/hw-transport-webhid": "^6.11.2", // You are either the webhid import or the webusb import
    "@ledgerhq/hw-transport-webusb": "^6.11.2", // But not both
    "@ledgerhq/logs": "^6.10.0",
    "babel-polyfill": "^6.26.0",
  },
  "devDependencies": {
      "parcel": "^2.0.0"
  },
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1", // You can remove this script, it will be removed
  },
  "author": "",
  "license": "ISC"
}
```

A little modification have to be made in the “package.json” : `“main”: “index.js”` => `“source”: “src/index.html”`.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/packageJsonModify.png" ></div>
<!-- --------------------------------- -->

Add some script :
- `“build”: “parcel build”`
- `“start”: “parcel”`
#### package.json
```javascript
{
  "name": "examples-web-hid-usb",
  "version": "1.0.0",
  "description": "",
  "source": "src/index.html",
  "dependencies": {
    "@ledgerhq/hw-app-btc": "^6.12.1",
    "@ledgerhq/hw-transport-webhid": "^6.11.2", // You are either the webhid import or the webusb import
    "@ledgerhq/hw-transport-webusb": "^6.11.2", // But not both
    "@ledgerhq/logs": "^6.10.0",
    "babel-polyfill": "^6.26.0",
  },
  "devDependencies": {
    "parcel": "^2.0.0"
  },
  "scripts": {
    "build": "parcel build", //Add this line
    "start": "parcel"        //Add this line
  },
  "author": "",
  "license": "ISC"
}
```

## Web App Test

Now that the Setup is finished, the app has to be built in order to be displayed.
Start the developpement server:

```console
npm run start
```

Now the application is up and running. Open the browser and go to <a href="http://localhost:1234">“localhost:1234”</a>, it will display :

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/webapp1.png" ></div>
<!-- --------------------------------- -->

Before clicking on the text connect your ledger in the USB port, unlock it and run the bitcoin application.
The steps is described below.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="420" src="../images/ledgerCodePin.jpg" >
<img width="420" src="../images/ledgerBtc.jpg" >
<img width="420" src="../images/ledgerReady.jpg" >
</div>
<!-- --------------------------------- -->

Now you can click on the text and a popup will be prompt. Choose your Ledger device and click connexion

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/webapp2.png" ></div>
<!-- --------------------------------- -->

Then if all goes well you must have the bitcoin address you just create [previously](#prerequisites)
<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/webapp3.png" ></div>
<!-- --------------------------------- -->

Congratulations you have successfully built your first application connected with Ledger !!!

## Web USB and Web HID on Android chrome

Android chrome support the use of the Ledger device by HID and USB.
In mobile phone only android can support the web application.
Moreover, on android just chrome is able to support the web application.

To test your application on android, a little change has to be made. Just add the “--https” flag in your start script, and run the script.

#### package.json
```javascript
{
  "name": "examples-web-hid-usb",
  "version": "1.0.0",
  "description": "",
  "source": "src/index.html",
  "dependencies": {
    "@ledgerhq/hw-app-btc": "^6.12.1",
    "@ledgerhq/hw-transport-webhid": "^6.11.2", // You are either the webhid import or the webusb import
    "@ledgerhq/hw-transport-webusb": "^6.11.2", // But not the both
    "@ledgerhq/logs": "^6.10.0",
    "babel-polyfill": "^6.26.0",
  },
  "devDependencies": {
    "parcel": "^2.0.0"
  },
  "scripts": {
    "build": "parcel build",
    "start": "parcel --https"        //Change this line
  },
  "author": "",
  "license": "ISC"
}
```

The browser will ask you that the website is malicious, to continue click on “advanced settings” and then on “continue to the localhost site”.
Now you can test to connect your Ledger device on your android just like the [previous step](#web-app-test).



