---
title: Transfer Eth between accounts
subtitle:
tags: [transport, device, communicate, companion wallet]
category: Connect your app
author:
toc: true
layout: doc
---
## Introduction  

In this section, you will be guided through the creation of an application. This application creates a transaction signed with the Ledger Nano before sending it to the blockchain.
The purpose of the application is to transfer ethers from your ethereum account on your Ledger to another account.

This implementation is a vanilla javascript web application, that uses the HID protocol from a [Ledger package](https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-webhid) to communicate with the Nano.

## Prerequisites  

Before starting, make sure you have gone through the [prerequisites](../prerequisites).

## Get some Ether tokens 
To get some ethers on your Ledger Nano ethereum account from the Ropsten network, go to one of the Ropsten Faucet websites:
- [Ropsten Ethereum Faucet](https://faucet.ropsten.be/), or
- [Dimensions Network](https://faucet.dimensions.network/)

The Ropsten network is not visible on Ledger Live, you can then check the transaction passed on [ropsten.etherscan.io](https://ropsten.etherscan.io/). 

### Ropsten Ethereum Network
Go to the [Ropsten Ethereum Faucet](https://faucet.ropsten.be/) website put your Wallet Public Key on the input and click on "Send me test Ether"

{: .center}
[![Ropsten Ethereum Faucet](../images/tutorial-1-faucet1.png){:width="840"}](../images/tutorial-1-faucet1.png){: style="border-bottom:none;"}   
*Fig. 1: Ropsten Ethereum Faucet*


### Dimensions Network (alternative)
Go to the [Dimensions Network](https://faucet.dimensions.network/) website put your Wallet Public Key on the input, do the captcha and click on "Send me test Ether"

{: .center}
[![Ropsten Ethereum Faucet](../images/tutorial-1-faucet2.png){:width="840"}](../images/tutorial-1-faucet2.png){: style="border-bottom:none;"}   
*Fig. 2: Ropsten Ethereum Faucet*


## Setting up
It is time to implement the application and test it. First, open a terminal and create a new folder. For this tutorial, the folder will be named "e2e-eth-tutorial”.
Run:

```console
mkdir e2e-eth-tutorial
cd e2e-eth-tutorial
```

Initialize the project by running the following:

```console
npm init
```

A series of questions are displayed. The answers can be blank.  
Answer all the questions until  "Is this OK? (yes)"

Then run:

```console
touch index.html
touch index.js
touch style.css
mkdir assets
```

Put [this logo](../images/ledger-logo.jpg) in the assets folder.

Your working folder must look like this.

{: .center}
[![Folder tutorial](../images/folder-e2e-eth.png)](../images/folder-e2e-eth.png){: style="border-bottom:none;"}  
*Fig. 3: Folder of the Application*

## File contents 

### index.html 

Copy-paste the following code :

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Parcel Sandbox</title>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/web3@latest/dist/web3.min.js"></script>
    <script type="module" src="index.js"></script>
  </head>

  <body class="m-5">
    <div class="d-flex flex-column justify-content-center m-5 align-items-center">
      <p>Click on the bellow button to connect your Ledger Wallet</p>
      <button class="btn btn-primary w-25" data-bs-toggle="modal" data-bs-target="#WalletModal">Connect your Wallet</button>
    </div>
    <div class="d-flex flex-row">
      <div id="app" class="w-50">
        <form class="row g-3">
          <div class="col-md-12">
            <label for="wallet" class="form-label">Wallet Public Key</label>
            <input type="text" class="form-control" id="wallet" disabled>
          </div>
          <div class="col-md-12">
            <label for="recipient" class="form-label">Recipient</label>
            <input type="text" class="form-control" id="recipient">
          </div>
          <div class="col-md-6">
            <label for="gasPrice" class="form-label">Gas Price in wei</label>
            <input type="text" class="form-control" id="gasPrice" disabled>
          </div>
          <div class="col-md-6">
            <label for="gasLimit" class="form-label">Gas Limit in wei</label>
            <input type="text" class="form-control" id="gasLimit">
          </div>
          <div class="col-md-6">
            <label for="chainId" class="form-label">Chain ID</label>
            <input type="text" class="form-control" id="chainId" disabled>
          </div>
          <div class="col-md-6">
            <label for="value" class="form-label">Value</label>
            <input type="text" class="form-control" id="value" >
          </div>
          <div class="col-12">
            <button type="button" id="tx-transfer" class="btn btn-primary">Create Transaction</button>
          </div>
        </form>
      </div>
      <div class="w-50 d-flex flex-column">
            <p class="url">Ropsten etherscan: </p>
            <p  id="url"></p>
      </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="WalletModal" tabindex="-1" aria-labelledby="WalletModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="WalletModalLabel">Choose your Wallet</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body d-flex justify-content-center">
            <button id="connect-ledger" class="rounded-3 align-self-center" data-bs-dismiss="modal">
              <img src="./assets/ledger-logo.jpg" class="card-img-top" alt="Ledger">
            </button>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
```


### index.js

Copy-paste the following code :

```javascript
import { ethers } from "ethers";
import TransportWebHID from "@ledgerhq/hw-transport-webhid";
import Eth from "@ledgerhq/hw-app-eth";

//Infuria provider for Ropsten network
const provider = new ethers.providers.JsonRpcProvider("https://ropsten.infura.io/v3/9aa3d95b3bc440fa88ea12eaa4456161");


const chainId = 3;
let gasPrice;
let addressWallet;
let recipient = "0x920f19c7F7Ce5b3170AdB94fDcC4570Da95D286b";
let value = 0.1;
let gasLimit = 1000000;
let nonce;
let _eth;

document.getElementById("connect-ledger").onclick = async function () {

    //Connecting to the Ledger Nano with HID protocol
    const transport = await TransportWebHID.create();
    
    //Getting an Ethereum instance and get the Ledger Nano ethereum account public key
    _eth = new Eth(transport);
    const { address } = await _eth.getAddress("44'/60'/0'/0/0", false);

    //Get some properties from provider
    addressWallet = address;
    gasPrice = (await provider.getGasPrice())._hex;
    gasPrice = parseInt(gasPrice,16) * 1.15;

    //Fill the inputs with the default value
    document.getElementById("wallet").value = address;
    document.getElementById("gasPrice").value = parseInt(gasPrice) + " wei";
    document.getElementById("chainId").value = chainId;
    document.getElementById("value").value = value;
    document.getElementById("recipient").value = recipient;
    document.getElementById("gasLimit").value = gasLimit;
}

document.getElementById("tx-transfer").onclick = async function () {
    //Getting information from the inputs
    addressWallet = document.getElementById("wallet").value;
    recipient =  document.getElementById("recipient").value;
    value =  document.getElementById("value").value;
    gasLimit =  parseInt(document.getElementById("gasLimit").value);
    nonce =  await provider.getTransactionCount(addressWallet, "latest");

    //Building transaction with the information gathered
    const transaction = {
        to: recipient,
        gasPrice: "0x" + parseInt(gasPrice).toString(16),
        gasLimit: ethers.utils.hexlify(gasLimit),
        nonce: nonce,
        chainId: chainId,
        data: "0x00",
        value: ethers.utils.parseUnits(value, "ether")._hex,
    }

    //Serializing the transaction to pass it to Ledger Nano for signing
    let unsignedTx = ethers.utils.serializeTransaction(transaction).substring(2);

    //Sign with the Ledger Nano (Sign what you see)
    const signature = await _eth.signTransaction("44'/60'/0'/0/0",unsignedTx);

    //Parse the signature
    signature.r = "0x"+signature.r;
    signature.s = "0x"+signature.s;
    signature.v = parseInt(signature.v);
    signature.from = addressWallet;

    //Serialize the same transaction as before, but adding the signature on it
    let signedTx = ethers.utils.serializeTransaction(transaction, signature);

    //Sending the transaction to the blockchain
    const hash = (await provider.sendTransaction(signedTx)).hash;

    //Display the Ropsten etherscan on the screen
    const url = "https://ropsten.etherscan.io/tx/" + hash;
    document.getElementById("url").innerHTML = url;
}
```

### style.css

Copy-paste the following code :

```css
.modal-content{
    width: 300px;
    height: 400px;
}

#connect-ledger{
    width: 17rem;
    height: 9rem;
    background-color: white;
    border: none;
}

#connect-ledger:hover{
    background-color: #EDEFF3;
}

.modal-body{
    background-color: #F7F9FD;
}

#url,.url{
    text-align: center;
    margin-top: 160px;
    color: green;
}
```

## Dependencies

### Package installation

Run:

```console
npm install --save-dev parcel
npm install --save @ledgerhq/hw-app-eth
npm install --save @ledgerhq/hw-transport-webhid
npm install --save ethers
```

<table>
    <thead>
        <tr>
            <th colspan="1">Package</th>
            <th colspan="2">What it does</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><a href="https://parceljs.org/">parcel</a></td>
            <td colspan="2">It is a build tool that will help you package your application to run it in the browser.</td>
        </tr>
        <tr>
            <td><a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-app-eth">@ledgerhq/hw-app-eth</a></td>
            <td colspan="2">It will help you ask your Ledger Nano to access the ethereum address.</td>
        </tr>
        <tr>
            <td><a href="https://github.com/LedgerHQ/ledgerjs/tree/master/packages/hw-transport-webhid">@ledgerhq/hw-transport-webhid</a></td>
            <td colspan="2">It provides you with all the methods to interact with your Nano with an HID connexion.</td>
        </tr>
        <tr>
            <td><a href="https://docs.ethers.io/v5/">ethers</a></td>
            <td colspan="2">It provides you with all the methods to interact with the ethereum blockchain.</td>
        </tr>
    </tbody>
</table>

### Modify package.json

1. Modify the 4th line: `"main": "index.js"` => `"source": "index.html"` (keep the comma)  
2. Insert this line `"start": "parcel"`  
<!-- indent this code for the correct list numbering -->
   ```javascript  
     "scripts": {
       "start": "parcel"
     },  
   ```  
3. You must remove the `"test":` line

Your file now looks similar to this:

```javascript
{
    "name": "e2e-eth-tutorial",
    "version": "1.0.0",
    "description": "",
    "source": "index.html",
    "scripts": {
      "start": "parcel"
    },
    "author": "",
    "license": "ISC",
    "devDependencies": {
      "parcel": "^2.1.1"
    },
    "dependencies": {
      "@ledgerhq/hw-app-eth": "^6.22.3",
      "@ledgerhq/hw-transport-webhid": "^6.20.0",
      "ethers": "^5.5.3"
    }
}
```

## Demo time

Now the web application has to be built and displayed.  

### Launch the server

```console
npm run start
```

The application is now ready in the development server.  
Open a browser and go to `localhost:1234`.  
Don't click on "Connect your Wallet" yet.  

### Plug the Nano
First plug and unlock the Nano.  

{: .center}
[![Enter PIN](../images/ledgerCodePin.jpg){:width="240"}](../images/ledgerCodePin.jpg){: style="border-bottom:none;"}  
*Fig. 4: Enter PIN*

Open the ethereum application.  

{: .center}
[![Open the Ethereum Application](../images/ledgerEth.jpg){:width="240"}](../images/ledgerEth.jpg){: style="border-bottom:none;"}   
*Fig. 5: Open the Ethereum Application*

{: .center}
[![Ethereum Application running](../images/ledgerReady.jpg){:width="240"}](../images/ledgerReady.jpg){: style="border-bottom:none;"}   
*Fig. 6: Ethereum Application running*

### Open the Nano connection

Click on "Connect your Wallet".  

{: .center}
[![Application running on browser](../images/tutorial-1-view.png)](../images/tutorial-1-view.png){: style="border-bottom:none;"}  
*Fig. 7: Application Running on Browser*


Click on the Ledger logo.

{: .center}
[![Choose Wallet](../images/tutorial-1-connect.png)](../images/tutorial-1-connect.png){: style="border-bottom:none;"}  
*Fig. 8: Choose Wallet*

Choose the Nano to connect it to the web application.

{: .center}
[![Connect the Nano](../images/tutorial-1-pairing.png)](../images/tutorial-1-pairing.png){: style="border-bottom:none;"}  
*Fig. 9: Connect the Nano*

The input fields are pre-filled with data. Greyed data cannot be changed because it is read directly either from the blockchain or from your Nano application.

{: .center}
[![Nano connected](../images/tutorial-1-view2.png)](../images/tutorial-1-view2.png){: style="border-bottom:none;"}  
*Fig. 10: Nano connected*


### Create a transaction

Now that the inputs are filled you can transfer ether tokens from your Nano ethereum account to another account (you can state the default account in "index.js").  
When you click on "Create Transaction" it will create the transaction which will then be signed on your Nano before sending it to the blockchain.  

{: .center}
[![Ready to create the transaction](../images/tutorial-1-view2.png)](../images/tutorial-1-view2.png){: style="border-bottom:none;"}  
*Fig. 11: Ready to create the transaction*

When the transaction is finalized, a URL is displayed on the screen. It is a link to Ropsten Etherscan where the transaction can be displayed.  
You can see all the transaction information.

{: .center}
[![Result after Sending Transaction](../images/tutorial-1-result.png)](../images/tutorial-1-result.png){: style="border-bottom:none;"}  
*Fig. 12: Result after Sending Transaction*

If you go on Etherscan you can see the information about the transaction.

{: .center}
[![Result after Sending Transaction](../images/tutorial-1-etherscan.png)](../images/tutorial-1-etherscan.png){: style="border-bottom:none;"}  
*Fig. 13: Transaction Information on Ropsten Etherscan*


Congratulations, you have successfully built your first transfer application connected to a Nano.
