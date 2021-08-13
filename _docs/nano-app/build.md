---
title: Build your app
subtitle:
tags: []
author:
layout: doc_na
---

#### Sections in this article
{:.no_toc}
* TOC
{:toc}

In this article we will explain how to compile a Nano application and how to load it to a Nano S.

We provide a container image that contains all dependencies to compile an application for Nano S/X. To use this container image, you need to either install [Docker](https://docs.docker.com/get-docker/), [Podman](https://podman.io/), or [Buildah](https://buildah.io/).

## Build the container image

### Standard Build

The container can be build using standard tools:

```bash
# Docker
sudo docker build -t ledger-app-builder:latest .
# Podman (from https://podman.io/)
podman build -t ledger-app-builder:latest .
# Buildah (from https://buildah.io/)
buildah bud -t ledger-app-builder:latest .
```

### App Scanner

Images can embed the [Coverity Scan](https://scan.coverity.com/) build tool. It is an excellent static analysis tool, and it can be very useful to find bugs in Nano apps.

The build tool must be downloaded before building the image. The archive can be downloaded from <https://scan.coverity.com/download>. Download is available to everyone, but it requires to create an account. After having registered, download Coverity Build Tool 2020.09 for Linux64 and place the downloaded archive in the `coverity` directory.

Then, build the container with:

```bash
# Docker
sudo docker build -t ledger-app-scanner:latest .
# Podman (from https://podman.io/)
podman build -t ledger-app-scanner:latest .
# Buildah (from https://buildah.io/)
buildah bud -t ledger-app-scanner:latest .
```

## Compile your app in the container

In the source folder of your application, for Nano S:

```bash
$ # docker can be replaced with podman or buildah without sudo
$ sudo docker run --rm -ti -v "$(realpath .):/app" ledger-app-builder:latest
root@656be163fe84:/app# make
```

The Docker image includes the [Clang Static Analyzer](https://clang-analyzer.llvm.org/), which can be invoked with:

```bash
$ # docker can be replaced with podman or buildah without sudo
$ sudo docker run --rm -ti -v "$(realpath .):/app" ledger-app-builder:latest
root@656be163fe84:/app# make scan-build
```

For Nano X, specify the `BOLOS_SDK` environment variable before building your app:

```bash
$ # docker can be replaced with podman or buildah without sudo
$ sudo docker run --rm -ti -v "$(realpath .):/app" ledger-app-builder:latest
root@656be163fe84:/app# BOLOS_SDK=$NANOX_SDK make
```

You can exit the image, with the command `exit`.

<!--  -->
{% include alert.html style="primary" text="If you change the <code>BOLOS_SDK</code> variable betwin two builds, you can first use <code>make clean</code> to avoid errors." %}
<!--  -->


## Load your app onto a Nano S

<!--  -->
{% include alert.html style="success" text="The <b>Nano X</b> does not support side loading, therefore you must use the device emulator <a href='https://developers.ledger.com/docs/speculos/start-here/'>Speculos</a> for loading to work." %}
<!--  -->

### If you are a Linux user

If you want to load and delete the app directly from the container image. You need to build the application using this command:

```bash
$ sudo docker run --rm -ti -v "/dev/bus/usb:/dev/bus/usb" -v "$(realpath .):/app" --privileged ledger-app-builder:latest
```

(Do you need to exit the image before make load and delete ?)

Move to the root of the application file and use `make load` to load the app to the Nano S and `make delete` to delete it.


### If you are a Windows or a Mac user

To load your application, use `ledgerblue`, a package that contains Python tools to communicate with Ledger devices and manage applications life cycle. It is recommended to install this package in a Virtual Environment in your native environment (not a Docker image) to avoid hidapi issues.


#### Install the package

First, make sure you have installed the prerequisited packages:
  * libudev-dev
  * libusb-1.0-0-dev
  * python-dev (python 2.7)
  * virtualenv

Then, outside of your application folder, install the ledgerblue package in a virtual environment:

```bash
virtualenv ledger
source ledger/bin/activate
pip install ledgerblue
deactivate
```

Define the udev rules:

```bash
wget -q -O - https://raw.githubusercontent.com/LedgerHQ/udev-rules/master/add_udev_rules.sh | sudo bash
```

Finally, locally clone the Nano S SDK and store it in `BOLOS_SDK`:

```bash
git clone https://github.com/LedgerHQ/nanos-secure-sdk.git nanos-secure-sdk
export BOLOS_SDK=<path-to>nanos-secure-sdk
```

#### Load and delete

1. Plug and unlock the Nano S.
2. Move to the root of the application file and activate the virtual environment with `source ledger/bin/activate`.
3. Use `make load` to load the app to the Nano S and `make delete` to delete it.
4. You can deactivate the virtual environment with the command `deactivate`.
