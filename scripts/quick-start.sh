#!/bin/bash

SCRIPTDIR=scripts
source $SCRIPTDIR/laptops-common.inc

OUTDIR=output

# Exit on any error (saves checking the return value of everything)
set -e

print_blue()
{
    echo -e "\e[01;34m$@ \e[0m"
}

function usage()
{
    print_blue "USAGE: $0 [asus-tp370ql|hp-envy-x2]lenovo-mixx-630|lenovo-yoga-c630|generic]"
    return 1
}

if [ $# -ne 1 ]; then
    print_blue "$0 takes exactly 1 argument"
    usage
fi

while [ $# -gt 0 ]; do
    case $1 in
        asus-tp370ql|hp-envy-x2|lenovo-mixx-630|lenovo-yoga-c630|generic)
            DEVICE=$1
            ;;
        kernel)
            BUILD_KERNEL=true
            ;;
        grub)
            BUILD_KERNEL=grub
            ;;
        help|--help|-h|?)
            usage
            ;;
        *)
            print_blue "Unrecognised parameter $1"
            usage
            ;;
    esac
    shift
done

startup_checks()
{
    VMNAME=aarch64-laptops-$DISTRO_VERSION

    if [ ! -d isos ] || [ ! -d output ] || [ ! -d scripts ]; then
	print_blue "$0 should be executed from this project's root directory"
    fi

    if [ $BUILD_KERNEL ]; then
	if ls $OUTDIR/linux-*.deb > /dev/null 2>&1; then
	    print_blue "The output directory already contains kernel debs - either relocate or delete them to continue"

	    return 1
	fi
    fi

    if ls $OUTDIR/$vm.img > /dev/null 2>&1; then
	print_blue "The output directory already contains a VM image - either relocate or delete it to continue"

	return 1
    fi
}

startup_checks

print_blue "Create the containerised build environment (~5 mins)"
print_blue " Containerised Ubuntu to be fully updated with all prerequisite packages installed"
docker build -t aarch64-laptops-build-env:0.1 .

print_blue "Build the basic SD card image - requires user input (~2 hours manual : ~5 mins prebuilt)"
print_blue " Ubuntu Bionic: installed in a VM (using LibVirt)"
docker run -ti --privileged --name aarch64-laptops-ubuntu-vm                               \
       -v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts                  \
       -v $PWD/src:/src   -v $PWD/output:/var/lib/libvirt/images                           \
       aarch64-laptops-build-env:0.1 /scripts/make-image.sh --install-ubuntu-from-prebuilt

print_blue "Saving the aarch64-laptops-ubuntu-vm container as an image"
docker commit aarch64-laptops-ubuntu-vm aarch64-laptops-ubuntu-vm:0.1

print_blue "Cleaning up the no longer required aarch64-laptops-ubuntu-vm container"
docker rm aarch64-laptops-ubuntu-vm

if [ $BUILD_KERNEL ]; then
    print_blue "Building the Linux kernel (~35 mins)"
    docker run -ti --rm --name aarch64-laptops-kernel                                          \
	   -v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts -v $PWD/src:/src \
	   aarch64-laptops-build-env:0.1 /scripts/make-image.sh --build-kernel
fi

if [ $BUILD_GRUB ]; then
    print_blue "Building Grub (~5 mins)"
    docker run -ti --rm --name aarch64-laptops-grub                                            \
	   -v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts -v $PWD/src:/src \
	   aarch64-laptops-build-env:0.1 /scripts/make-image.sh --build-grub
fi

print_blue "Setting up VM (~2.5 hours - manual : 30 mins - prebuilt)"
docker run -ti --rm --privileged --name aarch64-laptops-ubuntu-vm-setup                    \
       -v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts                  \
       -v $PWD/src:/src   -v $PWD/output:/var/lib/libvirt/images                           \
       aarch64-laptops-ubuntu-vm:0.1 /scripts/make-image.sh --setup-vm-from-prebuilt ${DEVICE}
