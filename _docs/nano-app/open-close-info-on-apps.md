---

title: Automatic firmware applications opening / closing 

subtitle: 

tags: [APDU commands]

category: Nano Application

toc: true

author:

layout: doc

---

##  Introduction

A third party wallet using the Ledger usual libraries for interactions with the Ledger Hardware Wallets can benefit from a specific API dedicated to fetch information on the currently running application, and suggest the user for a change.

The support of this API within the Ledger hardware wallets is:
- Ensured in all the Operating System versions since:
  - Nano S: 1.6.0 firmware version,
  - Nano X: 1.3.0 firmware version.
- Ensured in all the firmware applications ported on these OS versions, since it is build in the associated firmware SDK.

##  Possible operations
The possible operations are the following:

| Operation                             | Can be handled by     |
|---------------------------------------|-----------------------|
| [Get Information](#get-information)   | OS and applications   |
| [Quit Application](#quit-application) | OS and applications   |
| [Open Application](#open-application) | OS                    |

## Get Information
### Description, format and use
This APDU command is used in order to fetch these pieces of information about the currently running module. It does not require any operation from the user, and operates silently.
Its command format is:
```
B0010000
```

Its response format is:

| Offset        | Length   | Meaning |
|---------------|----------|-------------- |
| 0             |  1       | Format of the response: 0x01 |
| 1             |  1       | Length of the ASCII name of the running component (noted `L_name`) |
| 2             | `L_name` | ASCII name of the running component |
| 2 + `L_name`  |  1       | Length of the ASCII version of the running component (noted `L_ver`) |
| 2 + `L_name` + 1  |  `L_ver`  | ASCII version of the running component |


Its status code format is:

| Status code | Meaning |
|-------------|----------------------- |
| 0x9000      | Success of the operation |

Call example at the time of writing this page: [In the Ledger Live source code](https://github.com/LedgerHQ/ledger-live-common/blob/16a69f34d5531ec5422a83d8108210a6b891a235/src/hw/getAppAndVersion.ts#L10)

### Example
#### No application is launched - the fetched information describe the OS.
```
=> b001000000
<= 0105424f4c4f5305322e312e309000
```
Here the response indicates that the running component:
- is named 424f4c4f53 ('BOLOS' in ASCII),
- its version is 322e312e30 ('2.1.0' in ASCII).

#### An application is launched - the fetched information describes the application.
```
=> b001000000
<= 0107426974636f696e05322e302e3101029000
```

Here the response indicates that the running component:
- is named 426974636f696e ('Bitcoin' in ASCII),
- its version is 322e302e31 ('2.0.1' in ASCII).

## Quit Application
### Description, format and use
This APDU command is used for quitting the currently running application on the connected Hardware Wallet. It does not require any operation from the user, and operates silently.
Be careful, if not properly used the user might think that his firmware application is crashing.
Its format is:
```
B0A7000000
```
Call example at the time of writing this page: [In the Ledger Live source code](https://github.com/LedgerHQ/ledger-live-common/blob/16a69f34d5531ec5422a83d8108210a6b891a235/src/hw/quitApp.ts#L3)

### Example
####  An application is launched on the product
```
=> b0a7000000
<= 9000
(the product quits the application and returns on the dashboard)
```
####  No application is launched on the product
```
=> b0a7000000
<= 9000
(nothing happens, since no application is running)
```

## Open Application
### Description, format and use
This APDU command is used for opening a given application on the connected Hardware Wallet, based on its ASCII name. If successfully processed, it triggers a specific display on the product's screen, asking the user for a confirmation before actually opening the application.

When successfully processed, the user flow is presented as following (example on a nano S product with the Bitcoin application):

![image info](../images/open_app_bitcoin.png)

And the user needs to press both buttons:
- on the first screen in order to validate the opening of the mentioned application,
- on the second screen in order to cancel the opening of the mentioned application,
- on the third and last screen in order to display additional information on the application.

Its format is:
```
e0d80000 | Lc | Application Name
```
- Lc: a single byte representing the length of the 'Application Name' field,
- Application Name: The ASCII-represented application name.

The response is only a status code:

| Status code | Meaning |
|-------------|----------------------- |
| 0x670A      | Lc is 0x00 whereas an application name is required |
| 0x6807      | The requested application is not present |
| 0x9000      | Success of the operation |
| Any other   | An application is already launched on the product |

Call example at the time of writing this page: [In the Ledger Live source code](https://github.com/LedgerHQ/ledger-live-common/blob/16a69f34d5531ec5422a83d8108210a6b891a235/src/hw/openApp.ts#L3)

### Examples
'426974636f696e' represents the string 'Bitcoin' in ASCII, and has a byte length of 7.

####  The Lc field is zero.
```
=> e0d8000000
<= 670a
```

####  The requested application is not present on the device.
```
=> e0d8000007426974636f696e
<= 6807
```
####  The application is installed on the device, but an application is already launched.
```
=> e0d8000007426974636f696e
<= 6d00
```
####  The application is installed but no application is already opened.
```
=> e0d8000007426974636f696e
(user flow is presented on the product's screen)
<= 9000
```
