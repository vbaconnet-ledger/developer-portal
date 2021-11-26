---
title: Web Bluetooth
subtitle:
tags: []
category: Connect a wallet
author:
toc: true
layout: doc_tr
---

In this section we will guide you through the creation of a little application. This application will connect to your Ledger Nano X to display the address of your account (eg. bitcoin account, ethereum account).

## Prerequisites
To start with the Web Integration go through the <a href="../prerequisites">Prerequisites</a> before diving into the implementation.
## Web App Bluetooth (only Nano X)

Ledger Nano S as it does not have a bluetooth functionality you can only use Ledger Nano X with bluetooth.

Please be aware that the bluetooth implementation is only supported by a few browser.
You can check the <a href="https://caniuse.com/web-bluetooth">browser support</a> for the Web Bluetooth.

It is time to implement the application and test it. This web application will be implemented using React which is a frontend Javascript framework.

First open a terminal and create a new project, during this tutorial the project will be named “examples-web-bluetooth”.
Run the following command to create the project and go into it:

```console
npx create-react-app examples-web-bluetooth
cd examples-web-bluetooth
```

Now that the project is initialized, open it in an editor.
You will see a React app initialized with a "src" folder where you will find all the code.

To implement the Ledger connexion you have to change and create three files.

The implementation will not dive into the other file as this is not the focus of this tutorial.

Dive into the folder named “src” to modify/create the three files. The files are named "App.js", "App.css” and “QRCode.js”.
Your folder must look like this.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="210" src="../images/folderWebBle.png" ></div>
<!-- --------------------------------- -->


In App.js copy paste the following code :
#### App.js
```javascript
import React, { Component } from "react";
import eip55 from "eip55";
import TransportWebBLE from "@ledgerhq/hw-transport-web-ble";
import AppEth from "@ledgerhq/hw-app-eth";
import QRCode from "./QRCode";
import "./App.css";

const delay = ms => new Promise(success => setTimeout(success, ms));

class DeviceSelectionScreen extends Component {
  //Component that will display all the Ledger Nano X that is recognized by bluetooth

  state = {
    devices: []
  };

  createBLE = async () => {
    const transport = await TransportWebBLE.create();
    this.props.onSelectDevice(transport);
  };

  render() {
    return (
      <div className="DeviceSelectionScreen">
        <p>
          Power up your Ledger Nano X and enter your pin before continuing...
        </p>
        <button onClick={this.createBLE}>Connect with Bluetooth</button>
      </div>
    );
  }
}

class ShowAddressScreen extends Component {
  //Component that is responsible to display your ethereum address

  state = {
    error: null,
    address: null
  };

  async componentDidMount() {
    while (!this.state.address) {
      if (this.unmounted) return;
      await this.fetchAddress(false);
      await delay(500);
    }
    this.fetchAddress(true);
  }

  async componentWillUnmount() {
    this.unmounted = true;
  }

  fetchAddress = async verify => {
    const { transport } = this.props;
    try {
      const eth = new AppEth(transport);
      const path = "44'/60'/0'/0/0"; // HD derivation path
      const r = await eth.getAddress(path, verify);
      const address = eip55.encode(r.address);
      if (this.unmounted) return;
      this.setState({ address });
    } catch (error) {
      // in this case, user is likely not on Ethereum app
      console.warn("Failed: " + error.message);
      if (this.unmounted) return;
      this.setState({ error });
      return null;
    }
  };

  render() {
    const { address, error } = this.state;

    return (
      <div className="ShowAddressScreen">
        {!address ? (
          <>
            <p className="loading">Loading your Ethereum address...</p>
            {error ? (
              <p className="error">
                A problem occurred, make sure to open the Ethereum application
                on your Ledger Nano X. (
                {String((error && error.message) || error)})
              </p>
            ) : null}
          </>
        ) : (
          <>
            <strong>Ledger Live Ethereum Account 1</strong>
            <QRCode data={address} size={300} />
            <strong>{address}</strong>
          </>
        )}
      </div>
    );
  }
}

class App extends Component {
  state = {
    transport: null
  };

  onSelectDevice = transport => {
    window.ledgerTransport = transport;
    transport.on("disconnect", () => {
      this.setState({ transport: null });
    });
    this.setState({ transport });
  };

  render() {
    const { transport } = this.state;
    return (
      <div className="App">
        {!transport ? (
          <DeviceSelectionScreen onSelectDevice={this.onSelectDevice} />
        ) : (
          <ShowAddressScreen transport={transport} />
        )}
      </div>
    );
  }
}

export default App;
```


In App.css copy paste the following code :
#### App.css
```css
.App {
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.App .DeviceSelectionScreen {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.App .ShowAddressScreen {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.App .error {
  color: #a00;
}

.App .ShowAddressScreen strong {
  margin: 1em;
}
```


