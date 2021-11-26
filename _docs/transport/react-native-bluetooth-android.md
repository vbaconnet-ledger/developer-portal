---
title: React Native Bluetooth on Android (Nano X only)
subtitle:
tags: []
category: Connect a wallet
author:
toc: true
layout: doc_tr
---

In this section you will see how to create a React Native application using the <a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/react-native-hw-transport-ble">@ledgerhq/react-native-hw-transport-ble</a>.
During this project some general prerequisites are mandatory and you can find them <a href="../mobile-integration">here</a>.

Then you can now go through the necessary prerequisite for Android development.

## Prerequisites

#### Install Homebrew
Homebrew is a package manager for macOS as a whole, not just for a particular programming language. When it needs to install software from third-party web sites, we can get the real advantage of Homebrew with few lines of code.
Install Homebrew using bellow command in Terminal.

```console
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
```



#### Install watchman
React Native uses watchman to detect real time code changes and it automatically build and push the update to your device without manually refreshing.

```console
brew install watchman
```


#### Install Java JRE and JDK
If you don’t have a complete installation of Java, the build scripts for react-native tend to complain and fail . Downloading Android Studio is not enough solution since it comes bundled with its own JRE.

```console
brew install --cask adoptopenjdk/openjdk/adoptopenjdk8
```


#### Install React Native
React Native allows the application to be written in Javascript and then the React Native Compiler will convert your Javascript code into native code for Android environments.
React Native command line interface can be install using npm as bellow.

```console
npm install -g react-native-cli
```


### Android development prerequisites
Beforehand to develop an Android application we have to install <a href="https://developer.android.com/studio">Android Studio</a>. First download and install <a href="https://developer.android.com/studio">Android Studio</a>, choose the version of your operating system.

When the installation is finished open Android Studio:

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/android-studio.png" ></div>
<!-- --------------------------------- -->

Then go to settings => Appearence & Behavior => System Settings => Android SDK and check the "Show Package Details" checkbox on the bottom right of the windows.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/android-studio-settings.png" ></div>
<!-- --------------------------------- -->

Then you have to install the latest SDK version. Therefore select the packages shown below and apply to install the packages.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/android-studio-SDK.png" ></div>
<!-- --------------------------------- -->

#### Set the environnement variables
If you are using a bash, put the environment variabe into the bash_profile as below:

```console
cd ~/
touch ~/.bash_profile;
open -e .bash_profile
```

```console
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
```

Do the same if you are using zsh or anything else. But the file will be named differently (eg. zsh => .zprofile)

Now that we have set up the prerequisites, you can now create the application.
In this integration we will use the ethereum application.

## Mobile App Build

It is time to implement the application and test it. First open a terminal and create a new project, during this tutorial the project will be named “ledgerApp”.

Run the following command to create the project and go into it:

```console
react-native init ledgerApp
cd ledgerApp
```

<!--  -->
{% include alert.html style="success" text="During the initialization it is installing required 'CocoaPods' dependencies and it may takes times." %}
<!--  -->

Now that the folder is initialized, open it in an editor.
Create a folder named "src" in the root folder.

Create a file named "polyfill.js" in the root folder and copy paste the following code :

#### polyfill.js
```javascript
global.Buffer = require("buffer").Buffer;
```
Then import the polyfill in "index.js" like below:

#### index.js
```javascript
/**
 * @format
 */

import "./polyfill";    //import this
import {AppRegistry} from 'react-native';
import App from './src/App';    //modify this import
import {name as appName} from './app.json';

AppRegistry.registerComponent(appName, () => App);
```

Move the file named "App.js" in the "src" folder and copy paste the following code :
#### App.js
```javascript
import React, { Component } from "react";

import DeviceSelectionScreen from "./DeviceSelectionScreen";
import ShowAddressScreen from "./ShowAddressScreen";

import TransportBLE from "@ledgerhq/react-native-hw-transport-ble";

// This is helpful if you want to see BLE logs. (only to use in dev mode)

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

Create the file named "DeviceItem.js" in the "src" folder and copy paste the following code :
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

Create the file named "DeviceSelectionScreen.js" in the "src" folder and copy paste the following code :
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
    new Observable(TransportBLE.observeState).subscribe(e => {
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
    this.sub = new Observable(TransportBLE.listen).subscribe({
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

Create the file named "ShowAddressScreen.js" in the "src" folder and copy paste the following code :
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

Your folder must look like this.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="210" src="../images/folder-rn-ble.png" ></div>
<!-- --------------------------------- -->

Now the dependencies of the code have to be installed.
To do that install the following package by running the command :

- Install <a href="https://www.npmjs.com/package/react-native-qrcode-svg">react-native-qrcode-svg</a> which allow you to create a QR code:
```console
npm install --save react-native-qrcode-svg
```
- Install <a href="https://www.npmjs.com/package/react-native-svg">react-native-svg</a>, it is a package mandatory to use <a href="https://www.npmjs.com/package/react-native-qrcode-svg">react-native-qrcode-svg</a> :
```console
npm install --save react-native-svg
```
- Install <a href="https://www.npmjs.com/package/rxjs">rxjs</a>, it is a rewrite of "Reactive-Extensions/RxJS" and is the latest production-ready version of RxJS :
```console
npm install --save react-native-svg
```
- Install the Ledger package <a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/react-native-hw-transport-ble">@ledgerhq/react-native-hw-transport-ble</a>. which provide you with all the methods to interact with  your Ledger Nano X with a Bluetooth connexion:
```console
npm install --save @ledgerhq/react-native-hw-transport-ble
```
- Install <a href="https://www.npmjs.com/package/react-native-ble-plx">react-native-ble-plx</a> which scan the bluetooth devices:
```console
npm install --save react-native-ble-plx
npx react-native link react-native-ble-plx
```
- Install <a href="https://www.npmjs.com/package/buffer">Buffer</a>:
```console
 npm install --save buffer
