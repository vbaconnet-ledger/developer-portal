---
title: Node HID integration
subtitle:
tags: []
category: Connect a wallet
author:
toc: true
layout: doc
---

In this section we will guide you through the creation of a desktop electron application. This application will be connected to your Ledger to display the address of your account (eg. bitcoin account, ethereum account).

## Prerequisites
To start with the Web Integration go through the <a href="../prerequisites">Prerequisites</a> before diving into the implementation.
## Implementation for Web USB and Web HID on Nano S/X

During this application we will use the Ledger node hid package which is <a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-node-hid">@ledgerhq/hw-transport-node-hid</a>

It is time to implement the application and test it. First open a terminal and create a new folder, during this tutorial the folder will be named “examples-node-electron-hid”.
Run the following command to create the folder and go into it:

```console
mkdir examples-node-electron-hid
cd examples-node-electron-hid
```

Then, initialise the project by running:

```console
npm init
```

During the initialization multiple questions will be printed on the terminal, if you don’t know what to do always press enter till the end. By always pressing enter all the default responses will be selected.

Now that the folder is initialized, open it in an editor.
Create the files “index.html”, “main.js” and “renderer.js”.
Your folder must look like this.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="210" src="../images/folderNodeHID.png" ></div>
<!-- --------------------------------- -->


In index.html copy paste the following code :
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

In main.js copy paste the following code :
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


In renderer.js copy paste the following code :
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


Now that the code is paste, the dependencies of the code have to be installed.
To do that install the following package by running the command :

- Install <a href="https://www.electronjs.org/">electron</a>, it is a build tool which will help you package your application to run it in as a desktop application:
```console
npm install --save-dev electron
```
- Install <a href="https://www.npmjs.com/package/@babel/polyfill">babel polyfill</a>:
```console
npm install --save babel-polyfill
```
- Install the Ledger package <a href="https://www.npmjs.com/package/@ledgerhq/logs">@ledgerhq/logs</a> which provide you with the log of all the error from your connexion with your Ledger device that may appear when developing:
```console
npm install @ledgerhq/logs
```
- Install <a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-app-btc">@ledgerhq/hw-app-btc</a>, it is a package that will help you ask your Ledger Nano to access the bitcoin address:
```console
npm install --save @ledgerhq/hw-app-btc
```
- Install <a href="https://browserify.org/">browserify</a>, it is a package that will help you use "require" like Node does:
```console
npm install --save browserify
```
- Install the Ledger package <a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-node-hid">@ledgerhq/hw-transport-node-hid</a> which provide you with all the methods to interact with  your Ledger with a HID connexion:
```console
npm install --save @ledgerhq/hw-transport-node-hid
```

Now that the dependencies are installed you can find them in the “package.js”.
During the initialization of the project thanks to npm, the default value for the entry file was "index.js".

For the project the entry file will be "main.js".
Therefore you have to change the option "main" in the "package.json".

This is how your “package.json” has to look like.

#### package.json
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

#### package.json
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

Now that the Setup is finished, let's start the application.
```console
npm run start
```

Now the application is up and running. A window must have been launched on your machine, it will display :

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/electron-node-hid-window.png" ></div>
<!-- --------------------------------- -->

Connect your ledger in the USB port, unlock it and run the bitcoin application.
The steps is described below.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="420" src="../images/ledgerCodePin.jpg" >
<img width="420" src="../images/ledgerBtc.jpg" >
<img width="420" src="../images/ledgerReady.jpg" >
</div>
<!-- --------------------------------- -->

Then if all goes well you must have displayed on the screen the bitcoin address you just create [previously](#prerequisites)
<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/electron-node-address.png" ></div>
<!-- --------------------------------- -->

Congratulations you have successfully built your first application connected with Ledger !!!