And create the "QRCode.js" file in the "src" folder, then copy paste the following code :
#### QRCode.js
```javascript
import React, { PureComponent } from "react";
import qrcode from "qrcode";

type Props = {
  data: string,
  errorCorrectionLevel: string,
  size: number,
  style?: *
};

export default class QRCode extends PureComponent<Props> {
  static defaultProps = {
    size: 200,
    errorCorrectionLevel: "H"
  };

  componentDidMount() {
    this.drawQRCode();
  }

  componentDidUpdate() {
    this.drawQRCode();
  }

  _canvas = null;

  drawQRCode() {
    const { data, size, errorCorrectionLevel } = this.props;
    qrcode.toCanvas(this._canvas, data, {
      width: size,
      margin: 0,
      errorCorrectionLevel,
      color: {
        light: "#ffffff"
      }
    });
  }

  render() {
    return <canvas style={this.props.style} ref={n => (this._canvas = n)} />;
  }
}
```

<!--  -->
{% include alert.html style="success" text="Some error will be emphasizes by your editor because the 'QRCode.js' use some features from typescript. But you can skip those errors as it will not affect the application.
" %}
<!--  -->

Now that the code is paste, the dependencies of the code have to be installed.
To do that install the following package by running the command :

- Install <a href="https://www.npmjs.com/package/qrcode">qrcode</a> which allow you to create a QR code:
```console
npm install --save qrcode
```
- Install <a href="https://www.npmjs.com/package/eip55">eip55</a>, it is a package that will encode your ethereum address and can verify your address after encode:
```console
npm install --save eip55
```
- Install the Ledger package <a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-app-eth">@ledgerhq/hw-app-eth</a>, it is a package that will help you ask your Ledger device to access the ethereum address:
```console
npm install --save @ledgerhq/hw-app-eth
```
- Install the Ledger package <a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-web-ble"> @ledgerhq/hw-transport-web-ble</a> which provide you with all the methods to interact with  your Ledger Nano X with a Bluetooth connexion:
```console
npm install --save @ledgerhq/hw-transport-web-ble
```

Now that the dependencies are installed you can find them in the “package.js”.
This is how your “package.json” has to look like.

#### package.json
```javascript
{
  "name": "examples-web-bluetooth",
  "version": "0.1.0",
  "private": true,
  "dependencies": {
    "@ledgerhq/hw-app-eth": "^6.15.1",              //New line added
    "@ledgerhq/hw-transport-web-ble": "^6.11.2",    //New line added
    "@testing-library/jest-dom": "^5.11.4",
    "@testing-library/react": "^11.1.0",
    "@testing-library/user-event": "^12.1.10",
    "eip55": "^2.1.0",                              //New line added
    "qrcode": "^1.4.4",                             //New line added
    "react": "^17.0.2",
    "react-dom": "^17.0.2",
    "react-scripts": "4.0.3",
    "web-vitals": "^1.0.1"
  },
  "scripts": {
    "start": "react-scripts start",
    "build": "react-scripts build",
    "test": "react-scripts test",
    "eject": "react-scripts eject"
  },
  "eslintConfig": {
    "extends": [
      "react-app",
      "react-app/jest"
    ]
  },
  "browserslist": {
    "production": [
      ">0.2%",
      "not dead",
      "not op_mini all"
    ],
    "development": [
      "last 1 chrome version",
      "last 1 firefox version",
      "last 1 safari version"
    ]
  }
}

```
## Web App Test

Now that the Setup is finished, the app has to be available in order to be displayed.
Therefore start the developpement server:

```console
npm run start
```

<!--  -->
{% include alert.html style="warning" text="All the browser do not support the bluetooth please look at the <code><a href='https://caniuse.com/web-bluetooth'>browser support</a></code>.
" %}
<!--  -->


Now the application is up and running. Open the browser and go to <a href="http://localhost:1234">“localhost:3000”</a>, it will display :

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/webBle1.png" ></div>
<!-- --------------------------------- -->

Before clicking on the button, connect your ledger in the USB port, unlock it and run the bitcoin application.
The steps is described below.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="420" src="../images/ledgerCodePin.jpg" >
<img width="420" src="../images/ledgerEth.jpg" >
<img width="420" src="../images/ledgerReady.jpg" >
</div>
<!-- --------------------------------- -->

Now you can click on the button and a popup will be prompt. Choose your Ledger Nano X and click connexion

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/webBle2.png" ></div>
<!-- --------------------------------- -->

Then another popup will be prompt to ask you to confirm the pairing
<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/webBle3.png" ></div>
<!-- --------------------------------- -->

Finaly if all goes well the address must be displayed with the QR code
<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/webBle4.png" ></div>
<!-- --------------------------------- -->

For security reason the address will also be displayed to your Ledger Nano X to verify and confirm the address.
<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="420" src="../images/ledgerVerify.jpg" >
<img width="420" src="../images/ledgerAddress.jpg" >
<img width="420" src="../images/ledgerApprove.jpg" >
</div>
<!-- --------------------------------- -->


Congratulations you have successfully built your first application connected with Ledger Nano X !!!
