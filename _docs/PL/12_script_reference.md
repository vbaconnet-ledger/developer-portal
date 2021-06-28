---
title: Script reference
subtitle: []
tags: []
toc: true
toc_sticky: true
author:
layout: doc_pl
---

## checkGenuine.py

Use attestation to determine if the device is a genuine Ledger device.

```sh
python -m ledgerblue.checkGenuine [-h] [--targetId TARGETID]
                                       [--issuerKey ISSUERKEY] [--apdu]
```

|   Argument    |                 Definition                      |
|---------------|-------------------------------------------------|
| --targetId    | The device’s target ID (default is Ledger Blue) |
| --issuerKey   | Issuer key (hex encoded, default is batch 1)    |
| --apdu        | Display APDU log. Default: False                |


## deleteApp.py

Delete the app with the specified name.

```sh
python -m ledgerblue.deleteApp [-h] [--targetId TARGETID]
                                    [--appName APPNAME] [--appHash APPHASH]
                                    [--rootPrivateKey ROOTPRIVATEKEY]
                                    [--apdu] [--deployLegacy]
                                    [--offline OFFLINE]
```

|    Argument      |               Definition                                       |
|------------------|----------------------------------------------------------------|
| --targetId       | The device’s target ID (default is Ledger Blue)                |
| --appName        | The name of the application to delete                          |
| --appHash        | Set the application hash                                       |
| --rootPrivateKey | A private key used to establish a Secure Channel (hex encoded) |


## derivePassphrase.py

Set a BIP 39 passphrase on the device.

```sh
python -m ledgerblue.derivePassphrase [-h] [--persistent]
```

|   Argument    |                                              Definition                                             |
|---------------|-----------------------------------------------------------------------------------------------------|
| --persistent  | Persist passphrase as secondary PIN (otherwise, it’s set as a temporary passphrase). Default: False |


## endorsementSetupLedger.py

Generate an attestation keypair, using Ledger to sign the Owner certificate.

```sh
python -m ledgerblue.endorsementSetupLedger [-h] [--url URL] [--apdu]
                                                 [--perso PERSO]
                                                 [--endorsement ENDORSEMENT]
                                                 [--targetId TARGETID]
                                                 [--key KEY]
```

|   Argument    |                              Definition                               |
|---------------|-----------------------------------------------------------------------|
| --url         | Server URL. Default: “https://hsmprod.hardwarewallet.com/hsm/process” |
| --apdu        | Display APDU log. Default: False                                      |
| --perso       | A reference to the personalization key; this is a reference to the specific Issuer keypair used by Ledger to sign the device’s Issuer Certificate. Default: “perso_11” |
| --endorsement | A reference to the endorsement key to use; this is a reference to the specific Owner keypair to be used by Ledger to sign the Owner Certificate. Default: “attest_1”   |
| --targetId    | The device’s target ID (default is Ledger Blue)                       |
| --key         | Which endorsement scheme to use (1 or 2)                              |


## endorsementSetup.py

Generate an attestation keypair, using the provided Owner private key to sign the Owner Certificate.

```sh
python -m ledgerblue.endorsementSetup [-h] [--key KEY]
                                           [--certificate CERTIFICATE]
                                           [--privateKey PRIVATEKEY]
                                           [--targetId TARGETID]
                                           [--issuerKey ISSUERKEY]
                                           [--rootPrivateKey ROOTPRIVATEKEY]
                                           [--apdu]
```

|   Argument       |                              Definition                               |
|------------------|-----------------------------------------------------------------------|
| --key            | Which endorsement scheme to use (1 or 2)                              |
| --certificate    | Optional certificate to store if finalizing the endorsement (hex encoded), if no private key is specified |
| --privateKey     | Optional private key to use to create a test certificate (hex encoded), if no certificate is specified |
| --targetId       | The device’s target ID (default is Ledger Blue)                       |
| --issuerKey      | Issuer key (hex encoded, default is batch 1)                          |
| --rootPrivateKey | SCP Host private key                                                  |
| --apdu           | Display APDU log. Default: False                                      |




## genCAPair.py

Generate a Custom CA public-private keypair and print it to console.

