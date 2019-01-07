#  THIS README IS INCOMPLETE
# PLEASE DO NOT FOLLOW IT YET

# AArch64 Laptop Images

## Overview

In recent months, various laptop manufacturers (Asus, HP, Lenovo, etc) have released devices based on Qualcomm's Snapdragon 835.  The devices are delivered with Windows 10 pre-installed, but are able to run Linux.  Unfortunately, due to some pretty serious obstacles, simply running the AArch64 version of the Ubuntu (or any distro for that matter) installer is not enough (even with Secure Boot disabled).

This project provides the user/owner some options to install Linux on these devices.  The choices are as follows:

1. Download a pre-built SD card image and flash it onto an SD card
2. Use the `quick-start.sh` script to install your own bespoke image
3. Execute each of the steps manually (still using the other helper scripts)

## Use an existing pre-built SD card image

Only the latest Ubuntu LTS (currently Bionic) pre-built images are currently available.

Download [THIS IMAGE - TODO: UPDATE](www.link.com) and `dd` it to an SD card using the following command:

`$ xzcat <IMG>.xz | sudo dd of=/dev/<SD_CARD> oflag=direct bs=1M status=progress`

Note: <SD_CARD> is the whole card, not a partition e.g. `/dev/sda` and NOT `/dev/sda1`.

## Building your own image(s)

This option is helpful if you want to create bespoke images, or if you want to see how the build process works.

**Note:** Whichever method of building your own images you choice, please be aware that a lot of disk space will be required.  The final SD card image will be around 4GB.  On top of this, if one of the docker methods are selected, space will be required for the Docker images.  Docker images are usually located in `/var/lib/docker`.  It would be worth checking firstly where this is located/mounted from and secondly how much free space is left on that partition.

There are more choice to make:

**Note:** Even the automatic method requires user input at the Ubuntu Installer stage

1. Automatically build an image using the `quick-start.sh` script (uses Docker containers)
..* Quickest and easiest
..* Doesn't allow for easy editing of the steps to create bespoke images
..* Keep the host machine clean - doesn't install packages onto it
..* Only requirement is to have Docker installed
2. Manually execute the steps to build an image inside a Docker container
..* Most control over how each component is installed - allows incremental edits
..* Keep the host machine clean - doesn't install packages onto it
..* Only requirement is to have Docker installed
3. Manually execute the stops to build an image on your host machine
..* Most control over how each component is installed - allows incremental edits
..* Host will be upgraded and packages will be installed directly onto the host
..* Only works on `apt` based distros (and only tested on Ubuntu)

### Option 1: Automatically build an image using the `quick-start.sh` script

**Note:** This options uses Docker containers

Issue the following command:

```
$ ./quick-start.sh
```

### Option 2: Manually execute the steps to build an image inside a Docker container

Firstly you will need to initialise the repository's sub-modules.  See the [Initialising the repository][#Initialising-the-repository] below.

Building these images within containers is the least intrusive method presented here.  The only prerequisites is that Docker is installed on the host (for help with this, please refer to your distro's documentation).  All other requirements pertain only to the running image/container, ensuring the host machine is kept as clean as possible.

**Note:** Something to bear in mind/read-up on; Running LibVirt in Docker requires the `--privileged` flag for networking purposes.

#### Creating the containerised build environment

If you're likely to be building more than one image, the same image multiple times or you think there is a chance of build failure, it is recommended that a base image is installed using the provided Dockerfile.  This will ensure the following, time consuming actions only take place once:

  1. Upgrade Bionic
  2. Install this project's basic prerequisites
  3. Install LibVirt/QEMU to run AArch64 VMs
  4. Install required packages to build the Linux kernel
  4. Install required packages to build the Grub bootloader

```
$ docker build -t aarch64-laptops-build-env:0.1 .
$ docker run -ti --privileged --name aarch64-laptops-ubuntu-vm                              \
	-v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts -v $PWD/src:/src \
	aarch64-laptops-build-env:0.1 /scripts/make-image.sh install-ubuntu
```

If you just want to go for it, hope for the best and not install the pre-configured build environment, use the raw image `ubuntu:bionic` instead.

**Note:"** If anything goes wrong during the install, you will have to upgrade the system and re-install all of the prerequisites again.  This all takes quite a lot of time.

```
$ docker run -ti --privileged --name ubuntu-bionic-image-built-`date +%m-%d_%H%M`           \
	-v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts -v $PWD/src:/src \
	ubuntu:bionic /scripts/make-image.sh install-ubuntu
```

### Option 3. Manually execute the stops to build an image on your host machine

**Note:** Only works on `apt` based distros (and only tested on Ubuntu)

Firstly you will need to initialise the repository's sub-modules.  See the [Initialising the repository](#Initialising-the-repository) below.

If there is a compelling reason preventing the use of Docker, the `scripts/make-image.sh` script can be executed directly on the host.  It requires escalated privileges and will firstly upgrade the current system, then install packages directly onto the host.

```
$ scripts/make-image.sh
```

## Further Reading

### Initialising the repository

Seeing as this option requires the image to be built from source, the Linux kernel and Grub bootloader source is required.  Fortunately, this project includes them as sub-modules.  To pull down the source issue the following commands:

```
$ git submodule init
$ git submodule update
```

If there have been updates since the submodules were initialised, issues these commands to pull down the changes:

```
git submodule update --remote src/linux
git submodule update --remote src/grub
```