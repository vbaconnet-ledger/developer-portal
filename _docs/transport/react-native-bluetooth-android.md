---
title: React Native Bluetooth on Android (Nano X only)
subtitle:
tags: [transport, device, communicate, companion wallet]
category: Connect your app
author:
toc: true
layout: doc
---
## Introduction
In this section you will see how to create a React Native application using the [@ledgerhq/react-native-hw-transport-ble](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/react-native-hw-transport-ble).
During this project some general prerequisites are mandatory and you can find them [here](../prerequisites).

Then you can now go through the necessary prerequisite for Android development.

## Prerequisites

#### Install Homebrew
Homebrew is a package manager for macOS as a whole, not just for a particular programming language. When it needs to install software from third-party websites, we can get the real advantage of Homebrew with few lines of code.
Install Homebrew using the bellow command in Terminal.

```console
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
```



#### Install watchman
React Native uses watchman to detect real-time code changes and it automatically builds and pushes the update to your device without manually refreshing.

```console
brew install watchman
```


#### Install Java JRE and JDK
If you don’t have a complete installation of Java, the build scripts for react-native tend to complain and fail. Downloading Android Studio is not enough solution since it comes bundled with its own JRE.

```console
brew install --cask adoptopenjdk/openjdk/adoptopenjdk8
```


#### Install React Native
React Native allows the application to be written in Javascript and then the React Native Compiler will convert your Javascript code into native code for Android environments.
React Native command line interface can be installed using npm as below.

```console
npm install -g react-native-cli
```


