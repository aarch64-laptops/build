#!/bin/bash

# Exit on any error (saves checking the return value of everything)
set -e

print_blue()
{
    echo -e "\e[01;34m$@ \e[0m"
}

startup_checks()
{
    if [ ! -d isos ] || [ ! -d output ] || [ ! -d scripts ]; then
	print_blue "$0 should be executed from this project's root directory"
    fi
}

startup_checks

print_blue "Create the containerised build environment (~5 mins)"
print_blue " Ubuntu Bionic: fully updated with all prerequisite packages installed"
docker build -t aarch64-laptops-build-env:0.1 .

print_blue "Build the basic SD card image - requires user input (~2 hours)"
print_blue " Ubuntu Bionic: installed in a VM (using LibVirt)"
docker run -ti --privileged --name aarch64-laptops-ubuntu-vm                               \
       -v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts                  \
       -v $PWD/src:/src   -v $PWD/output:/var/lib/libvirt/images                           \
       aarch64-laptops-build-env:0.1 /scripts/make-image.sh --install-ubuntu

print_blue "Saving the aarch64-laptops-ubuntu-vm container as an image"
docker commit aarch64-laptops-ubuntu-vm aarch64-laptops-ubuntu-vm:0.1

print_blue "Cleaning up the no longer required aarch64-laptops-ubuntu-vm container"
docker rm aarch64-laptops-ubuntu-vm

print_blue "Building the Linux kernel (~35 mins)"
docker run -ti --rm --name aarch64-laptops-kernel                                          \
       -v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts -v $PWD/src:/src \
       aarch64-laptops-build-env:0.1 /scripts/make-image.sh --build-kernel

print_blue "Building Grub (~5 mins)"
docker run -ti --rm --name aarch64-laptops-grub                                            \
       -v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts -v $PWD/src:/src \
       aarch64-laptops-build-env:0.1 /scripts/make-image.sh --build-grub

print_blue "Setting up VM (~35 mins)"
docker run -ti --rm --privileged --name aarch64-laptops-ubuntu-vm-setup                    \
       -v $PWD/isos:/isos -v $PWD/output:/output -v $PWD/scripts:/scripts                  \
       -v $PWD/src:/src   -v $PWD/output:/var/lib/libvirt/images                           \
       aarch64-laptops-ubuntu-vm:0.1 /scripts/make-image.sh --setup-vm
