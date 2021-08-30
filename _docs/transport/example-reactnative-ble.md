---
title: Example of Bluetooth implementation in a React Native App
subtitle:
tags: []
author:
layout: doc_tr
---

#### Sections in this article
{:.no_toc}
* TOC
{:toc}

## Ledger Web Bluetooth example with React Native

This is a Ledger Web Bluetooth example with React Native. It allows to connect to a Bluetooth Ledger device and show an Ethereum address with a QR Code.

### App.js

```javascript
import React, { Component } from "react";

import DeviceSelectionScreen from "./DeviceSelectionScreen";
import ShowAddressScreen from "./ShowAddressScreen";

import TransportBLE from "@ledgerhq/react-native-hw-transport-ble";
import { logsObservable } from "@ledgerhq/react-native-hw-transport-ble/lib/debug";

// This is helpful if you want to see BLE logs. (only to use in dev mode)
logsObservable.subscribe(e => console.log(e.type + ": " + e.message));

class App extends Component {
  state = {
    transport: null
  };

  onSelectDevice = async device => {
    const transport = await TransportBLE.open(device);
    transport.on("disconnect", () => {
      // Intentionally for the sake of simplicity we use a transport local state
      // and remove it on disconnect.
      // A better way is to pass in the device.id and handle the connection internally.
      this.setState({ transport: null });
    });
    this.setState({ transport });
  };

  render() {
    const { transport } = this.state;
    if (!transport) {
      return <DeviceSelectionScreen onSelectDevice={this.onSelectDevice} />;
    }
    return <ShowAddressScreen transport={transport} />;
  }
}

export default App;
```

### ShowAddressScreen.js

```javascript
import React, { Component } from "react";
import { StyleSheet, Text, View } from "react-native";

import AppEth from "@ledgerhq/hw-app-eth";
import TransportBLE from "@ledgerhq/react-native-hw-transport-ble";
import QRCode from "react-native-qrcode-svg";

const delay = ms => new Promise(success => setTimeout(success, ms));

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
    await this.fetchAddress(true);
  }

  async componentWillUnmount() {
    this.unmounted = true;
  }

  fetchAddress = async verify => {
    const { transport } = this.props;
    try {
      const eth = new AppEth(transport);
      const path = "44'/60'/0'/0/0"; // HD derivation path
      const { address } = await eth.getAddress(path, verify);
      if (this.unmounted) return;
      this.setState({ address });
    } catch (error) {
      // in this case, user is likely not on Ethereum app
      if (this.unmounted) return;
      this.setState({ error });
      return null;
    }
  };

  render() {
    const { address, error } = this.state;

    return (
      <View style={styles.ShowAddressScreen}>
        {!address ? (
          <>
            <Text style={styles.loading}>Loading your Ethereum address...</Text>
            {error ? (
              <Text style={styles.error}>
                A problem occurred, make sure to open the Ethereum application
                on your Ledger Nano X. (
                {String((error && error.message) || error)})
              </Text>
            ) : null}
          </>
        ) : (
          <>
            <Text style={styles.title}>Ledger Live Ethereum Account 1</Text>
            <QRCode value={address} size={300} />
            <Text style={styles.address}>{address}</Text>
          </>
        )}
      </View>
    );
  }
}

export default ShowAddressScreen;

const styles = StyleSheet.create({
  ShowAddressScreen: {
    flex: 1,
    padding: 16,
    alignItems: "center",
    justifyContent: "center"
  },
  error: {
    color: "#c00",
    fontSize: 16
  },
  loading: {
    color: "#999",
    fontSize: 16
  },
  title: {
    fontSize: 22,
    marginBottom: 16
  },
  address: {
    marginTop: 16,
    color: "#555",
    fontSize: 14
  }
});
```
### DeviceSelectionScreen.js

