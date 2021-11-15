---
title: How to
subtitle:
category: Swap Providers
tags: []
toc: true
layout: doc_sw
---

## What do we need ?

In order to become a swap provider in the Ledger Live ecosystem, you must submit your API following Ledger’s specifications. We will guide you through the requirements and the modifications you will need to apply to your API before sending it to us. 

This diagram shows what is needed from the provider’s side in order to interact with Ledger Live.

![How to diagram](../images/how-to.png "How to diagram")

## Endpoints

In order to communicate with Ledger’s back-end, you have to give us the mapping of the endpoints we need. <br> 
As you can see on the diagram above, there are 5 main endpoints needed for the swap: 
- To get the list of tradable pairs: [/pairs](#get-pairs).
- To query a rate: [/quote](#post-quote).
- To check the login and KYC validity of the user, for a specific quote: [/check_quote](#post-check_quote).
- To query a swap status: [/status](#post-status).
- To perform a swap (with the Payload/signature required by the nano): [/swap](post-swap). <br>

You will find the details about each needed endpoint below. <br>
Note that since the APIs are integrated through Ledger backend, the provider APIs don't need to follow this documentation exact pattern as long as the correct data is provided.

<!--  -->
{% include alert.html style="important" text="The only exception being the **/swap** endpoint that needs to return the binary payload and signature with our exact specified format since it will be interpreted by the Nano directly." %}
<!--  -->

As an example, you can refer to  [Changelly’s API](https://github.com/changelly/api-changelly), a provider that is already integrated to Ledger Live. <br> 

**IP address checking** <br>
Additionally, we also need a way to know if a user will be able to do coin swap given his IP.<br>
Our back-end can adapt to how you decide to do this, but we recommend you use a dedicated endpoint. Our back-end will send the user’s IP address to that endpoint, without logging it. In response, your endpoint should tell us if the trade is accepted or rejected.

### GET /pairs 
- **Function**: Return a list of supported pairs.
- **Input**: --
- **Output**: Array of supported swap pairs, with supported quote type (fixed / float).
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

**Fixed quote**: The quote price is guaranteed until execution (or until end of quote validity period). <br>
**Float quote**: The quote price is indicative only, real price is computed at execution time

### POST /quote 
- **Function**: Return a quote for a pair and amount.
- **Input**: from, to, amount.
- **Output**: quoteID, rate, expiry, method (fixed/float).<br>
  Optional: from, to, amountFrom, amountTo.
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
- The quote must work without user auth. It can require a Ledger auth.
- The quote must be valid long enough (at least a few minutes).

### POST /check_quote 
- **Function**: Checks validity of login and KYC for a specific quote / trade.
- **Input**: quoteID, bearerToken (can be NULL).
- **Output**: `ok` or `error_state` in <br>
  UNKNOW_USER, KYC_UNDEFINED, KYC_PENDING, KYC_FAILED, KYC_UPDRAGE-REQUIRED, OVER_TRADE_LIMIT, UNKNOWN_ERROR.
- **Payload**:
  - Success <br>
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
- **Output**: State (open, expired, pending_recv, pending_settlement, completed). Statuses should have the same look as `error_state` in **/check_quote**.
- **Payload**:
  - Success
```json
{
   "quoteId":"id1",
   "status":"finished"
}
```

### POST /swap 
- **Function**: Generates a secure binary payload for the nano in order to authorize the transaction.
- **Input**: quoteID, refundAddress, payoutAddress, nonce. <br>
  Optional: from, to, amount.
- **Output**: payload, payload_signature. <br>
  In case of error, returns the same payload as **/check_quote**.
- **Payload**:
  - Success <br>
  Refer to payload in the [JWS signature](#jws-signature) section below.
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

Here is a little diagram to explain how the `payload` and the `payload_signature` are generated: 
![Payload and Payload Signature generation diagram](../images/payload-signature-generation.png "Payload and Payload signature generation")
- `payload`: the trade parameters are assembled in a [protobuf](https://developers.google.com/protocol-buffers) message. Then using the protobuf tools we do a [binary encoding](https://developers.google.com/protocol-buffers/docs/encoding) of the protobuf (Byte Array). Finally, with [base64 encoding](https://en.wikipedia.org/wiki/Base64) we get the `payload` field.  
- `payload_signature`: From the binary encoding of the previous [protobuf](https://developers.google.com/protocol-buffers) (Byte Array), we sign it with [ES256](https://ldapwiki.com/wiki/ES256) and the provider's private key to get a Signature Byte Array. Finally, with [base64 encoding](https://en.wikipedia.org/wiki/Base64) we get the `payload_signature`.


#### Input field: nonce

A nonce field will be passed as parameter of the **/swap** endpoint.<br>
It is a 32 bytes nonce which is generated by the hardware wallet to avoid replay attacks.<br> 
It will be base 64 URL encoded before being sent to the **/swap** endpoint

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

#### Output field: providerSig

The real return value of the **/swap** endpoint is the `providerSig` field with the JSON Web Signature (JWS) in compact form within:
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

If you need to have a Login/KYC before the user can perform a swap, you must develop two widgets. <br>

<!--  -->
{% include alert.html style="note" text="A widget is simply a web page hosted by the provider loaded in an iframe in Ledger Live, with specific parameters and a convention on how to exit the widget.
" %}
<!--  -->

The iframe will handle the Login, and will also trigger the KYC when needed. <br>
This iframe will need to be able to communicate relevant events with the SWAP FORM and our backend, using `postMessage`. <br>
These widgets will need to be able to communicate relevant results to Ledger Live and our backend, using `postMessage`.


**Quote flow**

In this diagram, you can see where the Widget Login/KYC is integrated during the quote process: 

![Quote flow diagram](../images/swap-ftx-quote-flow.png "Quote flow diagram")

**Login Widget**

The Login widget handles the login process and returns a `bearer_token` to be used in all authenticated calls for the user.

![Login widget diagram](../images/swap-ftx-login.png "Login widget diagram")

- Input parameters: none.
- Output (postMessage): `userId`, `bearerToken`:
```json
{
  "user_id": "xxxxxx",
  "bearer_token": "xxxxx"  
}
```

**KYC Widget**

The KYC widget handles the KYC process for a user, when required. <br>
Ledger Live uses the **/check_quote** endpoint to verify whether a KYC is required and passes relevant user and trade info to the widget as parameters.

![KYC widget diagram](../images/swap-ftx-kyc.png "KYC widget diagram")

- Input parameters (url params): `quoteId`, `bearerToken`.
- Output parameters (postMessage): `KYC_OK` if the KYC is completed and sufficient for the given `quoteId`, otherwise same errors as [/check_quote](#post-check_quote) backend endpoint:
```json
{
  code: "KYC_OK" 
}
```

**Trade execution flow**

<!--  -->
{% include alert.html style="note" text="This part is entirely executed by ledger Live and is for reference, it doesn't require any specific integration." %}
<!--  -->

In this diagram, you can see the trade execution flow after the Login/KYC is validated: 

![Trade execution flow diagram](../images/swap-ftx-trade-flow.png "Trade execution flow diagram")
