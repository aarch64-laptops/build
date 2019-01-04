#  THIS README IS INCOMPLETE
# PLEASE DO NOT FOLLOW IT YET

# AArch64 Laptop Images

## Quick Start

### Use an existing pre-built SD card image

Only the latest Ubuntu LTS (currently Bionic) pre-built images are currently available.

Download [THIS IMAGE - TODO: UPDATE](www.link.com) and `dd` it to an SD card using the following command:

`$ xzcat <IMG>.xz | sudo dd of=/dev/<SD_CARD> oflag=direct bs=1M status=progress`

Note: <SD_CARD> is the whole card, not a partition e.g. `/dev/sda` and NOT `/dev/sda1`.

### Use the supplied helper scripts

This option is helpful if you want to create bespoke images.

#### Using Docker

Note: Something to bear in mind/read-up on; Running LibVirt in Docker requires the `--privileged` flag for networking purposes.

Building these images within containers is the least intrusive method presented here.  The only prerequisites is that Docker is installed on the host.  All other requirements pertain only to the running image/container, ensuring the host machine is kept as clean as possible.

##### Creating a base container image

If you're likely to be building more than one image, the same image multiple times or you think there is a chance of build failure, it is recomended that a base images is installed using the provided Dockerfile.  This will ensure the following, time consuming actions only take place once:

  1. Upgrade Bionic
  2. Install this project's basic prerequisites
  3. Install LibVirt/QEMU to run AArch64 VMs
  4. Install required packages to build the Linux kernel

```
$ docker build -t aarch64-laptops-build-env:0.1 .
$ docker run -ti --privileged --name aarch64-laptops-ubuntu-vm                              \
	-v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts -v $PWD/src:/src \
	aarch64-laptops-build-env:0.1 /scripts/make-image.sh install-ubuntu
```

If you just want to go for it and hope for the best, use the raw image `ubuntu:bionic` instead.

```
$ docker run -ti --privileged --name ubuntu-bionic-image-built-`date +%m-%d_%H%M`           \
	-v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts -v $PWD/src:/src \
	ubuntu:bionic /scripts/make-image.sh install-ubuntu
```

#### Without Docker

If there is a compelling reason preventing the use of Docker, the `scripts/make-image.sh` script can be executed directly on the host.  It requires escalated privileges and will install packages directly onto the host.