```javascript
import React, { Component } from "react";
import {
  StyleSheet,
  Text,
  View,
  TouchableOpacity,
  FlatList,
  Platform,
  PermissionsAndroid
} from "react-native";
import { Observable } from "rxjs";
import AppEth from "@ledgerhq/hw-app-eth";
import TransportBLE from "@ledgerhq/react-native-hw-transport-ble";
import { logsObservable } from "@ledgerhq/react-native-hw-transport-ble/lib/debug";
import QRCode from "react-native-qrcode-svg";
import DeviceItem from "./DeviceItem";

const deviceAddition = device => ({ devices }) => ({
  devices: devices.some(i => i.id === device.id)
    ? devices
    : devices.concat(device)
});

class DeviceSelectionScreen extends Component {
  state = {
    devices: [],
    error: null,
    refreshing: false
  };

  async componentDidMount() {
    // NB: this is the bare minimal. We recommend to implement a screen to explain to user.
    if (Platform.OS === "android") {
      await PermissionsAndroid.request(
        PermissionsAndroid.PERMISSIONS.ACCESS_COARSE_LOCATION
      );
    }
    let previousAvailable = false;
    Observable.create(TransportBLE.observeState).subscribe(e => {
      if (e.available !== previousAvailable) {
        previousAvailable = e.available;
        if (e.available) {
          this.reload();
        }
      }
    });

    this.startScan();
  }

  componentWillUnmount() {
    if (this.sub) this.sub.unsubscribe();
  }

  startScan = async () => {
    this.setState({ refreshing: true });
    this.sub = Observable.create(TransportBLE.listen).subscribe({
      complete: () => {
        this.setState({ refreshing: false });
      },
      next: e => {
        if (e.type === "add") {
          this.setState(deviceAddition(e.descriptor));
        }
        // NB there is no "remove" case in BLE.
      },
      error: error => {
        this.setState({ error, refreshing: false });
      }
    });
  };

  reload = async () => {
    if (this.sub) this.sub.unsubscribe();
    this.setState(
      { devices: [], error: null, refreshing: false },
      this.startScan
    );
  };

  keyExtractor = (item: *) => item.id;

  onSelectDevice = async device => {
    try {
      await this.props.onSelectDevice(device);
    } catch (error) {
      this.setState({ error });
    }
  };

  renderItem = ({ item }: { item: * }) => {
    return <DeviceItem device={item} onSelect={this.onSelectDevice} />;
  };

  ListHeader = () => {
    const { error } = this.state;
    return error ? (
      <View style={styles.header}>
        <Text style={styles.headerTitle}>Sorry, an error occured</Text>
        <Text style={styles.errorTitle}>{String(error.message)}</Text>
      </View>
    ) : (
      <View style={styles.header}>
        <Text style={styles.headerTitle}>Scanning for Bluetooth...</Text>
        <Text style={styles.headerSubtitle}>
          Power up your Ledger Nano X and enter your pin.
        </Text>
      </View>
    );
  };

  render() {
    const { devices, error, refreshing } = this.state;

    return (
      <FlatList
        extraData={error}
        style={styles.list}
        data={devices}
        renderItem={this.renderItem}
        keyExtractor={this.keyExtractor}
        ListHeaderComponent={this.ListHeader}
        onRefresh={this.reload}
        refreshing={refreshing}
      />
    );
  }
}

export default DeviceSelectionScreen;

const styles = StyleSheet.create({
  header: {
    paddingTop: 80,
    paddingBottom: 36,
    alignItems: "center"
  },
  headerTitle: {
    fontSize: 22,
    marginBottom: 16
  },
  headerSubtitle: {
    fontSize: 12,
    color: "#999"
  },
  list: {
    flex: 1
  },
  errorTitle: {
    color: "#c00",
    fontSize: 16,
    marginBottom: 16
  }
});
```

### DeviceItem.js

```javascript
import React, { Component } from "react";
import {
  Text,
  TouchableOpacity,
  StyleSheet,
  ActivityIndicator
} from "react-native";

class DeviceItem extends Component {
  state = {
    pending: false
  };
  onPress = async () => {
    this.setState({ pending: true });
    try {
      await this.props.onSelect(this.props.device);
    } finally {
      this.setState({ pending: false });
    }
  };

  render() {
    const { device } = this.props;
    const { pending } = this.state;
    return (
      <TouchableOpacity
        style={styles.deviceItem}
        onPress={this.onPress}
        disabled={pending}
      >
        <Text style={styles.deviceName}>{device.name}</Text>
        {pending ? <ActivityIndicator /> : null}
      </TouchableOpacity>
    );
  }
}
export default DeviceItem;

const styles = StyleSheet.create({
  deviceItem: {
    paddingVertical: 16,
    paddingHorizontal: 32,
    marginVertical: 8,
    marginHorizontal: 16,
    borderColor: "#ccc",
    borderWidth: 1,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between"
  },
  deviceName: {
    fontSize: 20,
    fontWeight: "bold"
  }
});
```

