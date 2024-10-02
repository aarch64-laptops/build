# AArch64 Laptop Images

## Warning - read this section first!

### It is not currently possible to recover these devices if something horrible happens

This project was solely designed with a view to help users and developers bootstrap Linux on their supported devices.  It is our aim, that in time, users will be able to take generic Linux distribution installers and use them directly to install Linux on these devices.  In the meantime, we provide the parts required to trial specific distributions so users can get a feel.

We take **no responsibility** for any damage caused as a result of its use/abuse of any of the information or artifacts provided by this project.  The software here is not locked down, hardened or tested to any commercially viable level.  Any issues that arise (deletion of critical partitions, Windows no longer bootable, damage of sensitive or critial data as a result of exposed UFS partitions, etc) are solely the **responsibility of the user** and the user alone.

## Contact us

### IRC

Have a question?  Fancy a chat?  You can find us on the OFTC IRC network at `#aarch64-laptops`

### Matrix

OFTC is linked with Matrix.  Find us here: https://matrix.to/#/#_oftc_#aarch64-laptops:matrix.org

### Mailing List

Updates and announcements are sent to the Mailing List.  Sign-up [HERE](https://lists.linaro.org/mailman/listinfo/aarch64-laptops)

## Device Status

### ASUS NovaGo TP370QL

- [x] Boots into Grub `Normal Mode`
- [x] Boots Linux kernel from rootfs' /boot partition (using Device Tree)
- [x] Boots to text Ubuntu login prompt/shell
- [x] SD Card Storage
- [x] USB
- [x] GUI Desktop (using Framebuffer)
- [x] Keyboard
- [x] Touchpad
- [x] Touchscreen
- [x] On-board Storage (UFS based)
- [ ] WiFi
- [ ] Bluetooth
- [ ] LTE
- [ ] Accelerated Graphics
- [ ] Audio

### HP Envy x2

- [x] Boots into Grub `Normal Mode`
- [x] Boots Linux kernel from rootfs' /boot partition (using Device Tree)
- [x] Boots to text Ubuntu login prompt/shell
- [x] SD Card Storage
- [x] USB
- [x] GUI Desktop (using Framebuffer)
- [x] Keyboard
- [x] Touchpad
- [ ] Touchscreen
- [x] On-board Storage (UFS based)
- [ ] WiFi
- [ ] Bluetooth
- [ ] LTE
- [ ] Accelerated Graphics
- [ ] Audio

### Lenovo Miix 630

- [x] Boots into Grub `Normal Mode`
- [x] Boots Linux kernel from rootfs' /boot partition (using Device Tree)
- [x] Boots to text Ubuntu login prompt/shell
- [x] SD Card Storage
- [x] USB
- [x] GUI Desktop (using Framebuffer)
- [x] Keyboard
- [x] Touchpad
- [x] Touchscreen
- [x] On-board Storage (UFS based)
- [ ] WiFi
- [ ] Bluetooth
- [ ] LTE
- [ ] Accelerated Graphics
- [ ] Audio

### Lenovo Yoga C630

- [x] Boots into Grub `Normal Mode`
- [x] Boots Linux kernel from rootfs' /boot partition (using Device Tree)
- [x] Boots to text Ubuntu login prompt/shell
- [x] USB
- [x] GUI Desktop (using Framebuffer)
- [x] Keyboard
- [x] Touchpad
- [x] Touchscreen
- [x] On-board Storage (UFS based)
- [x] WiFi (UFS based)
- [x] Bluetooth
- [ ] LTE
- [ ] Accelerated Graphics
- [x] Camera
- [x] Audio

* this works with recent kernels and instructions.

## Overview

In recent months, various laptop manufacturers (Asus, HP, Lenovo, etc) have released devices based on Qualcomm's Snapdragon 835 and 845.  The devices are delivered with Windows 10 pre-installed, but are able to run Linux.  Unfortunately, due to some pretty serious obstacles, simply running the AArch64 version of the Ubuntu (or any distro for that matter) installer is not enough (even with Secure Boot disabled).

## Installing

This project provides the user/owner some options to install Linux on these devices.  The choices are as follows:

1. Download a pre-built image and flash it onto an MicroSD card or USB flash drive
2. Download an enabled version of a distrobution installer and install to UFS
3. Use the `quick-start.sh` script to build your own image
4. Execute each of the steps manually (still using the other helper scripts) to create your own bespoke image

### Use an existing pre-built image

The only Ubuntu LTS pre-built image currently available is Ubuntu 18.04 (Bionic).

Download [THIS IMAGE](http://releases.linaro.org/aarch64-laptops/images/ubuntu/18.04/aarch64-laptops-bionic-prebuilt.img.xz) and head to the [Flashing the image](#Flashing-the-image) then [Booting into Ubuntu](#Booting-into-Ubuntu) sections below.

**Note:** The default credentials for this image are; username: `ubuntu` and password `ubuntu`.

### Use an enabled installer

1. Update Windows
  * **Note:** Required because shipped firmware does not have support to boot ISO images
  * Boot into Windows and shut down, allow the updates to install (takes a while)
  * Once updated, it should be possible to boot ISOs
2. Boot back into Windows and shrink the Windows partition
  * Resizing the Windows partition requires BitLocker to be disabled, as does booting without Secure Boot
    * Start Button > Settings > Update and Security > Device encryption > Turn off
  * Use the Disk Management tool to shrink the Windows partition
    * Right-click Start Button > Disk Management > Right-click C: > Shrink Volume
  * A shrink of anything upwards of (10000 MB) ~10GB should be okay
3. Switch out of S mode
  * **Note:** In order to run 'cmd.exe' et. al, Windows {Home,Pro} is required
  * Click Start Button > Settings (cog icon) > Update & Security > Activation > Go to the Store > Get
4. Disable Secure Boot in the BIOS
  * **Note:** Secure Boot will prevent unknown/unsigned images/ISOs to boot
  * Press 'Fn+F2' (or just 'F2' on some laptops) on boot to enter the BIOS
  * Select 'Security' tab > 'Secure Boot' > 'Disabled'
  * Select 'Exit' tab > 'Exit Saving Changes'
5. Download Dimitri's Bionic installer from [HERE](https://pskov.surgut.co.uk/bionic/daily-live/current/)
6. Flash installer onto a USB stick using `gnome-disks` 'Restore Disk Image' option
7. Boot the USB stick and select Install Ubuntu
8. Follow the prompts
  * Partitioner nuances
    * **WARNING:** When you come to the partitioner, make sure Windows is detected
      * The top option should be "Install Ubuntu alongside Windows Boot Manager"
        * If it is not, **STOP** - there isn't a known way to recover Windows if it's trashed
    * ISSUE: Occational error during the partitioning phase of the install
      * During install the partitioner can offer to create 2 new partitions [[IMAGE](https://photos.app.goo.gl/wv1E1K6cxnsfedrS9)]
        * This is not correct - only a single partition should be set-up
      * Partitioning of EFI (#5 in this case) will fail with an error message [[IMAGE](https://photos.app.goo.gl/ZTSidLNYjX1ybtLZA)]
      * If this happens, select "Install Ubuntu alongside Windows Boot Manager" again
        * This should culminate in a successful install
      * If the install appears to stall (no progress bar) after some time, you may need to reboot and start again.  The partitioner should only offer to create a single partition (#5) this time and everything should go smoothly
9. Once installed, boot back into Windows and open the Admin CMD console
  * Right-click Start Button > Command Prompt (Admin)
  * Carefully type `bcdedit /set {bootmgr} path \EFI\ubuntu\grubaa64.efi`
10. Reboot
11. Grub should now be the default bootloader
  * From here you can select to boot into 'Ubuntu' or 'Windows Boot Manager' [[IMAGE](https://photos.app.goo.gl/bHiEVer5mDic8LVg6)]

### Building your own image(s)

This option is helpful if you want to create bespoke images, or if you want to see how the build process works.

**Note:** Whichever method of building your own images you choose, please be aware that a lot of disk space will be required.  The VM image, which will become the final image will be around 8GB and the Linux kernel source is around 1.5GB.  On top of this, if one of the docker methods are selected, space will be required for the Docker images.  Docker images are usually located in `/var/lib/docker`.  It would be worth checking firstly where this is located/mounted and secondly how much free space is left on that partition.

There are more choices to make:

**Note:** Even the automatic method requires user input at the Ubuntu Installer stage.

1. Automatically build an image using the `quick-start.sh` script (uses Docker containers)
  * Quickest and easiest
  * Doesn't allow for easy editing of the steps to create bespoke images
  * Keeps the host machine clean - doesn't install packages onto it
  * Only requirement is to have Docker installed
2. Manually execute the steps to build an image inside a Docker container
  * Most control over how each component is installed - allows incremental edits
  * Keeps the host machine clean - doesn't install packages onto it
  * Only requirement is to have Docker installed
3. Manually execute the stops to build an image on your host machine
  * Most control over how each component is installed - allows incremental edits
  * Host will be upgraded and packages will be installed directly onto the host
  * Only works on `apt` based distros (and only tested on Ubuntu)

#### Option 1: Automatically build an image using the `quick-start.sh` script

**Note:** This option uses Docker containers.

Firstly you will need to initialise the repository's sub-modules.  See the [Initialising the repository](#Initialising-the-repository) below.

Now issue the following command:

```
$ ./quick-start.sh
```

**Note:** Image creation using the `quick-start.sh` script is not a completely automated process.  The user will still be required to manually go through the Ubuntu Installer and to enter their chosen username & password (twice - once for upload and the other to run the `setup-vm.sh` script with escalated privileges) during the package upload (to the VM) process.

**IMPORTANT:** It is of the utmost importance that SSH is installed as part of this process, or you will have to find a way to install it retroactively (it is possible, but is a pain).  SSH is used to transport the package archive and configure scripts into the VM for installation/execution.

If successful an image named `aarch64-laptops-ubuntu.img` should be located in the `output` directory.

If it's present, head to the [Flashing the image](#Flashing-the-image) then [Booting into Ubuntu](#Booting-into-Ubuntu) sections below.

#### Option 2: Manually execute the steps to build an image inside a Docker container

Firstly you will need to initialise the repository's sub-modules.  See the [Initialising the repository](#Initialising-the-repository) below.

Building these images within containers is the least intrusive method to build your own image presented here.  The only prerequisite is that Docker is installed on the host (for help with this, please refer to your distro's documentation).  All other requirements pertain only to the running image/container, ensuring the host machine is kept as clean as possible.

**Note:** Something to bear in mind/read-up on; Running LibVirt in Docker requires the `--privileged` flag for networking purposes.

##### Installing Ubuntu into the VM

This stage requires the most amount of user interaction.  Once the installer starts you will be required to go through each stage to install your bespoke version of Ubuntu Bionic.

**IMPORTANT:** It is of the utmost importance that SSH is installed as part of this process, or you will have to find a way to install it retroactively (it is possible, but is a pain).  SSH is used to transport the package archive and configure scripts into the VM for installation/execution.

###### Using the containerised build environment to build Ubuntu

If it is likely that you will be building more than one image, the same image multiple times or you think there is a chance of build failure, it is recommended that a base image is installed using the provided Dockerfile.  This will ensure the following, time consuming actions only take place once:

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

###### Skipping the containerised build environment stage

If however, you just want to go for it, hope for the best and not install the pre-configured build environment, use the raw `ubuntu:bionic` image instead.

**Note:** Using the containerised build environment is advised.  If anything goes wrong during the install, you will have to upgrade the system and re-install all of the prerequisites again.  This all takes quite a lot of time.

```
$ docker run -ti --privileged --name aarch64-laptops-ubuntu-vm                             \
       -v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts                  \
       -v $PWD/src:/src   -v $PWD/output:/var/lib/libvirt/images                           \
       ubuntu:bionic /scripts/make-image.sh --install-ubuntu
```

To save this container (required for further steps) do:

```
$ docker commit aarch64-laptops-ubuntu-vm aarch64-laptops-ubuntu-vm:0.1

# Optionally, remove the unused container
$ docker rm aarch64-laptops-ubuntu-vm
```

##### Building the Linux kernel

The Linux kernel is built from source.  It should have been checked out during the initialisation stage (if you did not see the [Initialising the repository](#Initialising-the-repository) section below and carry out the actions, please do so before executing this step).  The Linux kernel source is located in `src/linux`.

```
$ docker run -ti --rm --name aarch64-laptops-kernel                                        \
       -v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts -v $PWD/src:/src \
       aarch64-laptops-build-env:0.1 /scripts/make-image.sh --build-kernel
```

##### Building the Grub bootloader

The Grub bootloader is built from source.  It should have been checked out during the initialisation stage (if you did not see the [Initialising the repository](#Initialising-the-repository) section below and carry out the actions, please do so before executing this step).  The Grub bootloader source is located in `src/grub`.

```
$ docker run -ti --rm --name aarch64-laptops-grub                                          \
       -v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts -v $PWD/src:/src \
       aarch64-laptops-build-env:0.1 /scripts/make-image.sh --build-grub
```

##### Installing built packages into the VM and executing the configure stage

```
$ docker run -ti --rm --privileged --name aarch64-laptops-ubuntu-vm-setup                  \
       -v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts                  \
       -v $PWD/src:/src   -v $PWD/output:/var/lib/libvirt/images                           \
       aarch64-laptops-ubuntu-vm:0.1 /scripts/make-image.sh --setup-vm
```

If successful an image named `aarch64-laptops-ubuntu.img` should be located in the `output` directory.

If it's present, head to the [Flashing the image](#Flashing-the-image) then [Booting into Ubuntu](#Booting-into-Ubuntu) sections below.

#### Option 3. Manually execute the steps to build an image on your host machine

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

If it's present, head to the [Flashing the image](#Flashing-the-image) then [Booting into Ubuntu](#Booting-into-Ubuntu) sections below.

## Flashing the image

**Note**: An 8G MicroSD card or USB flash drive (or larger if you plan on installing packages) will be required.

The final image may be in one of two states; `raw` or `xz compressed`.  If the image is compressed you will require `xz` utilities to extract the image before flashing can commence.  Please check your Distro's documentation to find out which package they reside.

If the image has an `*.xz` file extension it is `xz compressed`.  These images are firstly extracted using `xzcat` and flashed to the MicroSD card or USB flash drive using `dd`:

### Option 1

Use the provided `scripts/flash-prebuilt.sh` script.

For example, if you want to boot the image on the Lenovo Yoga C630:

```
$ ./scripts/flash-prebuilt.sh lenovo-yoga-c630 /dev/<DEVICE> <IMAGE>
```

**Note**: <DEVICE> is the whole device, not a partition e.g. `/dev/sda` and NOT `/dev/sda1`.

**Note**: See the help for more options/devices.

### Option 2

Manually copy the image to the boot media.

If the image has an `*.xz` file extension it is an `XZ compressed` image.  This images are flashed using a combination of `xcat` and `dd`:

```
$ xzcat <IMG>.xz | sudo dd of=/dev/<DEVICE> oflag=direct bs=1M status=progress iflag=fullblock
```

If the image has an `*.img` file extension it is a `raw` image.  These images are flashed using `dd` only:

```
$ sudo dd if=<IMG>.img of=/dev/<DEVICE> oflag=direct bs=1M status=progress
```

**Note**: <DEVICE> is the whole device, not a partition e.g. `/dev/sda` and NOT `/dev/sda1`.

If you created a generic image (i.e. not using `./quick-start.sh <MODEL>`), then you will need to mount the boot device and link `laptops.dtb` with the specific DTB for your hardware.

For example, if you have the Lenovo Yoga C630:

```
$ sudo mount /dev/<DEVICE>2/ /mnt
$ cd /mnt/boot
$ ln -s laptop-lenovo-yoga-c630.dtb laptop.dtb
$ cd -
$ umount /mnt
```

## Booting into Ubuntu

This project doesn't yet support Secure Boot.  Thus it needs to be disabled before we can boot into this project's resultant Linux image.

### Disabling Secure Boot on the ASUS NovaGo TP370QL

1. Power off the machine
2. Hold down the Power and Volume Up buttons until the BDS Menu appears
3. Either press '1' or use the arrow keys to highlight the `1 Disable Secure Boot` option and press return
4. Press Volume Up to confirm
5. Press any other key to continue
6. Select `6 Shutdown` option (same method as above)

### Disabling Secure Boot on the HP Envy x2

**Note:** The HP Envy x2 does not appear to boot from the MicroSD Card automatically.

1. Power off the machine
2. Press and release the Power button, then press Esc repeatedly - the Startup Menu should appear
3. **BEWARE: THIS STEP IS NOT ADVISED - DO THIS AT YOUR OWN RISK !!**
  * During testing we used the `Clear All Secure Boot Keys` to boot Linux
    * Obviously this might have serious side-effects - thus we do not condone this action

### Disabling Secure Boot on the Lenovo C630

**Note:** While you are in the BIOS, another option you might wish to toggle is under Configuration / Hotkey Mode.  This lets you change the row of function keys, so that they behave as F1-F12 by default, rather than having to press 'Fn' first.

#### Option 1 - Using a key combination

1. Press Fn-F2 (or F2 if Hotkey Mode has already been toggled) during power up, to enter the BIOS
2. Go into the Security tab
3. Change Secure Boot to Disabled

#### Option 2 - Using Microsoft Windows

1.  Boot into Microsoft Windows
2.  Go into Settings
3.  Select the Update & Security tile
4.  Select Recovery from the left side panel
5.  Under Advanced setup select Restart now
6.  Highlight Troubleshoot and press Enter
7.  Highlight Advanced options and press Enter
8.  Highlight UEFI Firmware Settings and press Enter
9.  Select Restart
10. Go into the Security tab
11. Change Secure Boot to Disabled

#### Option 3 - Using the Grub bootloader

1. Boot to the Grub menu
2. Select System Setup
3. Go into the Security tab
4. Change Secure Boot to Disabled

### Booting from MicroSD card on the ASUS NovaGo TP370QL

The MicroSD card is inserted into a small plastic (fragile) receiver/slide which is pushed into the side of the laptop chassis.  To eject it you will require a paperclip or similar thin, stiff implement.  Push your tool of choice into the tiny hole and the receiver/slide should protrude out.  Simply, but very carefully insert the MicroSD card into the receiver/slide and gently push it back into the machine - it should lay flush.

Now power up the machine.  It should boot to a Ubuntu login prompt.  The credentials of which you set-up during the install stage.

### Booting the HP Envy x2 from MicroSD card (booting from USB should be automatic)

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

Now power up the machine.  It should boot to a Ubuntu login prompt.  The credentials of which you set-up during the install stage.

### Booting from USB

1. Place the USB flash drive into the USB port

Now power up the machine.  It should boot to a Ubuntu login prompt.  The credentials of which you set-up during the install stage.

### Using larger SD cards or USB flash drives

Since this project uses pre-built images, the root partition is limited to around 7GB.  If you have used a larger device and wish to expand the partition please search the internet for something along the lines of "reclaim SD card space".  There are literally 100s of articles on how to do this, mostly pertaining to the Raspberry Pi.

**Note:** We found that simply opening it up in `gparted` was the simplest option.

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

### Testing GPU support

Please see the GPU [README](misc/lenovo-yoga-c630/gpu/README.md)

### Testing WiFi support

Please see the WiFi [README](misc/lenovo-yoga-c630/wifi/README.md).

## Trouble Shooting

### Updating from an older image/installer

**Note:** An older image will contain a v5.0.1 kernel

```
$ uname -r
5.0.1-laptops0.1-generic
```

#### Option 1: BEST

If at all possible, please reinstall using the latest installer using these [instructions](#Use-an-enabled-installer)

**Note:** Doing so will save lots of messing around with kernel versions

#### Option 2: SUBOPTIMAL

**Note:** Only choose this option if you can't reinstall or used the new image/installer

**WARNING:** This option will require a little messing around

1. Ensure no other instance of apt is running
```
$ sudo fuser -vki /var/lib/dpkg/lock
```
2. Remove snapd (or the update process will freeze during the upgrade)
```
$ sudo apt remove snapd
```
3. Update Bionic's installed packages
```
$ sudo apt update && sudo apt dist-upgrade
```
4. Remove the currently running kernel (or it will clash the the new versioning semantics)
```
$ sudo apt remove *5.0.1-laptops* *5.2.0-99* linux-generic \
    linux-headers-generic linux-image-generic
$ sudo apt install linux-generic
```
  * Select 'No' when presented with "abort installation" ncurses screeen
5. Ensure the EFI workaround will persist over the upgrade
```
$ sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="/GRUB_CMDLINE_LINUX_DEFAULT="efi=novamap /' \
    /etc/default/grub
```
6. Tell the Update Manager to conduct 'normal' (instead of LTS) upgrades
```
$ sudo sed -i s/Prompt=lts/Prompt=normal/ /etc/update-manager/release-upgrades
```
7. Do the upgrade
```
$ sudo do-release-upgrade
```
* Follow the prompts
8. Reboot
```
$ sudo reboot
```
9. Re-install snapd
```
$ sudo apt install snapd
```