```sh
python -m ledgerblue.genCAPair [-h]
```

## hashApp.py

Calculate an application hash from the application’s hex file.

```sh
python -m ledgerblue.hashApp [-h] [--hex HEX] [--targetId TARGETID]
                                  [--targetVersion TARGETVERSION]
```

|    Argument      |               Definition                                       |
|------------------|----------------------------------------------------------------|
| --hex            | The application hex file to be hashed                          |
| --targetId       | The device’s target ID (default is Ledger Blue)                |
| --targetVersion  | Set the chip target version                                    |


## hostOnboard.py

<!--  -->
{% include alert.html style="warning" text="Using this script undermines the security of the device. Caveat emptor." %}
<!--  -->

```sh
python -m ledgerblue.hostOnboard [-h] [--apdu] [--id ID] [--pin PIN]
                                      [--prefix PREFIX]
                                      [--passphrase PASSPHRASE]
                                      [--words WORDS]
```

|    Argument      |                 Definition                   |
|------------------|----------------------------------------------|
| --apdu           | Display APDU log. Default: False             |
| --id             | Identity to initialize                       |
| --pin            | Set a PINs to backup the seed for future use |
| --prefix         | Derivation prefix                            |
| --passphrase     | Derivation passphrase                        |
| --words          | Derivation phrase                            |


## listApps.py

List all apps on the device.

```sh
python -m ledgerblue.listApps [-h] [--targetId TARGETID]
                                   [--rootPrivateKey ROOTPRIVATEKEY]
                                   [--apdu] [--deployLegacy] [--scp]
```

|      Argument      |                   Definition                   |
|--------------------|------------------------------------------------|
| --targetId         | The device’s target ID (default is Ledger Blue)|
| --rootPrivateKey   |The Signer private key used to establish a Secure Channel (otherwise, a random one will be generated)  |
| --apdu             | Display APDU log. Default: False               |
| --deployLegacy     | Use legacy deployment API. Default: False      |
| --scp              | Use a secure channel to list applications. Default: False|


## loadApp.py

Load an app onto the device from a hex file.

```sh
python -m ledgerblue.loadApp [-h] [--targetId TARGETID]
                                  [--targetVersion TARGETVERSION]
                                  [--fileName FILENAME] [--icon ICON]
                                  [--curve CURVE] [--path PATH]
                                  [--path_slip21 PATH_SLIP21]
                                  [--appName APPNAME]
                                  [--signature SIGNATURE] [--signApp]
                                  [--appFlags APPFLAGS]
                                  [--bootAddr BOOTADDR]
                                  [--rootPrivateKey ROOTPRIVATEKEY]
                                  [--signPrivateKey SIGNPRIVATEKEY] [--apdu]
                                  [--deployLegacy] [--apilevel APILEVEL]
                                  [--delete] [--params] [--tlv]
                                  [--dataSize DATASIZE]
                                  [--appVersion APPVERSION]
                                  [--offline OFFLINE] [--offlineText]
                                  [--installparamsSize INSTALLPARAMSSIZE]
                                  [--tlvraw TLVRAW] [--dep DEP] [--nocrc]
```

