---
title: Web Bluetooth
subtitle:
tags: [transport, device, communicate, companion wallet]
category: Connect your app
author:
toc: true
layout: doc
---
## Introduction
In this section, we will guide you through the creation of an application. This application will connect to your Ledger Nano X to display the address of your account (eg. bitcoin account, ethereum account).

## Prerequisites
To start with the Web Integration go through the [Prerequisites](../prerequisites) before diving into the implementation.
## Web App Bluetooth (only Nano X)

Ledger Nano S does not have Bluetooth functionality you can only use Ledger Nano X with Bluetooth.

Please be aware that the Bluetooth implementation is only supported by a few browsers.
You can check the [browser support](https://caniuse.com/web-bluetooth) for the Web Bluetooth.
### Project Initialization
It is time to implement the application and test it. This web application will be implemented using React which is a frontend Javascript framework.

First, open a terminal and create a new project, during this tutorial the project will be named “examples-web-bluetooth”.
Run the following command to create the project and go into it:

```console
npx create-react-app examples-web-bluetooth
cd examples-web-bluetooth
```

Now that the project is initialized, open it in an editor.
You will see a React app initialized with an "src" folder where you will find all the code.

To implement the Ledger connexion you have to change and create three files.

The implementation will not dive into the other file as this is not the focus of this tutorial.

Dive into the folder named “src” to modify/create the three files. The files are named "App.js", "App.css” and “QRCode.js”.
Your folder must look like this.

{: .center}
[![Folder of the Application](../images/folderWebBle.png){:width="210"}](../images/folderWebBle.png){: style="border-bottom:none;"}  
*Fig. 1: Folder of the Application*

### Code Implementation

Now we will implement the code.  
In App.js copy-paste the following code :
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


In App.css copy-paste the following code :
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


And create the "QRCode.js" file in the "src" folder, then copy-paste the following code :
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
{% include alert.html style="tip" text="Some error will be emphasized by your editor because of the 'QRCode.js' use some features from typescript. But you can skip those errors as they will not affect the application.
" %}
<!--  -->

### Dependencies Installation
Now that the code is pasted, the dependencies of the code have to be installed.
To do that install the following package by running the command :

#### Install [qrcode](https://www.npmjs.com/package/qrcode) 
This package allow you to create a QR code.  
```console
npm install --save qrcode
```
#### Install [eip55](https://www.npmjs.com/package/eip55)
This package will encode your ethereum address and can verify your address after encoding.  
```console
npm install --save eip55
```
#### Install [@ledgerhq/hw-app-eth](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-app-eth)
This Ledger package will help you ask your Ledger device to access the ethereum address:
```console
npm install --save @ledgerhq/hw-app-eth
```
#### Install [@ledgerhq/hw-transport-web-ble](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-web-ble)
This Ledger package provide you with all the methods to interact with  your Ledger Nano X with a Bluetooth connexion.  
```console
npm install --save @ledgerhq/hw-transport-web-ble
```


#### Package.json Dependencies
Now that the dependencies are installed you can find them in the “package.js”.
This is how your “package.json” has to look like.

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
### Start the Development Server
Now that the Setup is finished, the app has to be available to be displayed.
Therefore start the development server:

```console
npm run start
```

<!--  -->
{% include alert.html style="warning" text="All the browser do not support the Bluetooth please look at the <a href='https://caniuse.com/web-bluetooth' class='alert-link'> browser support </a>.
" %}
<!--  -->


Now the application is up and running. Open the browser and go to `localhost:3000`, it will display :

{: .center}
[![Application Running on Browser](../images/webBle1.png){:width="840"}](../images/webBle1.png){: style="border-bottom:none;"}   
*Fig. 2: Application Running on Browser*  

### Launch Ethereum App
Before clicking on the button, unlock it and run the Ethereum application.
The steps are described below.

{: .center}
[![Ledger Enter Code Pin](../images/ledgerCodePin.jpg){:width="480px"}](../images/ledgerCodePin.jpg){: style="border-bottom:none;"}  
*Fig. 4: Ledger Enter Code Pin*

{: .center}
[![Ledger Application](../images/ledgerEth.jpg){:width="480px"}](../images/ledgerEth.jpg){: style="border-bottom:none;"}   
*Fig. 5: Ledger Application*

{: .center}
[![Ledger Run Application](../images/ledgerReady.jpg){:width="480px"}](../images/ledgerReady.jpg){: style="border-bottom:none;"}   
*Fig. 6: Ledger Run Application*

### Connect Your Ledger to the Application
Now you can click on the button and a popup will be prompt. Choose your Ledger Nano X and click connexion

{: .center}
[![Connect the Ledger with Bluetooth](../images/webBle2.png){:width="840"}](../images/webBle2.png){: style="border-bottom:none;"}   
*Fig. 7: Connect the Ledger with Bluetooth*

Then another popup will be prompt to ask you to confirm the pairing

{: .center}
[![Request of Pairing](../images/webBle3.png){:width="840"}](../images/webBle3.png){: style="border-bottom:none;"}   
*Fig. 8: Request of Pairing*

Finally, if all goes well the address must be displayed with the QR code

{: .center}
[![Address Account Displayed](../images/webBle4.png){:width="840"}](../images/webBle4.png){: style="border-bottom:none;"}   
*Fig. 9: Address Account Displayed*

### Verify the Address on Your Ledger Device
For security reasons, the address will also be displayed to your Ledger Nano X to verify and confirm the address.

{: .center}
[![Ledger Verify Screen](../images/ledgerVerify.jpg){:width="420"}](../images/ledgerVerify.jpg){: style="border-bottom:none;"}   
*Fig. 10: Ledger Verify Screen*

{: .center}
[![Ledger Verify Address Screen](../images/ledgerAddress.jpg){:width="420"}](../images/ledgerAddress.jpg){: style="border-bottom:none;"}   
*Fig. 11: Ledger Verify Address Screen*

{: .center}
[![Ledger Approve Screen](../images/ledgerApprove.jpg){:width="420"}](../images/ledgerApprove.jpg){: style="border-bottom:none;"}   
*Fig. 12: Ledger Approve Screen*

Congratulations you have successfully built your first application connected with Ledger Nano X !!!
