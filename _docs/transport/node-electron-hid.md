---
title: Node HID integration
subtitle:
tags: []
category: Connect a wallet
author:
toc: true
layout: doc
---
## Introduction
In this section, we will guide you through the creation of a desktop electron application. This application will be connected to your Ledger to display the address of your account (eg. bitcoin account, ethereum account).

## Prerequisites
To start with the Web Integration go through the [Prerequisites](../prerequisites) before diving into the implementation.
## Implementation for Web USB and Web HID on Nano S/X

During this application we will use the Ledger node hid package which is [@ledgerhq/hw-transport-node-hid](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-node-hid).

### Project Initialization
It is time to implement the application and test it. First, open a terminal and create a new folder, during this tutorial the folder will be named “examples-node-electron-hid”.
Run the following command to create the folder and go into it:

```console
mkdir examples-node-electron-hid
cd examples-node-electron-hid
```

Then, initialize the project by running:

```console
npm init
```

During the initialization, multiple questions will be printed on the terminal, if you don’t know what to do always press enter till the end. By always pressing enter all the default responses will be selected.

Now that the folder is initialized, open it in an editor.
Create the files “index.html”, “main.js” and “renderer.js”.
Your folder must look like this.

{: .center}
![Folder of the Application](../images/folderNodeHID.png){:width="210px"}  
*Fig. 1: Folder of the Application*
### Code Implementation

Now we will implement the code.  
In index.html copy-paste the following code :
#### index.html
```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Ledger Basic Electron HID</title>
    <style>
      #main {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
        font-family: sans-serif;
      }
      h1 {
        font-size: 32px;
      }
      h2 {
        font-size: 20px;
        font-weight: normal;
      }
    </style>
  </head>
  <body>
    <div id="main"></div>
    <script src="./renderer.js"></script>
  </body>
</html>
```

In main.js copy-paste the following code :
#### main.js
```javascript
// Modules to control application life and create native browser window
require("babel-polyfill");
const TransportNodeHid = require("@ledgerhq/hw-transport-node-hid").default;
const AppBtc = require("@ledgerhq/hw-app-btc").default;
const { listen } = require("@ledgerhq/logs");


const { app, BrowserWindow, ipcMain } = require("electron");

// This a very basic example
// Ideally you should not run this code in main thread
// but run it in a dedicated node.js process
function getBitcoinInfo(verify) {
  return TransportNodeHid.open("")
    .then(transport => {
      listen(log => console.log(log))
      const appBtc = new AppBtc(transport);
      return appBtc.getWalletPublicKey("44'/0'/0'/0/0",{verify: verify, format: "legacy"}).then(r =>
        transport
          .close()
          .catch(e => {})
          .then(() => r)
      );
    })
    .catch(e => {
      console.warn(e);
      // try again until success!
      return new Promise(s => setTimeout(s, 1000)).then(() =>
        getBitcoinInfo(verify)
      );
    });
}

// Keep a global reference of the window object, if you don't, the window will
// be closed automatically when the JavaScript object is garbage collected.
let mainWindow;

function createWindow() {
  // Create the browser window.
  mainWindow = new BrowserWindow({
    webPreferences: {
        nodeIntegration: true,
        contextIsolation: false
    }
})

  // and load the index.html of the app.
  mainWindow.loadFile("index.html");

  // Open the DevTools.
  // mainWindow.webContents.openDevTools()

  // Emitted when the window is closed.
  mainWindow.on("closed", function() {
    // Dereference the window object, usually you would store windows
    // in an array if your app supports multi windows, this is the time
    // when you should delete the corresponding element.
    mainWindow = null;
  });

  // ~~~ BASIC LEDGER EXAMPLE ~~~

  ipcMain.on("requestBitcoinInfo", () => {
    getBitcoinInfo(false).then(result => {
      mainWindow.webContents.send("bitcoinInfo", result);
    });
  });

  ipcMain.on("verifyBitcoinInfo", () => {
    getBitcoinInfo(true);
  });

  // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
}

// This method will be called when Electron has finished
// initialization and is ready to create browser windows.
// Some APIs can only be used after this event occurs.
app.on("ready", createWindow);

// Quit when all windows are closed.
app.on("window-all-closed", function() {
  // On macOS it is common for applications and their menu bar
  // to stay active until the user quits explicitly with Cmd + Q
  if (process.platform !== "darwin") {
    app.quit();
  }
});

app.on("activate", function() {
  // On macOS it's common to re-create a window in the app when the
  // dock icon is clicked and there are no other windows open.
  if (mainWindow === null) {
    createWindow();
  }
});

// In this file you can include the rest of your app's specific main process
// code. You can also put them in separate files and require them here.
```


