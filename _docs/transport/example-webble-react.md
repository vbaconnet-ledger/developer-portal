---
title: React Web Bluetooth
subtitle:
tags: []
category:
author:
toc: true
layout: doc_tr
---

#### Sections in this article
{:.no_toc}
* TOC
{:toc}

## Example of Web Bluetooth implementation in React

This is a Ledger Web Bluetooth example with React. It connects with a Ledger device using Bluetooth and shows an Ethereum address with a QR Code.

### App.js

```javascript

import React, { Component } from "react";
import eip55 from "eip55";
import TransportWebBLE from "@ledgerhq/hw-transport-web-ble";
import TransportWebUSB from "@ledgerhq/hw-transport-webusb";
import AppEth from "@ledgerhq/hw-app-eth";
import QRCode from "./QRCode";
import "./App.css";

const delay = ms => new Promise(success => setTimeout(success, ms));

class DeviceSelectionScreen extends Component {
  state = {
    devices: []
  };

  createBLE = async () => {
    const transport = await TransportWebBLE.create();
    this.props.onSelectDevice(transport);
  };

  createUSB = async () => {
    const transport = await TransportWebUSB.create();
    this.props.onSelectDevice(transport);
  };

  render() {
    return (
      <div className="DeviceSelectionScreen">
        <p>
          Power up your Ledger Nano X and enter your pin before continuing...
        </p>
        <button onClick={this.createBLE}>Connect with Bluetooth</button>
        <button onClick={this.createUSB}>Connect with USB</button>
      </div>
    );
  }
}

class ShowAddressScreen extends Component {
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

### QRCode.js

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


