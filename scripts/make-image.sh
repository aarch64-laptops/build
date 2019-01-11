#!/bin/bash

# Exit on error (saves checking the return value of every command)
set -e

# DEBUG: Uncomment to enable
# set -x

ISO=ubuntu-18.04.1-server-arm64.iso
ISODIR=./isos
SRCDIR=./src
OUTDIR=./output
INCONTAINER=""
FORCE=""
SUDO=""

print_red()
{
    echo -e "\e[01;31m$@ \e[0m"
}

startup_checks()
{
    # Ensure distro is supported (users are free to edit this to fit their needs)
    if [ ! -f /etc/lsb-release ]; then
	print_red "This script only currently supports Ubuntu - edit as necessary"
	return 1
    fi

    # Are we running in a supported container?
    if [ -d /isos ] && [ -d /output ] && [ -d /scripts ]; then
	print_red "Running inside a supported container"
	INCONTAINER=true
	ISODIR=/isos
	OUTDIR=/output
	SRCDIR=/src
    else
	if [ ! -d isos ] || [ ! -d output ] || [ ! -d scripts ]; then
	    print_red "$0 should be executed from this project's root directory"
	    return 1
	fi
	print_red "Running outside of the supported container environment"
    fi

    # `sudo` is not required in containerised environments
    if which sudo > /dev/null; then
	SUDO=sudo
    fi
}

install_prerequisites()
{
    print_red "Update local package cache"
    $SUDO apt-get update

    print_red "Install prerequisites"
    $SUDO apt-get install -y         \
	software-properties-common \
	wget
}

upgrade_system()
{
    $SUDO apt-get upgrade
}

check_for_qemu_updates()
{
    # See: https://wiki.ubuntu.com/OpenStack/CloudArchive

    if grep -q cosmic /etc/lsb-release; then
	print_red "Cosmic detected - no QEMU updates required"
	return
    fi
    
    if grep -q xenial /etc/lsb-release; then
	print_red "Xenial detected - using Pike QEMU updates"
	$SUDO add-apt-repository -y cloud-archive:pike
    fi

    if grep -q bionic /etc/lsb-release; then
	print_red "Bionic detected - using Rocky QEMU updates"
	$SUDO add-apt-repository -y cloud-archive:rocky
    fi

    $SUDO apt-get update
}

install_vm_packages()
{
    $SUDO apt-get install -y  \
	qemu-efi              \
	virt-manager          \
	libvirt-bin           \
	qemu-guest-agent      \
	qemu-system-aarch64
}

start_libvirt()
{
    $SUDO service libvirtd start
    $SUDO service virtlogd start
}

download_lts_iso()
{
    if [ -f $ISODIR/$ISO ]; then
	print_red " $ISO already exists - skipping"
	return
    fi

    wget -P $ISODIR http://cdimage.ubuntu.com/releases/18.04/release/$ISO
}

start_ubuntu_installer()
{
    vm=aarch64-laptops-bionic

    print_red "                                               "
    print_red " *** DON'T FORGET TO INSTALL THE SSH SERVER ***"
    print_red "         Required for additional steps         "
    print_red "                                               "
    print_red " Press return and follow the prompts ...       "
    read

    virt-install --accelerate --cdrom $ISODIR/$ISO --disk size=4,format=raw \
	--name $vm --os-type linux --ram 2048 --arch aarch64 --noreboot
}

install_ubuntu()
{
    print_red "Installing prerequisites"
    install_prerequisites

    print_red "Upgrading system (requires privilege escalation)"
    upgrade_system

    print_red "Checking for QEMU updates"
    check_for_qemu_updates

    print_red "Installing VM packages (requires privilege escalation)"
    install_vm_packages

    print_red "Enabling LibVirt (requires privilege escalation)"
    start_libvirt

    print_red "Downloading latest Ubuntu LTS ISO (Ubuntu Bionic)"
    download_lts_iso

    print_red "Installing Ubuntu into a VM"
    start_ubuntu_installer
}

build_kernel()
{
    cd $SRCDIR/linux

    if ls $OUTDIR/linux-*.deb > /dev/null 2>&1; then
	if [ ! $FORCE ]; then
	    print_red "$OUTDIR already contains kernel debs - use -f to overwrite them"
	    return 1
	fi
	rm linux-*.deb
	rm $OUTDIR/linux-*.deb
    fi

    ccache make                                     \
	ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
	KBUILD_OUTPUT=/src/linux/build-arm64        \
	laptops_defconfig

    ccache make -j $(nproc)                         \
	ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
	KBUILD_OUTPUT=/src/linux/build-arm64        \
	bindeb-pkg

    cp linux-*.deb $OUTDIR
}

build_grub()
{
    cd $SRCDIR/grub

    print_red "Configuring Grub"
    ./autogen.sh
    ./configure --target=aarch64-linux-gnu

    print_red "Compiling Grub"
    make -j $(nproc)

    print_red "Creating Grub image ($OUTDIR/BOOTAA64.EFI)"
    ./grub-mkimage --directory grub-core --prefix /boot/grub \
	--output $OUTDIR/BOOTAA64.EFI --format arm64-efi
}


GETOPT=`getopt -o f --long install-ubuntu,build-kernel,build-grub,setup-vm -- "$@"`
eval set -- "$GETOPT"

while true; do
    case $1 in
	--install-ubuntu)
	    INSTALL_UBUNTU=true
	    shift
	    ;;
	--build-kernel)
	    BUILD_KERNEL=true
	    shift
	    ;;
	--build-grub)
	    BUILD_GRUB=true
	    shift
	    ;;
	--setup-vm)
	    SETUP_VM=true
	    shift
	    ;;
	-f)
	    FORCE=true
	    shift
	    ;;
	--)
	    shift
	    break
	    ;;
	*)
	    print_red "Invalid option: '$1'"
	    exit 1
	    ;;
    esac
done

print_red "Conducting start-up checks"
startup_checks

if [ $INSTALL_UBUNTU ]; then
    print_red "Installing Ubuntu into a VM"
    install_ubuntu

    exit 0
fi

if [ $BUILD_KERNEL ]; then
    print_red "Building the Linux Kernel"
    build_kernel

    exit 0
fi

if [ $BUILD_GRUB ]; then
    print_red "Building the Grub bootloader"
    build_grub

    exit 0
fi