In renderer.js copy-paste the following code :
#### renderer.js
```javascript
const electron = require("electron");
const { ipcRenderer } = electron;

document.getElementById("main").innerHTML =
  "<h1>Connect your Ledger and open Bitcoin app...</h1>";

ipcRenderer.on("bitcoinInfo", (event, arg) => {
  const h1 = document.createElement("h2");
  h1.textContent = arg.bitcoinAddress;
  document.getElementById("main").innerHTML =
    "<h1>Your first Bitcoin address:</h1>";
  document.getElementById("main").appendChild(h1);
  ipcRenderer.send("verifyBitcoinInfo");
});

ipcRenderer.send("requestBitcoinInfo");
```

### Dependencies Installation
Now that the code is pasted, the dependencies of the code have to be installed.
To do that install the following package by running the command :

#### Install [Electron](https://www.electronjs.org/)
This package is a build tool that will help you package your application to run it as a desktop application.  
```console
npm install --save-dev electron
```
#### Install [Babel polyfill](https://www.npmjs.com/package/@babel/polyfill)  
```console
npm install --save babel-polyfill
```
#### Install [@ledgerhq/logs](https://www.npmjs.com/package/@ledgerhq/logs)
This Ledger package provides you with the log of all the error from your connexion with your Ledger device that may appear when developing.  
```console
npm install @ledgerhq/logs
```
#### Install [@ledgerhq/hw-app-btc](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-app-btc)
This package will help you ask your Ledger Nano to access the bitcoin address.  
```console
npm install --save @ledgerhq/hw-app-btc
```
#### Install [Browserify](https://browserify.org/)
This package will help you use "require" like Node does.  
```console
npm install --save browserify
```
#### Install [@ledgerhq/hw-transport-node-hid](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-node-hid)
This Ledger package provides you with all the methods to interact with your Ledger with an HID connexion.  
```console
npm install --save @ledgerhq/hw-transport-node-hid
```

Now that the dependencies are installed you can find them in the “package.js”.
During the initialization of the project thanks to npm, the default value for the entry file was "index.js".

For the project, the entry file will be "main.js".
Therefore you have to change the option "main" in the "package.json".

This is how your “package.json” has to look like.

#### Package.json Dependencies
```javascript
{
  "name": "examples-node-electron-hid",
  "version": "1.0.0",
  "description": "",
  "main": "main.js",    //Change from "index.js" to "main.js"
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1" //You can remove this line
  },
  "author": "",
  "license": "ISC",
  "devDependencies": {
    "electron": "^16.0.1"
  },
  "dependencies": {
    "@ledgerhq/hw-app-btc": "^6.15.1",
    "@ledgerhq/hw-transport-node-hid": "^6.11.2",
    "@ledgerhq/logs": "^6.10.0",
    "babel-polyfill": "^6.26.0",
    "browserify": "^17.0.0"
  }
}

```


Add a script :
- `"start": "electron ."`

#### Package.json Script
```javascript
{
  "name": "examples-node-electron-hid",
  "version": "1.0.0",
  "description": "",
  "main": "main.js",
  "scripts": {
    "start": "electron ." //Add this script
  },
  "author": "",
  "license": "ISC",
  "devDependencies": {
    "electron": "^16.0.1"
  },
  "dependencies": {
    "@ledgerhq/hw-app-btc": "^6.15.1",
    "@ledgerhq/hw-transport-node-hid": "^6.11.2",
    "@ledgerhq/logs": "^6.10.0",
    "babel-polyfill": "^6.26.0",
    "browserify": "^17.0.0"
  }
}
```
## Desktop App Test

### Start the Development Server
Now that the Setup is finished, let's start the application.
```console
npm run start
```

Now the application is up and running. A window must have been launched on your machine, it will display :

{: .center}
![Node Desktop Application](../images/electron-node-hid-window.png){:width="840px"}  
*Fig. 2: Node Desktop Application*
### Plug Your Ledger Device
Connect your ledger to the USB port, unlock it and run the bitcoin application.
The steps are described below.

{: .center}
![Ledger Enter Code Pin](../images/ledgerCodePin.jpg){:width="480px"}  
*Fig. 3: Ledger Enter Code Pin*

{: .center}
![Ledger Application](../images/ledgerBtc.jpg){:width="480px"}   
*Fig. 4: Ledger Application*

{: .center}
![Ledger Run Application](../images/ledgerReady.jpg){:width="480px"}   
*Fig. 5: Ledger Run Application*

Then if all goes well you must have displayed on the screen the bitcoin address you just create [previously](#prerequisites)

{: .center}
![Address Account Displayed](../images/electron-node-address.png){:width="840px"}  
*Fig. 6: Address Account Displayed*

Congratulations you have successfully built your first application connected with Ledger !!!
