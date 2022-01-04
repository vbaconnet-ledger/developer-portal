---
title: Calling a Smart Contract
subtitle:
tags: [transport, device, communicate, companion wallet]
category: Connect your app
author:
toc: true
layout: doc
---
## Introduction
In this section, we will guide you through the creation of an application. This application will call a smart contract to read and write.
## Prerequisites
To start with the Web Integration go through the [Prerequisites](../prerequisites)  before diving into the implementation.
### Send Ether token to your Ledger Nano ethereum account
To send some ethers on the Ropsten network, go to one of the ropsten faucet websites:
1. [Ropsten Ethereum Faucet](https://faucet.ropsten.be/)
2. [Dimensions Network](https://faucet.dimensions.network/)

#### Ropsten Ethereum Network
Go to the [Ropsten Ethereum Faucet](https://faucet.ropsten.be/) website put your Wallet Public Key on the input and click on "Send me test Ether"

{: .center}
[![Ropsten Ethereum Faucet](../images/tutorial-1-faucet1.png){:width="840"}](../images/tutorial-1-faucet1.png){: style="border-bottom: none;"}   
*Fig. 1: Ropsten Ethereum Faucet*



#### Dimensions Network
Go to the [Dimensions Network](https://faucet.dimensions.network/) website put your Wallet Public Key on the input, do the captcha and click on "Send me test Ether"

{: .center}
[![Ropsten Ethereum Faucet](../images/tutorial-1-faucet2.png){:width="840"}](../images/tutorial-1-faucet2.png){: style="border-bottom: none;"}   
*Fig. 2: Ropsten Ethereum Faucet*

## Web App Bluetooth (only Nano X)
Ledger Nano S does not have Bluetooth functionality you can only use Ledger Nano X with Bluetooth.

Please be aware that the Bluetooth implementation is only supported by a few browsers.
You can check the [browser support](https://caniuse.com/web-bluetooth) for the Web Bluetooth.

### Project Initialization
It is time to implement the application and test it. This web application will be implemented using React which is a frontend Javascript framework.

First, open a terminal and create a new project, during this tutorial the project will be named “e2e-tutorial”.
Run the following command to create the project and go into it:

```console
npx create-react-app e2e-tutorial
cd e2e-tutorial
```

Now that the project is initialized, open it in an editor.
You will see a React app initialized with an "src" folder where you will find all the code.

To implement the Ledger connexion you have to change and create three files.

The implementation will not dive into the other file as this is not the focus of this tutorial.

Dive into the folder named “src” to modify/create the three files. The files are named "App.js", "ConnectLedger.js”,"SmartContract.js" and ethereum.js”.
Your folder must look like this.

{: .center}
[![Folder of the Application](../images/tutorial-2-folder.png){:width="210"}](../images/tutorial-2-folder.png){: style="border-bottom: none;"}   
*Fig. 1: Folder of the Application*

### Code Implementation

Now we will implement the code.  
In App.js copy-paste the following code :
#### App.js
```javascript
import React, { useState } from 'react';
import ConnectLedger from './ConnectLedger.js';
import SmartContract from './SmartContract.js';

function App() {
  const [transport, setTransport] = useState(undefined);
  const [eth, setEth] = useState(undefined);
  const [address, setAddress] = useState(undefined);

  const saveInfo = (info) => {
    setAddress(info.address);
    setEth(info.eth);
    setTransport(info.transport);
  }

  return (
    <div className='container'>
      {
      !transport ?
      <ConnectLedger onTransport={(info) => saveInfo(info)}></ConnectLedger> :
      <SmartContract address={address} eth={eth}></SmartContract>
      }
    </div>
  );
}

export default App;
```

in the Index.js add this line 
```javascript
import 'bootstrap/dist/css/bootstrap.min.css';
```

In ConnectLedger.js copy-paste the following code :
#### ConnectLedger.js
```javascript
import React from 'react';

import TransportWebBLE from "@ledgerhq/hw-transport-web-ble";
import Eth from "@ledgerhq/hw-app-eth";


function ConnectLedger({onTransport}) {

  const connectLedger = async() => {
    const transport = await TransportWebBLE.create();
    const eth = new Eth(transport);
    const {address} = await eth.getAddress("44'/60'/0'/0/0", false);
    onTransport({address,eth,transport})
  }


  return (
    <div className='container'>
      <div className='row'>
        <div className='col-sm-4 mt-5 mx-auto'>
          <button onClick={connectLedger}>Connect Your Ledger</button>
        </div>
      </div>
    </div>
  );
}

export default ConnectLedger;
```


And create the "SmartContract.js" file in the "src" folder, then copy-paste the following code :
#### SmartContract.js
```javascript
import React, { useState } from 'react';
import getBlockchain from './ethereum.js';
import { ethers } from 'ethers';

function SmartContract({eth,address}) {
  const [simpleStorage, setSimpleStorage] = useState(undefined);
  const [data, setData] = useState(undefined);
  const [provider, setProvider] = useState(undefined);
  const [url, setUrl] = useState(undefined);

  const smartContractRead = async() => {
    const provider = new ethers.providers.JsonRpcProvider('https://ropsten.infura.io/v3/9aa3d95b3bc440fa88ea12eaa4456161');
    const { simpleStorage } = await getBlockchain(provider);
    console.log(simpleStorage);
    const data = await simpleStorage.readData();
    setProvider(provider);
    setSimpleStorage(simpleStorage);
    setData(data);
  };

  const updateData = async e => {
    e.preventDefault();
    const dataInput = e.target.elements[0].value;
    console.log(simpleStorage);
    const { data } = await simpleStorage.populateTransaction['updateData(uint256)'](dataInput);

    const unsignedTx = {
      to: simpleStorage.address,
      gasPrice: (await provider.getGasPrice())._hex,
      gasLimit: ethers.utils.hexlify(100000),
      nonce: await provider.getTransactionCount(address, "latest"),
      chainId: 3,
      data: data,
    }
    console.log(unsignedTx);
    const serializedTx = ethers.utils.serializeTransaction(unsignedTx).slice(2);

    console.log(serializedTx);
    const signature = await eth.signTransaction(
      "44'/60'/0'/0/0",
      serializedTx
    );

    console.log(signature);
    //Parse the signature
    signature.r = "0x"+signature.r;
    signature.s = "0x"+signature.s;
    signature.v = parseInt("0x"+signature.v);
    signature.from = address;
    console.log(signature);

    //Serialize the same transaction as before, but adding the signature on it
    const signedTx = ethers.utils.serializeTransaction(unsignedTx, signature);
    console.log(signedTx);

    const hash = (await provider.sendTransaction(signedTx)).hash;
    console.log(hash);
    setUrl("https://ropsten.etherscan.io/tx/" + hash);
  };


  return (
    <div className='container'>
      <div className='row'>
        <div className='col-sm-4'>
          <h2>Data:</h2>
          <p>{data ? data.toString() : "..." }</p>
          <button onClick={() => smartContractRead()}>Get Data</button>
        </div>

        <div className='col-sm-4'>
          <h2>Change data</h2>
          <form className="form-inline" onSubmit={e => updateData(e)}>
            <input 
              type="text" 
              className="form-control" 
              placeholder="data"
            />
            <button 
              type="submit" 
              className="btn btn-primary"
            >
              Submit
            </button>
          </form>
        </div>
        <div className="mt-5 mx-auto d-flex flex-column">
          <p>
            Ropsten Etherscan :
          </p>
          <p><a href={url} target="_blank" rel="noreferrer">{url}</a></p>
        </div>
      </div>
    </div>
  );
}

export default SmartContract;
```

Finally, create the "ethereum.js" file in the "src" folder, then copy-paste the following code :
#### ethereum.js
```javascript
import { Contract } from 'ethers';

const getBlockchain = (provider) =>
  new Promise( async (resolve, reject) => {
    if(provider) {
      const simpleStorage = new Contract(
        "0x989c810f64ac577683d49a318adfd98b8d482472",
        [
          {
            "inputs": [],
            "name": "data",
            "outputs": [
              {
                "internalType": "uint256",
                "name": "",
                "type": "uint256"
              }
            ],
            "stateMutability": "view",
            "type": "function"
          },
          {
            "inputs": [],
            "name": "readData",
            "outputs": [
              {
                "internalType": "uint256",
                "name": "",
                "type": "uint256"
              }
            ],
            "stateMutability": "view",
            "type": "function"
          },
          {
            "inputs": [
              {
                "internalType": "uint256",
                "name": "_data",
                "type": "uint256"
              }
            ],
            "name": "updateData",
            "outputs": [],
            "stateMutability": "nonpayable",
            "type": "function"
          }
        ],
        provider
      );
      resolve({simpleStorage});
      return;
    }
    reject('Provider not recognized');
  });

export default getBlockchain;
```


### Dependencies Installation
Now that the code is pasted, the dependencies of the code have to be installed.
To do that install the following package by running the command :

#### Install [bootstrap](https://www.npmjs.com/package/bootstrap) 
This package allow you to use the CSS framework Bootstrap.  
```console
npm install --save bootstrap
```
#### Install [ethers](https://docs.ethers.io/v5/)  
The package provides you with all the methods to interact with the ethereum blockchain.  
```console
npm install --save ethers
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
    "@ledgerhq/hw-app-eth": "^6.14.0",              //New line added
    "@ledgerhq/hw-transport-web-ble": "^6.11.2",    //New line added
    "@testing-library/jest-dom": "^5.11.4",
    "@testing-library/react": "^11.1.0",
    "@testing-library/user-event": "^12.1.10",
    "bootstrap": "^4.6.0",                           //New line added
    "ethers": "^5.5.2",                              //New line added
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


Now the application is up and running. Open the browser and go to [localhost:3000](http://localhost:3000), it will display :

{: .center}
[![Application Running on Browser](../images/tutorial-2-connect.png){:width="840"}](../images/tutorial-2-connect.png){: style="border-bottom: none;"}   
*Fig. 2: Application Running on Browser*  

### Launch Ethereum App
Before clicking on the button, unlock it and run the Ethereum application.
The steps are described below.

{: .center}
[![Ledger Enter Code Pin](../images/ledgerCodePin.jpg){:width="480px"}](../images/ledgerCodePin.jpg){: style="border-bottom: none;"}  
*Fig. 3: Ledger Enter Code Pin*

{: .center}
[![Ledger Application](../images/ledgerEth.jpg){:width="480px"}](../images/ledgerEth.jpg){: style="border-bottom: none;"}   
*Fig. 4: Ledger Application*

{: .center}
[![Ledger Run Application](../images/ledgerReady.jpg){:width="480px"}](../images/ledgerReady.jpg){: style="border-bottom: none;"}   
*Fig. 5: Ledger Run Application*

### Connect Your Ledger to the Application
Now you can click on the button and a popup will be prompt. Choose your Ledger Nano X and click connexion

{: .center}
[![Connect the Ledger with Bluetooth](../images/tutorial-2-pairing.png){:width="840"}](../images/tutorial-2-pairing.png){: style="border-bottom: none;"}   
*Fig. 6: Connect the Ledger with Bluetooth*

### Read the data of a Smart Contract
Now you can click on the button "Get Data" to read the data of the smart contract. Then the data will be displayed on the screen.

{: .center}
[![Get data from a smart contract](../images/tutorial-2-getdata.png){:width="840"}](../images/tutorial-2-getdata.png){: style="border-bottom: none;"}   
*Fig. 7: Get data from a smart contract*


### Update the data of a Smart Contract
Now instead of reading data, we will overwrite the data by calling a function of the smart contract which is "UpdateData".

{: .center}
[![Change data from a smart contract](../images/tutorial-2-changedata.png){:width="840"}](../images/tutorial-2-changedata.png){: style="border-bottom: none;"}    
*Fig. 8: Change data from a smart contract*

### Verify the Address on Your Ledger Device
For security reasons, the address will also be displayed to your Ledger Nano X to verify and confirm the address.

{: .center}
[![Ledger Review Screen](../images/ledger-tx-review.jpg){:width="320"}](../images/ledger-tx-review.jpg) [![Ledger Amount Screen](../images/ledger-tx-amount.jpg){:width="320"}](../images/ledger-tx-amount.jp)   
*Fig. 9: Ledger Review Screen  \ Fig. 10: Ledger Amount Screen*

{: .center}
[![Ledger Address Screen](../images/ledger-tx-address.jpg){:width="320"}](../images/ledger-tx-address.jpg) [![Ledger Network Screen](../images/ledger-tx-network.jpg){:width="320"}](../images/ledger-tx-network.jpg)   
*Fig. 11: Ledger Address Screen   \   Fig. 12: Ledger Network Screen*

{: .center}
[![Ledger Max Fees Screen](../images/ledger-tx-fees.jpg){:width="320"}](../images/ledger-tx-fees.jpg) [![Ledger Accept and Send Screen](../images/ledger-tx-accept.jpg){:width="320"}](../images/ledger-tx-accept.jpg)   
*Fig. 13: Ledger Max Fees Screen   \  Fig. 14: Ledger Accept and Send Screen*


<!--  -->
{% include alert.html style="warning" text="For the Smart Contract call you need to allow blind signing because the smart contract that is called in the tutorial is not yet verified and reviewed by Ledger. But if the smart contract you are calling is accepted by Ledger do not enable blind signing. Moreover, we do not recommend enabling blind signing in other situations as the main purpose to sign with Ledger is the 'Sign what you see' system. And by enabling blind signing it can not ensure that what you see is what you get." %}
<!--  -->


### Review the Transaction on Ropsten Etherscan
By updating the data a transaction is created to change this data, it can be verified on Ropsten Etherscan.

{: .center}
[![Ropsten Etherscan](../images/tutorial-2-etherscan1.png){:width="840"}](../images/tutorial-2-etherscan1.png){: style="border-bottom: none;"}    
*Fig. 15: Ropsten Etherscan*

Wait till the status passes to Success.

{: .center}
[![Ropsten Etherscan](../images/tutorial-2-etherscan2.png){:width="840"}](../images/tutorial-2-etherscan2.png){: style="border-bottom: none;"}    
*Fig. 16: Ropsten Etherscan*

### Verify the update of data

Finally, to verify if the update was done in the previous section. Return to your web application and again click on "Get data".

{: .center}
[![Verify the data](../images/tutorial-2-getdata2.png){:width="840"}](../images/tutorial-2-getdata2.png){: style="border-bottom: none;"}    
*Fig. 17: Verify the data*

{: .center}
[![Verify the data](../images/tutorial-2-getdata3.png){:width="840"}](../images/tutorial-2-getdata3.png){: style="border-bottom: none;"}    
*Fig. 18: Verify the data*

Congratulations, you have successfully built your first application connected with Ledger !!!