|       Argument      |                                Definition                                       |
|---------------------|---------------------------------------------------------------------------------|
| --targetId          | The device’s target ID (default is Ledger Nano S)                               |
| --targetVersion     | Set the chip target version                                                     |
| --fileName          | The name of the firmware file to load                                           |
| --icon              | The icon content to use (hex encoded)                                           |
| --curve             | A curve on which BIP 32 derivation is locked (“secp256k1”, “prime256r1”, “ed25519” or “bls12381g1”), can be repeated |
| --path              | A BIP 32 path to which derivation is locked (format decimal a’/b’/c), can be repeated |
| --path_slip21       | A SLIP 21 path to which derivation is locked                                    |
| --appName           | The name to give the application after loading it                               |
| --signature         | A signature of the application (hex encoded)                                    |
| --signApp           | Sign application with provided signPrivateKey. Default: False                   |
| --appFlags          | The application flags                                                           |
| --bootAddr          | The application’s boot address                                                  |
| --rootPrivateKey    | The Signer private key used to establish a Secure Channel (otherwise a random one will be generated) |
| --signPrivateKey    | Set the private key used to sign the loaded app                                 |
| --apdu              | Display APDU log. Default: False                                                |
| --deployLegacy      | Use legacy deployment API. Default: False                                       |
| --apilevel          | Use given API level when interacting with the device                            |
| --delete            | Delete the app with the same name before loading the provided one. Default: False |
| --params            | Store icon and install parameters in a parameter section before the code. Default: False |
| --tlv               | Use install parameters for all variable length parameters. Default: False       |
| --dataSize          | The code section’s size in the provided hex file (to separate data from code, if not provided the whole allocated NVRAM section for the application will remain readonly. |
| --appVersion        | The application version (as a string)                                           |
| --offline           | Request to only output application load APDUs into given filename               |
| --offlineText       | Request to only output application load APDUs into given filename in text mode. Default: False |
| --installparamsSize | The loaded install parameters section size (when parameters are already included within the .hex file. |
| --tlvraw            | Add a custom install param with the hextag:hexvalue encoding                    |
| --dep               | Add a dependency over an appname[:appversion]                                   |
| --nocrc             | Skip CRC generation when loading. Default: False                                |


## loadMCU.py

Load the firmware onto the MCU. The MCU must already be in bootloader mode.

```sh
python -m ledgerblue.loadMCU [-h] [--targetId TARGETID]
                                  [--fileName FILENAME]
                                  [--bootAddr BOOTADDR] [--apdu] [--reverse]
                                  [--nocrc]
```

|    Argument      |                                Definition                                       |
|------------------|---------------------------------------------------------------------------------|
| --targetId       | The device’s target ID (default is Ledger Nano S)                               |
| --fileName       | The name of the firmware file to load                                           |
| --bootAddr       | The firmware’s boot address                                                     |
| --apdu           | Display APDU log. Default: False                                                |
| --reverse        | Load HEX file in reverse from the highest address to the lowest. Default: False |
| --nocrc          | Load HEX file without checking CRC of loaded sections. Default: False           |

## mcuBootloader.py

Request the MCU to execute its bootloader.

```sh
python -m ledgerblue.mcuBootloader [-h] [--targetId TARGETID]
                                        [--rootPrivateKey ROOTPRIVATEKEY]
                                        [--apdu]
```

|    Argument      |                            Definition                                       |
|------------------|-----------------------------------------------------------------------------|
| --targetId       | The device’s target ID (default is Ledger Nano S)                           |
| --rootPrivateKey | The Signer private key used to establish a Secure Channel (otherwise a random one will be generated)|
| --apdu           | Display APDU log. Default: False                                            |



## resetCustomCA.py

Remove all Custom CA public keys previously enrolled onto the device.

```sh
python -m ledgerblue.resetCustomCA [-h] [--targetId TARGETID] [--apdu]
                                        [--rootPrivateKey ROOTPRIVATEKEY]
```

|    Argument      |                            Definition                                       |
|------------------|-----------------------------------------------------------------------------|
| --targetId       | The device’s target ID (default is Ledger Nano S)                           |
| --apdu           | Display APDU log. Default: False                                            |
| --rootPrivateKey | The Signer private key used to establish a Secure Channel (otherwise a random one will be generated)|


## runApp.py

```sh
python -m ledgerblue.runApp [-h] [--targetId TARGETID] [--apdu]
                                 [--rootPrivateKey ROOTPRIVATEKEY]
                                 [--appName APPNAME]
```

|    Argument      |                            Definition                                       |
|------------------|-----------------------------------------------------------------------------|
| --targetId       | The device’s target ID (default is Ledger Nano S)                           |
| --apdu           | Display APDU log. Default: False                                            |
| --rootPrivateKey | The Signer private key used to establish a Secure Channel (otherwise a random one will be generated)|
|--appName         | The name of the application to run                                          |



## runScript.py

Read a sequence of command APDUs from a file and send them to the device. The file must be formatted as hex, with one CAPDU per line.

```sh
python -m ledgerblue.runScript [-h] [--fileName FILENAME] [--apdu]
                                    [--scp] [--targetId TARGETID]
                                    [--rootPrivateKey ROOTPRIVATEKEY]
```

|    Argument      |                            Definition                                       |
|------------------|-----------------------------------------------------------------------------|
| --fileName       | The name of the APDU script to load                                         |
| --apdu           | Display APDU log. Default: False                                            |
| --scp            | Open a Secure Channel to exchange APDU. Default: False                      |
| --targetId       | The device’s target ID (default is Ledger Nano S)                           |
| --rootPrivateKey | The Signer private key used to establish a Secure Channel (otherwise a random one will be generated)|



## setupCustomCA.py

Enroll a Custom CA public key onto the device.

```sh
python -m ledgerblue.setupCustomCA [-h] [--targetId TARGETID] [--apdu]
                                        [--rootPrivateKey ROOTPRIVATEKEY]
                                        [--public PUBLIC] [--name NAME]
```

|    Argument      |                            Definition                                       |
|------------------|-----------------------------------------------------------------------------|
| --targetId       | The device’s target ID (default is Ledger Blue)                             |
| --apdu           | Display APDU log. Default: False                                            |
| --rootPrivateKey | The Signer private key used to establish a Secure Channel (otherwise a random one will be generated) |
| --public         | The Custom CA public key to be enrolled (hex encoded)                       |
| --name           | The name to assign to the Custom CA (this will be displayed on screen upon auth requests)            |


## signApp.py

```sh

```

## updateFirmware.py

```sh
python -m ledgerblue.updateFirmware [-h] [--url URL] [--apdu]
                                         [--perso PERSO]
                                         [--firmware FIRMWARE]
                                         [--targetId TARGETID]
                                         [--firmwareKey FIRMWAREKEY]
```

|    Argument      |                            Definition                                       |
|------------------|-----------------------------------------------------------------------------|
| --url            | Server URL. Default: “https://hsmprod.hardwarewallet.com/hsm/process”       |
| --apdu           | Display APDU log. Default: False                                            |
| --perso          | A reference to the personalization key; this is a reference to the specific Issuer keypair used by Ledger to sign the device’s Issuer Certificate. Default: “perso_11” |
| --firmware       | A reference to the firmware to load                                         |
| --targetId       | The device’s target ID (default is Ledger Blue)                             |
| --firmwareKey    | A reference to the firmware key to use                                      |


## verifyApp.py

```sh
python -m ledgerblue.verifyApp [-h] [--hex HEX] [--key KEY]
                                    [--signature SIGNATURE]
```

|    Argument      |                            Definition                                       |
|------------------|-----------------------------------------------------------------------------|
| --hex            | The hex file of the signed application                                      |
| --key            | The endorsement public key with which to verify the signature (hex encoded) |
| --signature      | The signature to be verified (hex encoded)                                  |



## verifyEndorsement1.py

Verify a message signature created with Endorsement Scheme #1.

```sh
python -m ledgerblue.verifyEndorsement1 [-h] [--key KEY]
                                             [--codehash CODEHASH]
                                             [--message MESSAGE]
                                             [--signature SIGNATURE]
```

|    Argument      |                            Definition                                       |
|------------------|-----------------------------------------------------------------------------|
| --key            | The endorsement public key with which to verify the signature (hex encoded) |
| --codehash       | The hash of the app associated with the endorsement request (hex encoded)   |
| --message        | The message associated to the endorsement request (hex encoded)             |
| --signature      | The signature to be verified (hex encoded)                                  |


## verifyEndorsement2.py

Verify a message signature created with Endorsement Scheme #2.

```sh
python -m ledgerblue.verifyEndorsement2 [-h] [--key KEY]
                                             [--codehash CODEHASH]
                                             [--message MESSAGE]
                                             [--signature SIGNATURE]
```

|    Argument      |                            Definition                                       |
|------------------|-----------------------------------------------------------------------------|
| --key            | The endorsement public key with which to verify the signature (hex encoded) |
| --codehash       | The hash of the app associated with the endorsement request (hex encoded)   |
| --message        | The message associated to the endorsement request (hex encoded)             |
| --signature      | The signature to be verified (hex encoded)                                  |
