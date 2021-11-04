---
title: How to
subtitle:
tags: []
category: Swap Provider
layout: doc_sw
---

#### Sections in this article
{:.no_toc}
* TOC
{:toc}

In order to become a swap provider in the Ledger Live ecosystem, you must submit your API following Ledger’s specifications. We will guide you through the requirements and the modifications you will need to apply to your API before sending it to us. 

This diagram shows what is needed from the provider’s side in order to interact with Ledger Live.

![How to diagram](../images/how-to.png "How to diagram")

## Endpoints

In order to communicate with Ledger’s back-end, you have to give us the mapping of the endpoints we need. <br> 
As you can see on the diagram above, there are 5 main endpoints needed for the swap: 
- To get the list of tradable pairs: `/pairs`.
- To query a rate: `/quote`.
- To check the login and KYC validity of the user, for a specific quote: `/check_quote`.
- To perform a swap (with the Payload/signature required by the nano): `/swap`.
- To query a swap status: `/status`. <br>

Here are the details about each needed endpoint. Note that they are all pretty standard, except for **POST /swap**, which needs to follow our exact structure. 

As an example, you can refer to  [Changelly’s API](https://github.com/changelly/api-changelly), a provider that is already integrated to Ledger Live. <br> 

**IP address checking** <br>
Additionally, we also need a way to know if a user will be able to do coin swap given his IP.<br>
Our back-end can adapt to how you decide to do this, but we recommend you use a dedicated endpoint. Our back-end will send the user’s IP address to that endpoint, without logging it. In response, your endpoint should tell us if the trade is accepted or rejected.

### GET /pairs 
- **Function**: Return a list of supported pairs.
- **Input**: --
- **Output**: ??
- **Payload**:
```json
[
   {
      "from":"btc",
      "to":"bat",
      "tradeMethod":[
         "fixed",
         "float"
      ]
   },
   {
      "from":"bat",
      "to":"btc",
      "tradeMethod":[
         "fixed",
         "float"
      ]
   }
]
```

### POST /quote 
- **Function**: Return a quote for a pair and amount.
- **Input**: from, to, account.
- **Output**: quoteID, rate, expiry, method (fixed/float).
  - Optional: from, to, amountFrom, amountTo.
- **Payload**:
  - Success
```json
{
   "quoteId":"id1",
   "from":"btc",
   "to":"bat",
   "amountFrom":"1",
   "amountTo":"40000",
   "rate":"37800.21",
   "tradeMethod":"float",
   "expiry": "date"  
}
``` 
Some requirements about the **/quote** endpoint:
- The quote must work without user auth.
- The quote must be valid long enough (at least a few minutes).

### POST /check_quote 
- **Function**: Checks validity of login for specified trade.
- **Input**: quoteID, bearerToken (can be NULL).
- **Output**: `ok` or `error_state` in <br>
  UNKNOW_USER, KYC_UNDEFINED, KYC_PENDING, KYC_FAILED, KYC_UPDRAGE-REQUIRED, OVER_TRADE_LIMIT, UNKNOWN_ERROR.
- **Payload**:
  - Success
Status code at 200 <br>
No HTTP body
  - Error
```json
{
  code: "KYC_PENDING",
  error: "Your KYC is under validation" ,
  description: "Your KYC is under validation by an operator"  
}
``` 

### POST /status
- **Function**: Return the status of a quote / trade being executed.
- **Input**: quoteID.
- **Output**: State (open, expired, pending_recv, pending_settlement, completed) + ??
- **Payload**:
  - Success
```json
{
   "provider":"changelly",
   "swapId":"id1",
   "status":"finished"
}
```

### POST /swap 
- **Function**: Generates secure nano payload to initiate trade.
- **Input**: quoteID, refundAddress, payoutAddress, nonce. <br>
  Optional: from, to, amount.
- **Output**: Payload, payload_signature + swapId? <br>
  In case of error, returns the same payload as `/check_quote`.
- **Payload**:
  - Success
```json
{
   "provider":"changelly",
   "deviceTransactionId":"arch",
   "from":"bnb",
   "to":"bch",
   "address":"bc1qvy43vxkjlvv79396c3x59grhxrq4a7afwp0fqu",
   "refundAddress":"0x31137882f060458bde9e9ac3caa27b030d8f85c1",
   "amountFrom":"10"
}
```
  - Error
```json
{
  code: "KYC_PENDING",
  error: "Your KYC is under validation" ,
  description: "Your KYC is under validation by an operator"  
}
``` 

The **/swap** endpoint is trickier, and needs to follow this structure, as well as some requirements:
- Signed prop. format for the user nano.
- Should check the auth bearer token.<br>

#### Protobuf message (payload)

Your Protobuf message should have the following structure: 

```json
syntax = "proto3";
package ledger_swap;

message NewTransactionResponse {
    string    payin_address = 1;
    string    payin_extra_id = 2;
    string    refund_address = 3;
    string    refund_extra_id = 4;
    string    payout_address = 5;
    string    payout_extra_id = 6;
    string    currency_from = 7;
    string    currency_to = 8;
    bytes     amount_to_provider = 9;
    bytes     amount_to_wallet = 10;
    string    device_transaction_id = 11; // nonce
}
```

Explanation of each fields: 
- `payin_address`: provider address to receive payment
- `payin_extra_id`: eventual memo for the payment (stellar payment, for instance)
- `refund_address`: client address to receive back the payment funds in case the provider is not able to execute the swap for some unpredictable reasons
- `refund_extra_id`: eventual memo for the payment (stellar payment, for instance)
- `payout_address`: client address to receive the money resulting from a successful swap
- `payout_extra_id`: eventual memo for the payment (stellar payment, for instance)
- `currency_from`: currency that the client wants to swap
- `currency_to`: currency that the client wants to receive from his swap
- `amount_to_provider`: amount of `currency_from` that the provider expects to receive from client
- `amount_to_wallet`: amount of `currency_to` that the provider agrees to send to the client in exchange from `amount_to_provider`. This amount must also include the network fees that the provider will pay to send the crypto to the user.
- `device_transaction_id`: swap transaction nonce provided by client at initialization

Amounts must be in the lowest unit in the field `coefficient` with its `exponent`.<br>
Example:
- 1 **BTC** would be `0x5F5E100` (100000000 in hexadecimal). The smallest unit is a **satoshi** which is `10^-8` **BTC**.<br> 
So multiply 1 **BTC** by `10^8` → `0x5F5E100`.
- 2 **ETH** would be `0x1BC16D674EC80000` (or 2000000000000000000). The smallest unit is a **wei** which is `10^-18` **ETH**.<br> 
So multiply 2 **ETH** by `10^18` → `0x1BC16D674EC80000`. 


#### New field: nonce

The following JSON field should be added to your API:

- In the JSON request for a swap, a new field `nonce` for the 32 bytes nonce which is generated by the hardware wallet to avoid replay attacks. It will be base 64 URL encoded by the Ledger Live.

```json
{"from": "btc", 
 "to": "eth",
 "address": "0xee*******5E3DFc214",
 "amountFrom": "1",
 "rateId": "f3dd48106a63b*********b7ab5413d32c7b96301a7e82",
 "refundAddress": "1Bvjij5653y9****BGPuQBPzTZpb",
 "nonce": "r5mP6AbVNua5FsNw-oFD4tFJUrXQA1tYwMsmrg4Ft2Q"}
 ```

#### New field: providerSig

The following JSON field should be added to your API:

In the JSON response, a new field `providerSig` with a JSON Web Signature (JWS) in compact form within:
- `providerSig.header.alg` - the algorithm used for the signature: “ES256”.
- `proverSig.header.kid` - an identifier for the public key used: “provider_name-2020“.
- `providerSig.payload` - base 64 URL of the binary serialized protobuf message.NewTransactionResponse.
- `providerSig.signature` - base 64 URL of the ES256 signature of providerSig.payload. More details in the [JWS signature](#jws-signature) and [Protobuf message (payload)](#protobuf-message-payload) sections. 

##### JWS signature

The JWS signature should have to following structure:
```json
"providerSig": {
"header": {
"alg": "ES256",
"kid": "provider_name-2020"
},
"payload": "Cg9oZWxsb0BsZWRnZXIuZnISA0JUQyIiMUExelAxZVA1UUdlZmkyRE1QVGZUTDVTTG12N0Rpd
mZOYSoDRVVSMgYKAgT_EAJCIK-Zj-gG1TbmuRbDcPqBQ-LRSVK10ANbWMDLJq4OBbdk",
"signature": "ak57fQ3nX-cslMjxZijdNylQbsHDE8LI73ap71O1j8k91aFiqtdaXJltyq0NJnmRwmL_yNF
N84JIORpuRScqEg"
}
```

The same JSW signature in compact form:
```json
"providerSig": ".Cg9oZWxsb0BsZWRnZXIuZnISA0JUQyIiMUExelAxZVA1UUdlZmkyRE1QVGZUTDVTTG12
N0RpdmZOYSoDRVVSMgYKAgT_EAJCIK-Zj-gG1TbmuRbDcPqBQ-LRSVK10ANbWMDLJq4OB
bdk.xTq9CYn38DdxRfocnOJpjRWv4eD-_gVEMNoz_7nHVIFRhlLZOQyk04Q6zHHucgK3S
s3IG1NOjw5aC9weCF5aRg"
```

## Login & KYC

If you need to have a Login/KYC before the user can perform a swap, you must develop a Login/KYC widget, as well as an iframe to host that widget. 

The iframe will handle the Login, and will also trigger the KYC when needed. 
This iframe will need to be able to communicate relevant events with the SWAP FORM and our backend, using `postMessage`. 

In this diagram, you can see where the Widget Login/KYC is integrated during the quote process: 

![Quote flow diagram](../images/ftx-quote-flow.png "Quote flow diagram")

And in this diagram, you can see the Login/ KYC Widget flow that we expect from the provider:

![KYC Widget flow diagram](../images/ftx-kyc-widget-flow.png "KYC Widget diagram")

Detailed spec of the messages between widgets and Ledger Live:

**Login Widget**
- Input parameters: none.
- Output (postMessage): `userId`, `bearerToken`:
```json
{
  "user_id": "xxxxxx",
  "bearer_token": "xxxxx"  
}
```


**KYC Widget**
Input parameters (url params): `quoteId`, `bearerToken`.
Output parameters (postMessage): `KYC_OK` if the KYC is completed and sufficient for the given `quoteId`, otherwise same errors as **/check_quote** backend endpoint:
```json
{
  code: "KYC_OK" 
}
```
