---
title: Web USB/HID
subtitle:
tags: [transport, device, communicate, companion wallet]
category: Connect your app
author:
toc: true
layout: doc
---
## Introduction
In this section, we will guide you through the creation of an application. This application will connect to your Ledger to display the address of your account (eg. bitcoin account, ethereum account).

## Prerequisites
To start with the Web Integration go through the [Prerequisites](../prerequisites)  before diving into the implementation.
## Web App USB and HID

The implementation of a web application that use the USB or HID protocol is the same. The only difference is that instead of using the [@ledgerhq/hw-transport-webusb](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-webusb) you will use [@ledgerhq/hw-transport-webhid](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-webhid) and vise versa.

### Project Initialization
It is time to implement the application and test it. First, open a terminal and create a new folder. During this tutorial, the folder will be named “examples-web-hid-usb”.
Run the following command to create the folder and go into it:

```console
mkdir examples-web-hid
cd examples-web-hid
```

Then, initialize the project by running the following:

```console
npm init
```

During the initialization, multiple questions will be printed on the terminal, if you don’t know what to do always press enter till the end. By always pressing enter all the default responses will be selected.

Now that the folder is initialized open it in an editor.
Create a folder named “src” and two files named “index.html” and “main.js” in the “src” folder.
Your folder must look like this.

{: .center}
[![Folder USB and HID](../images/folderUsbHid.png)](../images/folderUsbHid.png){: style="border-bottom:none;"}  
*Fig. 1: Folder of the Application*

### Code Implementation

Now we will implement the code.  
In index.html copy-paste the following code :
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


In main.js copy-paste the following code :
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

    //listen to the events which are sent by the Ledger packages in order to debug the app
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
### Dependencies Installation
Now that the code is pasted, the dependencies of the code have to be installed.
To do that install the following package by running the command :

#### Install [babel-polyfill](https://babeljs.io/docs/en/babel-polyfill):
```console
npm install --save babel-polyfill
```
#### Install [@ledgerhq/logs](https://www.npmjs.com/package/@ledgerhq/logs)

This package provides you the log of all the error from your connexion with your Ledger device that may appear when developing.  
```console
npm install --save @ledgerhq/logs
```
#### Install [parcel](https://parceljs.org/)  
This package is a build tool that will help you package your application to run it in the browser.  
```console
npm install --save-dev parcel
```
#### Install [@ledgerhq/hw-app-btc](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-app-btc)  
This package will help you ask your Ledger Nano to access the bitcoin address.  
```console
npm install --save @ledgerhq/hw-app-btc
```
#### Install the Transport HID or USB package
Then depending on your choice install one of the corresponding packages:
- Install the Ledger package [@ledgerhq/hw-transport-webhid](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-webhid) which provide you with all the methods to interact with  your Ledger with an HID connexion:
    - `npm install --save @ledgerhq/hw-transport-webhid`
- Install the Ledger package [@ledgerhq/hw-transport-webusb](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-webusb) which provide you with all the methods to interact with  your Ledger with a USB connexion:
    - `npm install --save @ledgerhq/hw-transport-webusb`


#### Package.json Dependencies
Now that the dependencies are installed you can find them in the “package.js”.
This is how your “package.json” has to look like.

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

A little modification has to be made in the “package.json” : `“main”: “index.js”` => `“source”: “src/index.html”`.

{: .center}
[![PackageJson modify](../images/packageJsonModify.png)](../images/packageJsonModify.png){: style="border-bottom:none;"}   
*Fig. 2: Modifying the package.json*

Add some script :
- `“build”: “parcel build”`
- `“start”: “parcel”`
#### Package.json Script
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

### Start the Development Server
Now that the Setup is finished, the app has to be built to be displayed.
Start the development server:

```console
npm run start
```

Now the application is up and running. Open the browser and go to `localhost:1234`, it will display :

{: .center}
[![Application running on browser](../images/webapp1.png)](../images/webapp1.png){: style="border-bottom:none;"}  
*Fig. 3: Application Running on Browser*
### Plug Your Ledger Device
Before clicking on the text connect your Ledger to the USB port, unlock it and run the bitcoin application.
The steps are described below.

{: .center}
[![Ledger Enter Code Pin](../images/ledgerCodePin.jpg){:width="480px"}](../images/ledgerCodePin.jpg){: style="border-bottom:none;"}   
*Fig. 4: Ledger Enter Code Pin*

{: .center}
[![Ledger Application](../images/ledgerBtc.jpg){:width="480px"}](../images/ledgerBtc.jpg){: style="border-bottom:none;"}   
*Fig. 5: Ledger Application*

{: .center}
[![Ledger Run Application](../images/ledgerReady.jpg){:width="480px"}](../images/ledgerReady.jpg){: style="border-bottom:none;"}   
*Fig. 6: Ledger Run Application*

### Connect Your Ledger to the Application
Now you can click on the text and a popup will be prompt. Choose your Ledger device and click connexion

{: .center}
[![Connect the Ledger](../images/webapp2.png)](../images/webapp2.png){: style="border-bottom:none;"}  
*Fig. 7: Connect the Ledger*

Then if all goes well you must have the bitcoin address you just create [previously](#prerequisites)

{: .center}
[![Address Account Displayed](../images/webapp3.png)](../images/webapp3.png){: style="border-bottom:none;"}  
*Fig. 8: Address Account Displayed*

Congratulations, you have successfully built your first application connected with Ledger !!!

## Web USB and Web HID on Android chrome

Android chrome supports the use of the Ledger device by HID and USB.
On a mobile phone, only android can support the web application.
Moreover, on android, just chrome can support the web application.

### Test on Android chrome
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

The browser will ask you that the website is malicious, to continue, click on “advanced settings” and then on “continue to the localhost site”.
Now you can test to connect your Ledger device on your android just like the [previous step](#web-app-test).

