FROM ubuntu:bionic

# Creates a Ubuntu based containerised build environment to use as a base for building SD card images
# Building a base image will save time in case of a re-build and/or premature failure

# 1. Upgrade Bionic
# 2. Install this project's basic prerequisites
# 3. Install LibVirt/QEMU to run AArch64 VMs
# 4. Install required packages to build the Linux kernel
RUN set -ex;                                   \
    apt update;                                \
    apt upgrade -y;                            \
    apt install -y                             \
        software-properties-common             \
        wget;                                  \
    add-apt-repository -y cloud-archive:rocky; \
    apt install -y                             \
        qemu-efi                               \
        virt-manager                           \
        libvirt-bin                            \
        qemu-guest-agent                       \
        qemu-system-aarch64;                   \
    apt install -y                             \
        build-essential                        \
        ccache                                 \
        bison                                  \
        flex                                   \
        bc                                     \
        libssl-dev                             \
        cpio                                   \
        gcc-aarch64-linux-gnu

# Create mount points
VOLUME /isos /output /scripts /src
