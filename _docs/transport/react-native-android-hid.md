---
title: React Native HID (Android only)
subtitle:
tags: []
category: Connect a wallet
author:
toc: true
layout: doc_tr
---

In this section you will see how to create a React Native application using the <a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/react-native-hid">@ledgerhq/react-native-hid</a> (Only on Android).
During this project some general prerequisites are mandatory and you can find them <a href="../prerequisites">here</a>.

Then you can now go through the necessary prerequisite for Android development.

## Prerequisites

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
React Native allows the application to be written in Javascript and then the React Native Compiler will convert your Javascript code into native code for iOS and Android environments.
React Native command line interface can be install using npm as bellow.

```console
npm install -g react-native-cli
```


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

## Android App Build

It is time to implement the application and test it. First open a terminal and create a new project, during this tutorial the project will be named “myApp”.
Run the following command to create the project and go into it:

```console
react-native init myApp
cd myApp
```

<!--  -->
{% include alert.html style="success" text="During the initialization it is installing required 'CocoaPods' dependencies and it may takes times." %}
<!--  -->

Now that the folder is initialized, open it in an editor.
Create a file named "App.js" and "polyfill.js" in the root folder.
Your folder must look like this.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="210" src="../images/folder-rn-android.png" ></div>
<!-- --------------------------------- -->


In polyfill.js copy paste the following code :

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
import App from './App';
import {name as appName} from './app.json';

AppRegistry.registerComponent(appName, () => App);
```


In App.js copy paste the following code :
#### App.js
```javascript
import React, { Component } from "react";
import { StyleSheet, Text, View } from "react-native";
import { listen } from "@ledgerhq/logs";

import TransportHID from "@ledgerhq/react-native-hid";
import AppEth from "@ledgerhq/hw-app-eth";


// This is helpful if you want to see BLE logs. (only to use in dev mode)

class App extends Component {
  state = {
    transport: null
  };


  onSelectDevice = async () => {
    try {
      const transport = await TransportHID.create();
      listen(log => console.log(log));
      const eth = new AppEth(transport);
      const path = "44'/60'/0'/0/0"; // HD derivation path
      const { address } = await eth.getAddress(path, false);
      this.setState({ transport: address });
      await eth.getAddress(path, true);
    } catch (e) {
      throw new Error(e);
      return null;
    }
  };

  render() {
    const { transport } = this.state;
     if(!transport){
       return (
        <View style={styles.header}>
          <Text style={styles.headerTitle}>Scanning for Ledger...</Text>
          <Text style={styles.headerSubtitle} onPress={() => {this.onSelectDevice()}}>
            Power up your Ledger and enter your pin. Then tap the screen
          </Text>
        </View>
      );
    }else{
      return (<View style={styles.header}>
        <Text style={styles.title}>Ledger Live Ethereum Account 1</Text>
        <Text style={styles.headerTitle}>
          {transport}
        </Text>
      </View>
      );
    }
  };
}

export default App;



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

Now that the code is paste, the dependencies of the code have to be installed.
To do that install the following package by running the command :

- Install <a href="https://www.npmjs.com/package/buffer">Buffer</a>:
```console
 npm install --save buffer
```
- Install the Ledger package <a href="https://www.npmjs.com/package/@ledgerhq/logs">@ledgerhq/logs</a> which provide you the log of all the error from your connexion with your Ledger device that may appear when developing:
```console
 npm install @ledgerhq/logs
```
- Install the Ledger package <a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-app-eth">@ledgerhq/hw-app-eth</a>, it is a package that will help you ask your Ledger device to access the ethereum address:
```console
npm install --save @ledgerhq/hw-app-eth
```
- Install the Ledger package <a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/react-native-hid">@ledgerhq/react-native-hid</a> which provide you with all the methods to interact with  your Ledger with a HID connexion:
```console
npm install --save @ledgerhq/hw-transport-webusb
```

Now that the dependencies are installed you can find them in the “package.js”.
This is how your “package.json” has to look like.

#### package.json
```javascript
{
  "name": "myApp",
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
    "@ledgerhq/hw-app-eth": "^6.15.2",
    "@ledgerhq/logs": "^6.10.0",
    "@ledgerhq/react-native-hid": "^6.11.2",
    "buffer": "^6.0.3",
    "react": "17.0.2",
    "react-native": "0.66.3"
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

## Web App Test

The app testing will be executed on your personnal phone, why ? Because the android studio environment does not allow you to use neither bluetooth or usb connexion.
Please refer to the below information.

<!--  -->
{% include alert.html style="success" text="Please refer to the information for <a href='https://stackoverflow.com/questions/22604305/how-to-use-android-emulator-for-testing-bluetooth-application'>Android Emulator Limitation</a>." %}
<!--  -->

#### Testing
To integrate in application on your android smartphone you have enable the developper rôle.
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

You can now open a terminal and navigate into your "myApp" folder, then start the server by running below command:
```console
npm start
```

Let the terminal where "metro" is running open and open a new terminal.
In this terminal go into your project folder:
```console
cd myApp
```

Finaly run the below command to install the application on your android device. It's assumed that your device is recognize by the command `adb devices` like the previous step mention.
```console
npm run android
```

A popup will be prompt on your android device to install the application.
Of course click on "Yes" to install it in order to test it.

When launching the application it will be display like the below image.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="210" src="../images/android-device-hid.jpg" ></div>
<!-- --------------------------------- -->

Connect your Ledger Nano to your android device, unlock it and run the ethereum application.
The steps is described below.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="420" src="../images/ledgerCodePin.jpg" >
<img width="420" src="../images/ledgerEth.jpg" >
<img width="420" src="../images/ledgerReady.jpg" >
</div>
<!-- --------------------------------- -->

Now that the two devices are connected to each other the address must have been displayed like below.

<!-- ------------- Image ------------- -->
<div style="text-align:center">
<img width="210" src="../images/android-device-hid-address.jpg" ></div>
<!-- --------------------------------- -->

Congratulations you have successfully built your first application connected with Ledger !!!
