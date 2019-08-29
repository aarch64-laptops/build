# GPU (EVALUATION)

## Pre-built image

A GPU evalutation image has been created for your convienience [HERE](http://people.linaro.org/~lee.jones/aarch64laptops/aarch64-laptops-eoan.img.xz).

To install it, see the [Flashing the image](https://github.com/aarch64-laptops/build#Flashing-the-image) section in the top level README.md.

## Installing support yourself

### Install/upgrade to MESA >v19.1

The latest version of Eoan provides this in the standard repos.

If you do not want to use Eoan, you may have to build MESA from source.

### Obtain and build an enabled kernel

One has been built for your convienience [HERE](https://github.com/aarch64-laptops/build/blob/master/misc/lenovo-yoga-c630/gpu/debs/linux-image-5.3.0-rc1_arm64-gpu.deb)

And a pre-built DTB is available [HERE](https://github.com/aarch64-laptops/build/blob/master/misc/lenovo-yoga-c630/gpu/dtb/sdm850-lenovo-yoga-c630.dtb)

If you wish to build them for yourself do:

```
$ git clone https://github.com/aarch64-laptops/linux.git
$ git checkout origin/gpu -b gpu

$ ccache make -j $(nproc)                       \
    ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
    KBUILD_OUTPUT=../build-arm64                \
    dtbs

$ ccache make -j $(nproc)                       \
    ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
    KBUILD_OUTPUT=../build-arm64

$ ccache make -j $(nproc)                       \
    ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
    KBUILD_OUTPUT=../build-arm64                \
    bindeb-pkg
```

This will result in a `linux-image-*.deb` file in the parent directory that you can install with `dpkg
-i`.

### Obtain and install firmwares

* a630_sqe.fw
  * LINK: http://releases.linaro.org/96boards/dragonboard845c/qualcomm/firmware/
    * FILE: RB3_firmware_20190529180356-v2/18-adreno-fw/
* a630_gmu.fw
  * LINK: http://releases.linaro.org/96boards/dragonboard845c/qualcomm/firmware/
    * FILE: RB3_firmware_20190529180356-v2/18-adreno-fw/
* a630_zap.mdt **and** a630_zap.b0{0,1,2,3}
  * LINK: qcdx850.inf_arm64_* (C:\Windows\System32\DriverStore\FileRepository)
    * FILE: Bound up in qcdxkmsuc850.mbn (use Windows search to locate it)

```
$ mv qcdxkmsuc850.mbn a630_zap.mdt
$ mv a630_gmu.bin  /lib/firmware/qcom/
$ mv a630_sqe.fw   /lib/firmware/qcom/
$ mv a630_zap.mdt  /lib/firmware/qcom/
```

### Testing

Install and start Super Tux Kart

```
$ sudo apt install supertuxkart
$ supertuxkart
```

If it runs smootly, the GPU is working.

## Trouble Shooting

Ensure you are selecting the enabled kernel at boot up and that Grub is using the correct DTB.

You can check this in `/boot/grub/grub.cfg`.
