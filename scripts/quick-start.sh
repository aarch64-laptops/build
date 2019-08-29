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
    print_blue "USAGE: $0 [[asus-tp370ql|hp-envy-x2]lenovo-mixx-630|lenovo-yoga-c630|generic]|kernel|grub|help][-f]"
    return 1
}

if [ $# -lt 1 ] || [ $# -gt 2 ]; then
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
            BUILD_GRUB=true
            ;;
        createclean)
            BUILD_CLEAN_IMAGE=true
            ;;
	-f|--force)
	    EXTRAARGS="$EXTRAARGS -f"
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

    if [ ! $BUILD_KERNEL ] && [ ! $BUILD_GRUB ]; then
	if ls $OUTDIR/$VMNAME.img > /dev/null 2>&1; then
	    print_blue "The output directory already contains a VM image - either relocate or delete it to continue"

	    return 1
	fi
    fi
}

startup_checks

print_blue "Create the containerised build environment (~5 mins)"
print_blue " Containerised Ubuntu to be fully updated with all prerequisite packages installed"
docker build -t aarch64-laptops-build-env:0.1 .

if [ $BUILD_KERNEL ]; then
    print_blue "Building the Linux kernel (~35 mins)"
    docker run -ti --rm --name aarch64-laptops-kernel                                          \
	   -v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts -v $PWD/src:/src \
	   aarch64-laptops-build-env:0.1 /scripts/make-image.sh --build-kernel ${EXTRAARGS}
    exit 0
fi

if [ $BUILD_GRUB ]; then
    print_blue "Building Grub (~5 mins)"
    docker run -ti --rm --name aarch64-laptops-grub                                            \
	   -v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts -v $PWD/src:/src \
	   aarch64-laptops-build-env:0.1 /scripts/make-image.sh --build-grub ${EXTRAARGS}
    exit 0
fi

if [ $BUILD_CLEAN_IMAGE ]; then
   print_blue "Building a clean pre-built image for faster future runs"
   print_blue " Ubuntu installed in a VM (using LibVirt)"
   docker run -ti --privileged --name aarch64-laptops-ubuntu-vm                               \
	  -v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts -v $PWD/src:/src \
	  aarch64-laptops-build-env:0.1 /scripts/make-image.sh --make-clean-prebuilt-ubuntu --install-ubuntu ${EXTRAARGS}
fi

print_blue "Build the basic SD card image - requires user input (~2 hours manual : ~5 mins prebuilt)"
print_blue " Ubuntu installed in a VM (using LibVirt)"
docker run -ti --privileged --name aarch64-laptops-ubuntu-vm                               \
	-v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts -v $PWD/src:/src \
	aarch64-laptops-build-env:0.1 /scripts/make-image.sh --install-ubuntu-from-prebuilt ${EXTRAARGS}

print_blue "Saving the aarch64-laptops-ubuntu-vm container as an image"
docker commit aarch64-laptops-ubuntu-vm aarch64-laptops-ubuntu-vm:0.1

print_blue "Cleaning up the no longer required aarch64-laptops-ubuntu-vm container"
docker rm aarch64-laptops-ubuntu-vm

print_blue "Setting up VM (~2.5 hours - manual : 30 mins - prebuilt)"
docker run -ti --rm --privileged --name aarch64-laptops-ubuntu-vm-setup                    \
       -v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts -v $PWD/src:/src \
       aarch64-laptops-ubuntu-vm:0.1 /scripts/make-image.sh --setup-vm-from-prebuilt ${DEVICE} ${EXTRAARGS}
