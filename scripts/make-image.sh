#!/bin/bash

# Exit on error (saves checking the return value of every command)
set -e

# DEBUG: Uncomment to enable
# set -x

VMNAME=aarch64-laptops-bionic
ISOURL=http://cdimage.ubuntu.com/releases/18.04/release
ISO=ubuntu-18.04.1-server-arm64.iso
PREBUILT_REPO=https://github.com/aarch64-laptops/prebuilt/raw/master
CLEAN_PREBUILT_UBUNTU=$VMNAME-clean-img-xml.tgz
VMDIR=/var/lib/libvirt/images
IMAGES_FOR_VM=grub-linux-dtb.tgz

# Default directory locations (overridden if operating in a container)
ISODIR=./isos
SRCDIR=./src
OUTDIR=./output
SCRIPTSDIR=./scripts

print_red()
{
    echo -e "\e[01;31m$@ \e[0m"
}

usage()
{
    print_red "$0 [-f] [--install-ubuntu|--build-kernel|--build-grub|--setup-vm]"
    return 1
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
	print_red " Running inside a supported container"
	INCONTAINER=true
	ISODIR=/isos
	OUTDIR=/output
	SRCDIR=/src
	SCRIPTSDIR=/scripts
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
    $SUDO apt-get -y upgrade
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
    print_red "Starting service LibVirtD"
    $SUDO service libvirtd start

    print_red "Starting service VirtLogD"
    $SUDO service virtlogd start
}

download_lts_iso()
{
    if [ -f $ISODIR/$ISO ]; then
	print_red " $ISO already exists - skipping"
	return
    fi

    wget -P $ISODIR $ISOURL/$ISO
}

start_ubuntu_installer()
{
    print_red "                                               "
    print_red " *** DON'T FORGET TO INSTALL THE SSH SERVER ***"
    print_red "         Required for additional steps         "
    print_red "                                               "
    print_red " Press return and follow the prompts ...       "
    read

    virt-install --accelerate --cdrom $ISODIR/$ISO --disk size=7,format=raw  \
		 --name $VMNAME --os-type linux --os-variant ubuntu18.04         \
		 --ram 2048 --arch aarch64 --noreboot --vcpus=$(nproc)
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
	    print_red "The output directory already contains kernel debs - use -f to overwrite them"
	    return 1
	fi
	rm $OUTDIR/linux-*.deb
    fi

    # Remove old packages
    if ls linux-*.deb > /dev/null 2>&1; then
	rm linux-*.deb
    fi

    ccache make                                     \
	ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
	KBUILD_OUTPUT=$SRCDIR/linux/build-arm64     \
	laptops_defconfig

    ccache make -j $(nproc)                         \
	ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
	KBUILD_OUTPUT=$SRCDIR/linux/build-arm64     \
	bindeb-pkg

    print_red "Copying *.debs and DTB to $OUTDIR"
    cp linux-*.deb build-arm64/arch/arm64/boot/dts/qcom/msm8998-mtp.dtb $OUTDIR
}

build_grub()
{
    OUTFILE=$OUTDIR/grub/BOOTAA64.EFI
    OUTMODDIR=$OUTDIR/grub/modules

    cd $SRCDIR/grub
    mkdir -p $OUTMODDIR

    print_red "Configuring Grub"
    ./autogen.sh
    ./configure --target=aarch64-linux-gnu

    print_red "Compiling Grub"
    make -j $(nproc)

    print_red "Creating Grub image and copying to $OUTFILE"
    ./grub-mkimage --directory grub-core --prefix '(hd1,gpt2)/boot/grub'   \
	--output $OUTFILE --format arm64-efi                               \
	part_gpt part_msdos ntfs ntfscomp hfsplus fat ext2                 \
	normal chain boot configfile linux minicmd gfxterm                 \
	all_video efi_gop video_fb font video                              \
	loadenv disk test gzio bufio gettext terminal                      \
	crypto extcmd boot fshelp

    print_red "Copying Grub modules into $OUTMODDIR"
    cp grub-core/*.{mod,lst} $OUTMODDIR
}

setup_vm()
{
    local BOOTTIME=0
    local TIMEER=0
    local VMIP=""

    start_libvirt

    print_red "Starting VM"
    virsh start $VMNAME

    print_red "Waiting for VM to boot"
    while [ "$VMIP" == "" ]; do
	sleep 1
	BOOTTIME=$((BOOTTIME + 1))
	VMIP=$(arp -n | awk '/virbr0/{print $1}')

	if [ $BOOTTIME -gt 300 ]; then
	    print_red "Failed to boot the VM in time"
	    return 1
	fi
    done

    while true; do
	STATE=$(nmap -p22 $VMIP | awk '/22\/tcp/{print $2}')
	if [ "$STATE" == "open" ]; then
	    break
	else
	    sleep 1
	    TIMER=$((TIMER + 1))
	    if [ $TIMER -gt 60 ]; then
		nmap -p22 $VMIP
		print_red "VM's SSH service didn't come up in time - is it installed/enabled?"
		return 1
	    fi
	fi
    done

    sleep 5 # Wait for LibVirt to update its DHCP leases list

    VMHOSTNAME=$(virsh net-dhcp-leases default | awk -v v=$VMIP '/v/{print $6}')

    print_red "VM up (Hostname [$VMHOSTNAME] IP [$VMIP] Boot-time [$BOOTTIME seconds])"

    print_red "Packaging up Kernel and Grub for delivery into the VM"
    pushd $OUTDIR > /dev/null
    tar -czf $IMAGES_FOR_VM --exclude=linux-*dbg*.deb grub linux-*.deb msm8998-mtp.dtb
    popd > /dev/null

    print_red "\n[TIMEOUT WARNING] Keep an eye on this section until you've entered your password (twice)\n"

    while [ ! $USERNAME ]; do
	print_red "[INPUT REQUIRED] Please enter the username you used during the install"
	read USERNAME
    done

    print_red "Copying artifacts to the VM via SCP (requires authentication)"
    scp -o LogLevel=ERROR -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null \
	$IMAGES_FOR_VM $SCRIPTSDIR/setup-vm.sh $USERNAME@$VMIP:/tmp

    print_red "Running the setup script via SSH (requires authentication [twice])"
    ssh -t -o LogLevel=ERROR -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null \
	$USERNAME@$VMIP 'sudo /tmp/setup-vm.sh'

    print_red "Pulling the plug from the VM"
    virsh destroy $VMNAME
}

if [ $# -lt 1 ]; then
    usage
fi

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
	    usage
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

if [ $SETUP_VM ]; then
    print_red "Setting up the Ubuntu VM"
    setup_vm
    exit 0
fi