```
- Install the Ledger package <a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-app-eth">@ledgerhq/hw-app-eth</a>, it is a package that will help you ask your Ledger device to access the ethereum address:
```console
npm install --save @ledgerhq/hw-app-eth
```
Now that the dependencies are installed you can find them in the “package.js”.
This is how your “package.json” has to look like.

#### package.json
```javascript
{
  "name": "ledgerApp",
  "version": "0.0.1",
  "private": true,
  "scripts": {
    "android": "react-native run-android",
    "ios": "react-native run-ios",
    "start": "react-native start",
    "test": "jest",
    "lint": "eslint ."
  },
  "dependencies": {
    "@ledgerhq/hw-app-eth": "^6.16.2",
    "@ledgerhq/react-native-hw-transport-ble": "^6.15.0",
    "buffer": "^6.0.3",
    "react": "17.0.2",
    "react-native": "0.66.3",
    "react-native-ble-plx": "^2.0.3",
    "react-native-qrcode-svg": "^6.1.1",
    "react-native-svg": "^12.1.1",
    "rxjs": "^7.4.0"
  },
  "devDependencies": {
    "@babel/core": "^7.16.0",
    "@babel/runtime": "^7.16.3",
    "@react-native-community/eslint-config": "^3.0.1",
    "babel-jest": "^27.3.1",
    "eslint": "^8.3.0",
    "jest": "^27.3.1",
    "metro-react-native-babel-preset": "^0.66.2",
    "react-test-renderer": "17.0.2"
  },
  "jest": {
    "preset": "react-native"
  }
}

```

A little modification have to be made in the “build.gradle” in the "android" folder : `minSdkVersion = 21` => `minSdkVersion = 24`.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="840" src="../images/change-minSDK.png" ></div>
<!-- --------------------------------- -->

You can now test the application you have built.

## Mobile App Test

The app testing will be executed on your personnal phone, why ? Because the android studio emulator environment does not allow you to use neither bluetooth or usb connexion.



<!--  -->
{% include alert.html style="success" text="Please refer to the information for <a href='https://stackoverflow.com/questions/22604305/how-to-use-android-emulator-for-testing-bluetooth-application'>Android Emulator Limitation</a>." %}
<!--  -->

To integrate in application on your smartphone you have enable the developper rôle.
To do that go to  Settings > About Phone > Build Number , and tap 7 times on build number to enable the developper settings.

Now go to Settings > System > Advanced > Developer Options and enable the  "USB debugging" as well as "Install via USB"

Connect your phone to your machine, and run the below command to see if your device is connected:
```console
adb devices
```
if all goes well you have to find the phone in the list of device like the below image.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="210" src="../images/adb-devices.png" ></div>
<!-- --------------------------------- -->

<!--  -->
{% include alert.html style="success" text="For more information about enabling the developper settings on your android device go to <a href='https://developer.android.com/studio/debug/dev-options'>android studio docs</a>." %}
<!--  -->


You can now open a terminal and navigate into your "ledgerApp" folder, then start the server by running below command:
```console
npm start
```

Let the terminal where "metro" is running open and open a new terminal.
In this terminal go into your project folder:
```console
cd ledgerApp
```

Finaly run the below command to install the application on your android device. It's assumed that you have connected your smartphone and your device is recognize by the command `adb devices` like the previous step mention.
```console
npm run android
```

A popup will be prompt on your android device to install the application.
Of course click on "Yes" to install it in order to test it.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="320" src="../images/mobile-install-app.jpg" >
</div>
<!-- --------------------------------- -->

When launching the application it will be display like the below image, you must have the bluetooth and location activated.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="210" src="../images/android-rn-ble.jpg" >
</div>
<!-- --------------------------------- -->
If the above image is not your result, it may displays you that:

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="310" src="../images/android-ble-error.jpg" >
<img width="310" src="../images/android-settings-1.jpg" >
<img width="310" src="../images/android-settings-2.jpg" >
<img width="310" src="../images/android-settings-3.jpg" >
</div>
<!-- --------------------------------- -->


<!--  -->
{% include alert.html style="success" text="For more information about enabling the bluetooth settings on your android device go to the troubleshooting tab." %}
<!--  -->

To pair your Ledger Nano X you must unlock it.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="420" src="../images/ledgerCodePin.jpg" ></div>
<!-- --------------------------------- -->

Now try to pair the Ledger Nano X to your android smartphone.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="210" src="../images/android-rn-ble-list.jpg" >
<img width="210" src="../images/android-rn-pairing.jpg" >
</div>
<!-- --------------------------------- -->

When pairing the pairing code will be displayed on your Ledger Nano X to confirm the pairing.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="420" src="../images/ledgerPairing.jpg" >
<img width="420" src="../images/ledgerEth.jpg" >
<img width="420" src="../images/ledgerReady.jpg" >
</div>
<!-- --------------------------------- -->

Now that the pairing is done, the Nano X is ready with the ethereum application.
If all goes well you must see the address of your ethereum account displayed like below.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="210" src="../images/android-rn-ble-address.jpg" >
</div>
<!-- --------------------------------- -->

For security purpose we display on your Nano X the same ethereum address for you to confirm.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="420" src="../images/ledgerVerify.jpg" >
<img width="420" src="../images/ledgerAddress.jpg" >
<img width="420" src="../images/ledgerApprove.jpg" >
</div>
<!-- --------------------------------- -->


Congratulations you have successfully built your first application connected with Ledger on Android!!!
