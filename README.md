# AArch64 Laptop Images

## Device Status

### ASUS SonicMaster TP370QL

- [x] Boots into Grub `Normal Mode`
- [x] Boots Linux kernel from rootfs (using Device Tree)
- [x] Boots to Ubuntu login prompt/shell
- [ ] USB working
- [ ] On-board Storage accessible (UFS based)
- [ ] WiFi functional (UFS based)

* USB patches by Jeffrey Hugo have been seen on the [LIST](https://lkml.org/lkml/2019/1/4/366)
  * Will pull these in once they've been reviewed
* UFS support is being actively worked on upstream by Marc Gonzalez
  * Both Storage and WiFi depend on UFS support

### HP Envy x2

- [x] Boots into Grub `Normal Mode`
- [x] Boots Linux kernel from rootfs (using Device Tree)
- [ ] Boots to Ubuntu login prompt/shell
- [ ] USB working
- [ ] On-board storage accessible
- [ ] WiFi functional

* Currently only boots into initramfs
  * Unable to find the (MicroSD card based) rootfs
  * Believed to be a Clock and/or Regulator issue

## Overview

In recent months, various laptop manufacturers (Asus, HP, Lenovo, etc) have released devices based on Qualcomm's Snapdragon 835.  The devices are delivered with Windows 10 pre-installed, but are able to run Linux.  Unfortunately, due to some pretty serious obstacles, simply running the AArch64 version of the Ubuntu (or any distro for that matter) installer is not enough (even with Secure Boot disabled).

This project provides the user/owner some options to install Linux on these devices.  The choices are as follows:

1. Download a pre-built MicroSD card image and flash it onto an MicroSD card
2. Use the `quick-start.sh` script to install your own bespoke image
3. Execute each of the steps manually (still using the other helper scripts)

## Use an existing pre-built MicroSD card image

Only the latest Ubuntu LTS (currently Bionic) pre-built images are currently available.

Download [THIS IMAGE](https://github.com/aarch64-laptops/prebuilt/raw/master/aarch64-laptops-bionic-prebuilt.img.xz) and head to the [Flashing the image](#Flashing-the-image) section below.

*Note:* The default credentials for this image are; username: `ubuntu` and password `ubuntu`.

## Building your own image(s)

This option is helpful if you want to create bespoke images, or if you want to see how the build process works.

**Note:** Whichever method of building your own images you choice, please be aware that a lot of disk space will be required.  The VM image, which will become the final MicroSD card image will be around 4GB and the Linux kernel source is around 1.5GB.  On top of this, if one of the docker methods are selected, space will be required for the Docker images.  Docker images are usually located in `/var/lib/docker`.  It would be worth checking firstly where this is located/mounted from and secondly how much free space is left on that partition.

There are more choice to make:

**Note:** Even the automatic method requires user input at the Ubuntu Installer stage.

1. Automatically build an image using the `quick-start.sh` script (uses Docker containers)
  * Quickest and easiest
  * Doesn't allow for easy editing of the steps to create bespoke images
  * Keep the host machine clean - doesn't install packages onto it
  * Only requirement is to have Docker installed
2. Manually execute the steps to build an image inside a Docker container
  * Most control over how each component is installed - allows incremental edits
  * Keep the host machine clean - doesn't install packages onto it
  * Only requirement is to have Docker installed
3. Manually execute the stops to build an image on your host machine
  * Most control over how each component is installed - allows incremental edits
  * Host will be upgraded and packages will be installed directly onto the host
  * Only works on `apt` based distros (and only tested on Ubuntu)

### Option 1: Automatically build an image using the `quick-start.sh` script

**Note:** This option uses Docker containers.

Firstly you will need to initialise the repository's sub-modules.  See the [Initialising the repository](#Initialising-the-repository) below.

Now issue the following command:

```
$ ./quick-start.sh
```

*Note:*: Image creation using the `quick-start.sh` script is not a completely automated process.  The user will still be required to manually go through the Ubuntu Installer and to enter their chosen username & password (twice - once for upload and the other to run the `setup-vm.sh` script with escalated privileges) during the package upload (to the VM) process.

If successful an image named `aarch64-laptops-ubuntu.img` should be located in the `output` directory.

If it's present, head to the [Flashing the image](#Flashing-the-image) section below.

### Option 2: Manually execute the steps to build an image inside a Docker container

Firstly you will need to initialise the repository's sub-modules.  See the [Initialising the repository](#Initialising-the-repository) below.

Building these images within containers is the least intrusive method to build your own image presented here.  The only prerequisite is that Docker is installed on the host (for help with this, please refer to your distro's documentation).  All other requirements pertain only to the running image/container, ensuring the host machine is kept as clean as possible.

**Note:** Something to bear in mind/read-up on; Running LibVirt in Docker requires the `--privileged` flag for networking purposes.

#### Installing Ubuntu into the VM

This stage requires the most amount of user interaction.  Once the installer starts you will be required to go through each stage to install your bespoke version of Ubuntu Bionic.

**IMPORTANT:** It is of the utmost importance that SSH is installed as part of this process, or you will have to find a way to install it retroactively (it is possible, but is a pain).  SSH is used to transport the package archive and configure scripts into the VM for install/execution.

##### Using the containerised build environment to build Ubuntu

If you're likely to be building more than one image, the same image multiple times or you think there is a chance of build failure, it is recommended that a base image is installed using the provided Dockerfile.  This will ensure the following, time consuming actions only take place once:

  1. Upgrade Bionic
  2. Install this project's basic prerequisites
  3. Install LibVirt/QEMU to run AArch64 VMs
  4. Install required packages to build the Linux kernel
  4. Install required packages to build the Grub bootloader

```
$ docker build -t aarch64-laptops-build-env:0.1 .
$ docker run -ti --privileged --name aarch64-laptops-ubuntu-vm                             \
       -v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts                  \
       -v $PWD/src:/src   -v $PWD/output:/var/lib/libvirt/images                           \
       aarch64-laptops-build-env:0.1 /scripts/make-image.sh --install-ubuntu
```

##### Skipping the containerised build environment stage

If however, you just want to go for it, hope for the best and not install the pre-configured build environment, use the raw `ubuntu:bionic` image instead.

**Note:** Using the containerised build environment is advised.  If anything goes wrong during the install, you will have to upgrade the system and re-install all of the prerequisites again.  This all takes quite a lot of time.

```
$ docker run -ti --privileged --name aarch64-laptops-ubuntu-vm                             \
       -v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts                  \
       -v $PWD/src:/src   -v $PWD/output:/var/lib/libvirt/images                           \
       ubuntu:bionic /scripts/make-image.sh --install-ubuntu
```

To save this container, along with the Ubuntu Bionic based VM as an image (required for further steps) do:

```
$ docker commit aarch64-laptops-ubuntu-vm aarch64-laptops-ubuntu-vm:0.1

# Optionally, remove the unused container
$ docker rm aarch64-laptops-ubuntu-vm
```

#### Building the Linux kernel

The Linux kernel is built from source.  It should have been checked out during the initialisation stage (if you did not see the [Initialising the repository](#Initialising-the-repository) section below and carry out the actions, please do so before executing this step).  The Linux kernel source is located in `src/linux`.

```
$ docker run -ti --rm --name aarch64-laptops-kernel                                        \
       -v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts -v $PWD/src:/src \
       aarch64-laptops-build-env:0.1 /scripts/make-image.sh --build-kernel
```

#### Building the Grub bootloader

The Grub bootloader is built from source.  It should have been checked out during the initialisation stage (if you did not see the [Initialising the repository](#Initialising-the-repository) section below and carry out the actions, please do so before executing this step).  The Grub bootloader source is located in `src/grub`.

```
$ docker run -ti --rm --name aarch64-laptops-grub                                          \
       -v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts -v $PWD/src:/src \
       aarch64-laptops-build-env:0.1 /scripts/make-image.sh --build-grub
```

#### Installing built packages into the VM and executing the configure stage

```
$ docker run -ti --rm --privileged --name aarch64-laptops-ubuntu-vm-setup                  \
       -v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts                  \
       -v $PWD/src:/src   -v $PWD/output:/var/lib/libvirt/images                           \
       aarch64-laptops-ubuntu-vm:0.1 /scripts/make-image.sh --setup-vm
```

If successful an image named `aarch64-laptops-ubuntu.img` should be located in the `output` directory.

If it's present, head to the [Flashing the image](#Flashing-the-image) section below.

### Option 3. Manually execute the stops to build an image on your host machine

**Note:** Only works on `apt` based distros (and only tested on Ubuntu).

Firstly you will need to initialise the repository's sub-modules.  See the [Initialising the repository](#Initialising-the-repository) below.

If there is a compelling reason preventing the use of Docker, the `scripts/make-image.sh` script can be executed directly on the host.  It requires escalated privileges and will firstly upgrade the current system, then install packages directly onto the host.

```
$ scripts/make-image.sh --install-ubuntu
$ scripts/make-image.sh --build-kernel
$ scripts/make-image.sh --build-grub
$ scripts/make-image.sh --setup-vm
```

If successful an image named `aarch64-laptops-ubuntu.img` should be located in the `/var/lib/libvirt/images` directory.

If it's present, head to the [Flashing the image](#Flashing-the-image) section below.

## Further Reading

### Initialising the repository

Seeing as this option requires the image to be built from source, the Linux kernel and Grub bootloader source is required.  Fortunately, this project includes them as sub-modules.  To pull down the source issue the following commands:

```
$ git submodule init
$ git submodule update # 1.5GB takes around 20 minutes on a 10Mb connection to checkout the Linux kernel
```

If there have been updates since the submodules were initialised, issues these commands to pull down the changes:

```
git submodule update --remote src/linux
git submodule update --remote src/grub
```

### Flashing the image

**Note**: A 4G MicroSD card (or larger if you plan on installing packages) will be required.

The final image may be in one of two states; `raw` or `xz compressed`.  If the image is compressed you will require `xz` utilities to extract the image before flashing can commence.  Please check your Distro's documentation to find out which package they reside in.

If the image has an `*.xz` file extension it is `xz compressed`.  These images are firstly extracted using `xzcat` and flashed to the MicroSD card using `dd`:

```
$ xzcat <IMG>.xz | sudo dd of=/dev/<SD_CARD> oflag=direct bs=1M status=progress
```

If the image has an `*.img` file extension it is a `raw` image.  This images are flashed using `dd` only:

```
$ sudo dd if=<IMG>.img of=/dev/<SD_CARD> oflag=direct bs=1M status=progress
```

**Note**: <SD_CARD> is the whole card, not a partition e.g. `/dev/sda` and NOT `/dev/sda1`.

### Booting into Ubuntu

This project doesn't yet support Secure Boot.  Thus it needs to be disabled before we can boot into this project's resultant Linux image.

#### Disabling Secure Boot on the ASUS SonicMaster TP370QL

1. Power off the machine
2. Hold down the Power and Volume Up buttons until the BDS Menu appears
3. Either press '1' or use the arrow keys to highlight the `1 Disable Secure Boot` option and press return
4. Press Volume Up to confirm
5. Press any other key to continue
6. Select `6 Shutdown` option (same method as above)

#### Disabling Secure Boot on the HP Envy x2

**Note:** The HP Envy x2 does not appear to boot from the MicroSD Card automatically.

1. Power off the machine
2. Press and release the Power button, then press Esc repeatedly - the Startup Menu should appear
3. **BEWARE: THIS STEP IS NOT ADVISED - DO THIS AT YOUR OWN RISK !!**
  * During testing we used the `Clear All Secure Boot Keys` to boot Linux
    * Obviously this might have serious side-effects - thus we do not condone this action

#### Inserting the MicroSD card

The MicroSD card is inserted into a small plastic (fragile) receiver/slide which is pushed into the side of the laptop chassis.  To eject it you will require a paperclip or similar thin, stiff implement.  Push your tool of choice into the tiny hole and the receiver/slide should protrude out.  Simply, but very carefully insert the MicroSD card into the receiver/slide and gently push it back into the machine - it should lay flush.

Now power up the machine.  It should boot to a Ubuntu login prompt.  The credentials of which you set-up during the install stage.

#### Booting the ASUS SonicMaster TP370QL

1. Simply press the power button - should boot automatically

#### Booting the HP Envy x2

**Note:** The HP Envy x2 does not appear to boot from the MicroSD Card automatically.

1. Power off the machine
2. Press and release the Power button, then press Esc repeatedly - the Startup Menu should appear
3. Press the F9 key for `Boot Device Options`
4. Select `Boot From EFI File`
5. Navigate to the MicroSD card (it will be one of the `VenHw*HD(Part1` devices)
  * Once selected, only `<EFI>` should be present.
    * If it's missing or there are more than just this directory shown, press Esc and try another device
  * The MicroSD card was always the 3rd one from the bottom during our testing
6. Navigate though `<EFI> -> <BOOT> -> BOOTAA64.EFI`

### Using larger MicroSD cards

Since this project uses pre-built MicroSD card images, the root partition is limited to around 4GB.  If you have used a larger card and wish to expand the partition please search the internet for something along the lines of "reclaim SD card space".  There are literally 100s of articles on how to do this, mostly pertaining to the Raspberry Pi.
