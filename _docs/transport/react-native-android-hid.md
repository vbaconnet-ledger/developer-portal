---
title: React Native HID (Android only)
subtitle:
tags: [transport, device, wallet app, communicate, wallet, companion]
category: Connect your app
author:
toc: true
layout: doc
---

## Introduction
In this section, you will see how to create a React Native application using the [@ledgerhq/react-native-hid](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/react-native-hid) (Only on Android).
During this project some general prerequisites are mandatory and you can find them [here](../prerequisites).

Then you can now go through the necessary prerequisite for Android development.

## Prerequisites

#### Android Studio Installation
Beforehand to develop an Android application we have to install Android Studio.  
First download and install [Android Studio](https://developer.android.com/studio), choose the version of your operating system.

When the installation is finished open Android Studio:

{: .center}
![Android Studio Window](../images/android-studio.png){:width="840"}   
*Fig. 1: Android Studio Window*

Then go to Settings => Appearance & Behavior => System Settings => Android SDK and check the "Show Package Details" checkbox on the bottom right of the windows.

{: .center}
![Android Studio Settings](../images/android-studio-settings.png){:width="840"}   
*Fig. 2: Android Studio Settings*

Then you have to install the latest SDK version. Therefore select the packages shown below and apply to install the packages.

{: .center}
![Android Studio SDK Settings](../images/android-studio-SDK.png){:width="840"}   
*Fig. 3: Android Studio SDK Settings*

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
React Native allows the application to be written in Javascript and then the React Native Compiler will convert your Javascript code into native code for iOS and Android environments.
React Native command line interface can be installed using npm as below.

```console
npm install -g react-native-cli
```


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

Do the same if you are using zsh or anything else.

But the file will be named differently (eg. zsh => .zprofile)


## Android App Build
Now that we have set up the prerequisites, you can now create the application.
In this integration, we will use the ethereum application.
### Project Initialization
It is time to implement the application and test it. First, open a terminal and create a new project, during this tutorial the project will be named “myApp”.
Run the following command to create the project and go into it:

```console
react-native init myApp
cd myApp
```

<!--  -->
{% include alert.html style="tip" text="During the initialization, it is installing required 'CocoaPods' dependencies and it may take time." %}
<!--  -->

### Code Implementation
Now that the folder is initialized, open it in an editor.
Create a file named "App.js" and "polyfill.js" in the root folder.
Your folder must look like this.

{: .center}
![Folder of the Application](../images/folder-rn-android.png){:width="210"}   
*Fig. 4: Folder of the Application*


In polyfill.js copy-paste the following code :

#### polyfill.js
```javascript
global.Buffer = require("buffer").Buffer;
```
Then import the "polyfill.js" in "index.js" like below:

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


In App.js copy-paste the following code :
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
### Dependencies Installation
Now that the code is pasted, the dependencies of the code have to be installed.
To do that install the following package by running the command :

#### Install [Buffer](https://www.npmjs.com/package/buffer)
```console
 npm install --save buffer
```
#### Install [@ledgerhq/logs](https://www.npmjs.com/package/@ledgerhq/logs)
This Ledger package provides you the log of all the errors from your connexion with your Ledger device that may appear when developing:
```console
 npm install --save @ledgerhq/logs
```
#### Install [@ledgerhq/hw-app-eth](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-app-eth)
This Ledger package will help you ask your Ledger device to access the ethereum address:
```console
npm install --save @ledgerhq/hw-app-eth
```
#### Install [@ledgerhq/react-native-hid](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/react-native-hid)
This Ledger package provides you with all the methods to interact with  your Ledger with an HID connexion:
```console
npm install --save @ledgerhq/hw-transport-webusb
```

#### Package.json dependencies

Now that the dependencies are installed you can find them in the “package.js”.
This is how your “package.json” has to look like.

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
#### Build.gradle Modification
A little modification have to be made in the “build.gradle” in the "android" folder : `minSdkVersion = 21` => `minSdkVersion = 24`.

{: .center}
![Build.gradle Modify the minSdkVersion](../images/change-minSDK.png){:width="840"}   
*Fig. 5: Build.gradle Modify the minSdkVersion*


You can now test the application you have built.

## Android App Test

The app testing will be executed on your smartphone, why? Because the android studio environment does not allow you to use either Bluetooth or USB connexion.

<!--  -->
{% include alert.html style="tip" text="Please refer to the information for <a href='https://stackoverflow.com/questions/22604305/how-to-use-android-emulator-for-testing-bluetooth-application' class='alert-link'> Android Emulator Limitation </a>." %}
<!--  -->

### Enable Developer Settings
To integrate an application on your android smartphone you have to enable the developer role.
To do that go to  Settings > About Phone > Build Number, and tap 7 times on build number to enable the developer settings.

Now go to Settings > System > Advanced > Developer Options and enable the  "USB debugging" as well as "Install via USB"

Connect your phone to your machine, and run the below command to see if your device is connected:
```console
adb devices
```
if all goes well you have to find the phone in the list of devices like the below image.

{: .center}
![Device Connected On The Machine](../images/adb-devices.png){:width="210"}   
*Fig. 6: Device Connected On The Machine*

<!--  -->
{% include alert.html style="tip" text="For more information about enabling the developer settings on your android device go to <a href='https://developer.android.com/studio/debug/dev-options' class='alert-link'> android studio docs </a>." %}
<!--  -->

### Start the Development Server
You can now open a terminal and navigate into your "myApp" folder, then start the server by running the below command:
```console
npm start
```

### Install the App on Device
Let the terminal where "metro" is running open and open a new terminal.
In this terminal go into your project folder:
```console
cd myApp
```

Finally, run the below command to install the application on your android device. It's assumed that your device is recognized by the command `adb devices` as the [Previous Step](#enable-developer-settings) mentioned. 
```console
npm run android
```

A popup will be prompt on your android device to install the application.
Of course, click on "Yes" to install it and to test it.

When launching the application it will be displayed like the below image.

{: .center}
![Application Displayed on Smartphone](../images/android-device-hid.jpg){:width="210"}   
*Fig. 7: Application Displayed on Smartphone*

### Plug Your Ledger Device
Connect your Ledger Nano to your android device, unlock it and run the ethereum application.
The steps are described below.

{: .center}
![Ledger Enter Code Pin](../images/ledgerCodePin.jpg){:width="480px"}  
*Fig. 8: Ledger Enter Code Pin*

{: .center}
![Ledger Application](../images/ledgerEth.jpg){:width="480px"}   
*Fig. 9: Ledger Application*

{: .center}
![Ledger Run Application](../images/ledgerReady.jpg){:width="480px"}   
*Fig. 10: Ledger Run Application*

Now that the two devices are connected, the address must have been displayed like below.

{: .center}
![Address Account Displayed on Smartphone](../images/android-device-hid-address.jpg){:width="210"}   
*Fig. 11: Address Account Displayed on Smartphone*

Congratulations you have successfully built your first application connected with Ledger !!!
