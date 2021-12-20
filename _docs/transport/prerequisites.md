---
title: Prerequisites
subtitle:
tags: [transport, device, wallet app, communicate, wallet, companion]
category: Connect your app
author:
toc: true
layout: doc
---

## Node

Beforehand we have to install some prerequisites. First install <a href="https://nodejs.org/en/download/">Node & npm</a>, choose the LTS version of your operating system. To ensure you have it installed in your machine open a new terminal and run:

```
$ node -v
v14.18.0

$ npm -v
6.14.15
```

The commands should print the versions of Node.js and npm accordingly.


---------------------------------
## Ledger Live Installation

Now that node and npm are installed, you have to install the [Ledger Live](https://www.ledger.com/ledger-live/download) desktop application to connect your Ledger device.
After the installation, open Ledger Live and go to the **Manager** tab.

{: .center}
[![Ledger Live Prerequisites](../images/ledgerlivetabs.png)](../images/ledgerlivetabs.png){: style="border-bottom:none"}
*Fig. 1: Ledger Live Prerequisites*

Then connect your Ledger to your machine and make sure to unlock the Ledger Device.

{: .center}
[![Ledger Device Unlock](../images/ledgerCodePin.jpg){:width="480px"}](../images/ledgerCodePin.jpg){: style="border-bottom:none"}
*Fig. 2: Ledger Device Unlock*

Then Ledger Live will ask you to allow the Ledger device, just press the two buttons simultaneously to allow it.


{: .center}
[![Ledger Live Animation](../images/ledgerConnect.png){:width="420px"}](../images/ledgerConnect.png){: style="border-bottom:none"}  
*Fig. 3: Ledger Live Animation*


{: .center}
[![Ledger Live Notification on Ledger Device](../images/ledgerAllow.jpg){:width="420px"}](../images/ledgerAllow.jpg){: style="border-bottom:none"}
*Fig. 4: Ledger Live Notification on Ledger Device*



## Ledger Apps Installation

Now you can install the Ethereum and bitcoin application into your Ledger Nano S/X.
In this integration, we will use the Ethereum and bitcoin application from your Ledger.


{: .center}
[![Ethereum App Installation](../images/ethereumInstallation.png){:width="840"}](../images/ethereumInstallation.png){: style="border-bottom:none"}
*Fig. 5: Ethereum App Installation*


## Accounts Creation

To use the Bitcoin/Ethereum previously installed applications you have to create a Bitcoin/Ethereum account.
We will present there the creation of a bitcoin account but it remains the same for any application supported by Ledger Live.

Therefore launch the Bitcoin application on your Ledger Nano S/X.

Then do the following steps to create your Bitcoin account:


- Open the Bitcoin app on your ledger device

{: .center}
[![Bitcoin App Launch](../images/ledgerBtc.jpg){:width="420"}](../images/ledgerBtc.jpg){: style="border-bottom:none"}
*Fig. 6: Bitcoin App Launch*


{: .center}
[![Bitcoin App Ready](../images/ledgerReady.jpg){:width="420"}](../images/ledgerReady.jpg){: style="border-bottom:none"}
*Fig. 7: Bitcoin App Ready*

- Then you can create an account by going to the **Manager** tab and click on **Add account**.

{: .center}
[![Bitcoin App Add Account](../images/bitcoinInstalled.png){:width="840"}](../images/bitcoinInstalled.png){: style="border-bottom:none"}
*Fig. 8: Bitcoin App Add Account*


- Click on **Add account** button.

{: .center}
[![Bitcoin Account Creation](../images/step1account.png){:width="840"}](../images/step1account.png){: style="border-bottom:none"}  
*Fig. 9: Bitcoin Account Creation*


- Your account is created.

{: .center}
[![Bitcoin Account Selection](../images/step2account.png){:width="840"}](../images/step2account.png){: style="border-bottom:none"}
*Fig. 10: Bitcoin Account Selection*


You have now a secured bitcoin account on your Ledger Device, congratulations!

{: .center}
[![Bitcoin Account Created](../images/step3account.png){:width="840"}](../images/step3account.png){: style="border-bottom:none"}
*Fig. 11: Bitcoin Account Created*


Now you can move to the next steps depending on your use case :

 - **Web Application**
    - [HID/USB](../web-hid-usb)
    - [Bluetooth](../web-bluetooth)
 
 - **Mobile Application - React Native**
    - [HID - Android Only](../react-native-android-hid)
    - [Bluetooth - iOS](../react-native-bluetooth-android)
    - [Bluetooth - Android](../react-native-bluetooth-ios)

 - **Desktop Application**
    - [Node HID](../node-electron-hid)
 