### Android development prerequisites
Beforehand to develop an Android application we have to install Android Studio. First download and install [Android Studio](https://developer.android.com/studio), choose the version of your operating system.

When the installation is finished open Android Studio:

{: .center}
[![Android Studio Window](../images/android-studio.png){:width="840"}](../images/android-studio.png){: style="border-bottom:none;"}   
*Fig. 1: Android Studio Window*


Then go to settings => Appearance & Behavior => System Settings => Android SDK and check the "Show Package Details" checkbox on the bottom right of the windows.

{: .center}
[![Android Studio Settings](../images/android-studio-settings.png){:width="840"}](../images/android-studio-settings.png){: style="border-bottom:none;"}   
*Fig. 2: Android Studio Settings*

Then you have to install the latest SDK version. Therefore select the packages shown below and apply to install the packages.

{: .center}
[![Android Studio SDK Settings](../images/android-studio-SDK.png){:width="840"}](../images/android-studio-SDK.png){: style="border-bottom:none;"}   
*Fig. 3: Android Studio SDK Settings*

#### Set the environnement variables
If you are using bash, put the environment variable into the bash_profile as below:

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

## Mobile App Build

Now that we have set up the prerequisites, you can now create the application.
In this integration, we will use the ethereum application.
### Project Initialization
It is time to implement the application and test it. First, open a terminal and create a new project, during this tutorial the project will be named “ledgerApp”.

Run the following command to create the project and go into it:

```console
react-native init ledgerApp
cd ledgerApp
```

<!--  -->
{% include alert.html style="tip" text="During the initialization, it is installing required 'CocoaPods' dependencies and it may take time." %}
<!--  -->

### Code Implementation
Now that the folder is initialized, open it in an editor.
Create a folder named "src" in the root folder.

Create a file named "polyfill.js" in the root folder and copy-paste the following code :

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

Move the file named "App.js" in the "src" folder and copy-paste the following code :
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

Create the file named "DeviceItem.js" in the "src" folder and copy-paste the following code :
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

Create the file named "DeviceSelectionScreen.js" in the "src" folder and copy-paste the following code :
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

Create the file named "ShowAddressScreen.js" in the "src" folder and copy-paste the following code :
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

{: .center}
[![Folder of the Application](../images/folder-rn-ble.png){:width="210"}](../images/folder-rn-ble.png){: style="border-bottom:none;"}   
*Fig. 4: Folder of the Application*

### Dependencies Installation
Now the dependencies of the code have to be installed.
To do that install the following package by running the command :

#### Install [react-native-qrcode-svg](https://www.npmjs.com/package/react-native-qrcode-svg)  
This package allow you to create a QR code.  
```console
npm install --save react-native-qrcode-svg
```
#### Install [react-native-svg](https://www.npmjs.com/package/react-native-svg)  
This package is a package mandatory to use [react-native-qrcode-svg](https://www.npmjs.com/package/react-native-qrcode-svg).  
```console
npm install --save react-native-svg
```
#### Install [rxjs](https://www.npmjs.com/package/rxjs)  
This package is a rewrite of "Reactive-Extensions/RxJS" and is the latest production-ready version of RxJS.  
```console
npm install --save react-native-svg
```
#### Install [@ledgerhq/react-native-hw-transport-ble](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/react-native-hw-transport-ble)  
This Ledger package provide you with all the methods to interact with  your Ledger Nano X with a Bluetooth connexion.  
```console
npm install --save @ledgerhq/react-native-hw-transport-ble
```
#### Install [react-native-ble-plx](https://www.npmjs.com/package/react-native-ble-plx)  
This package scan the bluetooth devices.  
```console
npm install --save react-native-ble-plx
npx react-native link react-native-ble-plx
```
#### Install [Buffer](https://www.npmjs.com/package/buffer)  
```console
 npm install --save buffer
```
#### Install [@ledgerhq/hw-app-eth](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-app-eth)  
This Ledger package will help you ask your Ledger device to access the ethereum address.  
```console
npm install --save @ledgerhq/hw-app-eth
```

#### Package.json dependencies
Now that the dependencies are installed you can find them in the “package.js”.
This is how your “package.json” has to look like.

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
#### Build.gradle Modification
A little modification have to be made in the “build.gradle” in the "android" folder : `minSdkVersion = 21` => `minSdkVersion = 24`.

{: .center}
[![Build.gradle Modify the minSdkVersion](../images/change-minSDK.png){:width="840"}](../images/change-minSDK.png){: style="border-bottom:none;"}   
*Fig. 5: Build.gradle Modify the minSdkVersion*

You can now test the application you have built.

## Mobile App Test

The app testing will be executed on your smartphone, why? Because the android studio emulator environment does not allow you to use either Bluetooth or USB connexion.



<!--  -->
{% include alert.html style="tip" text="Please refer to the information for <a href='https://stackoverflow.com/questions/22604305/how-to-use-android-emulator-for-testing-bluetooth-application' class='alert-link'> Android Emulator Limitation </a>." %}
<!--  -->

### Enable Developer Settings
To integrate an application on your smartphone you have to enable the developer rôle.
To do that go to  Settings > About Phone > Build Number, and tap 7 times on build number to enable the developer settings.

Now go to Settings > System > Advanced > Developer Options and enable the  "USB debugging" as well as "Install via USB"

Connect your phone to your machine, and run the below command to see if your device is connected:
```console
adb devices
```
if all goes well you have to find the phone in the list of devices like the below image.

{: .center}
[![Device Connected On The Machine](../images/adb-devices.png){:width="210"}](../images/adb-devices.png){: style="border-bottom:none;"}   
*Fig. 6: Device Connected On The Machine*


<!--  -->
{% include alert.html style="tip" text="For more information about enabling the developer settings on your android device go to <a href='https://developer.android.com/studio/debug/dev-options' class='alert-link'> android studio docs </a>." %}
<!--  -->

### Start the Development Server
You can now open a terminal and navigate into your "ledgerApp" folder, then start the server by running the below command:
```console
npm start
```
### Install the App on Device
Let the terminal where "metro" is running open and open a new terminal.
In this terminal go into your project folder:
```console
cd ledgerApp
```

Finally, run the below command to install the application on your android device. It's assumed that you have connected your smartphone and your device is recognized by the command `adb devices` as the [Previous Step](#enable-developer-settings) mentioned.
```console
npm run android
```

A popup will be prompt on your android device to install the application.
Of course, click on "Yes" to install it and to test it.


{: .center}
[![Mobile Application Installation](../images/mobile-install-app.jpg){:width="320"}](../images/mobile-install-app.jpg)   
*Fig. 7: Mobile Application Installation*

### Launching the Application
When launching the application it will be displayed like the below image, you must have the Bluetooth and location activated.

{: .center}
[![Application Displayed on Smartphone](../images/android-rn-ble.jpg){:width="210"}](../images/android-rn-ble.jpg){: style="border-bottom:none;"}   
*Fig. 8: Application Displayed on Smartphone*

If the above image is not your result, it may display to you that:

{: .center}
[![Bluetooth Not Authorized](../images/android-ble-error.jpg){:width="300"}](../images/android-ble-error.jpg){: style="border-bottom:none;"} [![App Settings 1](../images/android-settings-1.jpg){:width="300"}](../images/android-settings-1.jpg){: style="border-bottom:none;"}  
[![App Settings 2](../images/android-settings-2.jpg){:width="300"}](../images/android-settings-2.jpg){: style="border-bottom:none;"} [![App Settings 3](../images/android-settings-3.jpg){:width="300"}](../images/android-settings-3.jpg){: style="border-bottom:none;"}  
*Fig. 9: Authorize the Bluetooth*



<!--  -->
{% include alert.html style="tip" text="For more information about enabling the Bluetooth settings on your android device go to the troubleshooting tab." %}
<!--  -->


### Pairing the Ledger Nano X
To pair your Ledger Nano X you must unlock it.

{: .center}
[![Ledger Code Pin](../images/ledgerCodePin.jpg){:width="420"}](../images/ledgerCodePin.jpg){: style="border-bottom:none;"}   
*Fig. 10: Ledger Code Pin*

Now try to pair the Ledger Nano X to your android smartphone.

{: .center}
[![Pairing the Ledger Nano X](../images/android-rn-ble-list.jpg){:width="210"}](../images/android-rn-ble-list.jpg){: style="border-bottom:none;"} [![Pairing the Ledger Nano X](../images/android-rn-pairing.jpg){:width="210"}](../images/android-rn-pairing.jpg){: style="border-bottom:none;"}  
*Fig. 11: Pairing the Ledger Nano X*

### Pairing and Launching the Ethereum App on Nano X
When pairing the pairing code will be displayed on your Ledger Nano X to confirm the pairing.

{: .center}
[![Ledger Enter Code Pin](../images/ledgerPairing.jpg){:width="480px"}](../images/ledgerPairing.jpg){: style="border-bottom:none;"}  
*Fig. 12: Ledger Enter Code Pin*

{: .center}
[![Ledger Application](../images/ledgerEth.jpg){:width="480px"}](../images/ledgerEth.jpg){: style="border-bottom:none;"}   
*Fig. 13: Ledger Application*

{: .center}
[![Ledger Run Application](../images/ledgerReady.jpg){:width="480px"}](../images/ledgerReady.jpg){: style="border-bottom:none;"}   
*Fig. 14: Ledger Run Application*

Now that the pairing is done, the Nano X is ready with the ethereum application.
If all goes well you must see the address of your ethereum account displayed.

{: .center}
[![Address Account Displayed on Smartphone](../images/android-rn-ble-address.jpg){:width="210"}](../images/android-rn-ble-address.jpg){: style="border-bottom:none;"}   
*Fig. 15: Address Account Displayed on Smartphone*

### Verify the Address
For security purposes, we display on your Nano X the same ethereum address for you to confirm.

{: .center}
[![Ledger Verify Screen](../images/ledgerVerify.jpg){:width="420"}](../images/ledgerVerify.jpg){: style="border-bottom:none;"}   
*Fig. 16: Ledger Verify Screen*

{: .center}
[![Ledger Verify Address Screen](../images/ledgerAddress.jpg){:width="420"}](../images/ledgerAddress.jpg){: style="border-bottom:none;"}   
*Fig. 17: Ledger Verify Address Screen*

{: .center}
[![Ledger Approve Screen](../images/ledgerApprove.jpg){:width="420"}](../images/ledgerApprove.jpg){: style="border-bottom:none;"}   
*Fig. 18: Ledger Approve Screen*

Congratulations you have successfully built your first application connected with Ledger on Android!!!
