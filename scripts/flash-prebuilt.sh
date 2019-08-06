#!/bin/bash

set -e # Exit on any kind of error

PREBUILTNAME=aarch64-laptops-disco-prebuilt.img.xz
PREBUILTURL=https://github.com/aarch64-laptops/prebuilt/raw/master/$PREBUILTNAME

print_blue()
{
    echo -e "\e[01;34m$@ \e[0m"
}

function usage()
{
    print_blue ""
    print_blue "Download the prebuilt from the following URL and run this script again like so:"
    print_blue ""
    print_blue "  $PREBUILTURL"
    print_blue ""
    print_blue "USAGE: $0 [asus-tp370ql|hp-envy-x2|lenovo-mixx-630|lenovo-yoga-c630] [/dev/<SDCARD>]"
    print_blue ""
    print_blue "Where <SDCARD> is the whole device i.e. /dev/sda, and not /dev/sda1"
    return 1
}

function cleanup()
{
    print_blue "Cleaning up"
    sudo umount $TMPDIR
    rmdir $TMPDIR
}

if [ $# -ne 2 ]; then
    print_blue "$0 takes exactly 2 arguments"
    usage
fi

if ! ls $PREBUILTNAME > /dev/null 2>&1; then
    print_blue "$0 should be run in the same directory as the prebuilt image $PREBUILTNAME"
    usage
fi

if ! xzcat --help > /dev/null 2>&1; then
    print_blue "Please install \`xzcat\` (xz-utils in Ubuntu)"
fi

if ! dd --help > /dev/null 2>&1; then
    print_blue "Please install \`dd\` (coreutils in Ubuntu)"
fi

while [ $# -gt 0 ]; do
    case $1 in
        asus-tp370ql)
	    NAME="ASUS TP370QL"
	    DTBREAL=laptop-asus-tp370ql.dtb
	    ;;
        hp-envy-x2)
	    NAME="HP Envy X2"
	    DTBREAL=laptop-hp-envy-x2.dtb
	    ;;
        lenovo-mixx-630)
	    NAME="Lenovo Mixx 630"
	    DTBREAL=laptop-lenovo-mixx-630.dtb
	    ;;
        lenovo-yoga-c630)
	    NAME="Lenovo Yoga C630"
	    DTBREAL=laptop-lenovo-yoga-c630.dtb
	    ;;
	help|--help|-h|?)
	    usage
	    ;;
	/dev/*)
	    SDCARD=$1
	    ;;
	*)
            print_blue "Unrecognised parameter $1"
            usage
            ;;
    esac
    shift
done

if [ ! -b $SDCARD ]; then
    print_blue "$SDCARD does not appear to exist"
    exit 1
fi

if mount | grep -q $SDCARD; then
    print_blue "One or more of the paritions on $SDCARD appear to be mounted"
    exit 1
fi

print_blue "Are you sure you wish to flash the prebuilt image onto $SDCARD [y/N]?"
read reply
confirm=$(echo "$reply" | tr '[:upper:]' '[:lower:]')
if [ "$confirm" != "yes" ] && [ "$confirm" != "y" ]; then
    print_blue "User aborted program"
    exit 1
fi
     
print_blue "Flashing the image to SD card (this requires escalated privileges)"
xzcat $PREBUILTNAME | sudo dd of=$SDCARD oflag=direct bs=1M status=progress iflag=fullblock

sudo hdparm -qz ${SDCARD}

print_blue "Mounting the image to install the correct Device Tree file for $NAME"
TMPDIR=$(mktemp -d)
DTBLINK=$TMPDIR/boot/laptop.dtb
sudo mount ${SDCARD}2 $TMPDIR

print_blue "Linking to the $NAME's Device Tree"
if [ -h $DTBLINK ]; then
    ls -l $DTBLINK

    print_blue "\nDTB already exists - are you sure you wish to overwrite it [y/N]?"
    read reply

    confirm=$(echo "$reply" | tr '[:upper:]' '[:lower:]')
    if [ "$confirm" != "yes" ] && [ "$confirm" != "y" ]; then
	cleanup
	print_blue "User aborted program"
	exit 1
    fi
    sudo rm $DTBLINK
fi

sudo ln -s /boot/$DTBREAL $DTBLINK

cleanup

print_blue "Preimage for $NAME has been successfully flashed onto $SDCARD"
