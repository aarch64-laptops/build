#!/bin/bash

WORKDIR=/tmp/aarch64-laptops
PACKAGES=/tmp/grub-linux-dtb.tgz
KERNEL_CMDLINE="efi=novamap ignore_loglevel clk_ignore_unused pd_ignore_unused console=tty0"

print_green()
{
    echo -e "\e[01;32m$@ \e[0m"
}

function usage()
{
    print_green "USAGE: $0 [asus-tp370ql|hp-envy-x2]lenovo-mixx-630|generic]"
    return 1
}

if [ $# -ne 1 ]; then
    print_green "$0 takes exactly 1 argument"
    usage
fi

while [ $# -gt 0 ]; do
    case $1 in
        asus-tp370ql)
            NAME="ASUS TP370QL"
            DTB=laptop-asus-tp370ql.dtb
            ;;
        hp-envy-x2)
            NAME="HP Envy X2"
            DTB=laptop-hp-envy-x2.dtb
            ;;
        lenovo-mixx-630)
            NAME="Lenovo Mixx 630"
            DTB=laptop-hp-envy-x2.dtb
            ;;
        generic)
            NAME="Generic"
            ;;
        help|--help|-h|?)
            usage
            ;;
        *)
            print_green "Unrecognised parameter $1"
            usage
            ;;
    esac
    shift
done

print_green "\nInside the VM"

if [ ! -f $PACKAGES ]; then
    print_green "Packages archive missing"
    exit 1
fi

print_green "  We'll take it from here - go grab a coffee, this'll take a while!"

## The pain of doing this in a VM is not worth the gain
# print_green "Upgrading the VM (takes a long time .. go get a coffee!)"
# apt update
# apt upgrade -y

print_green "Creating workspace ($WORKDIR)"
mkdir -p $WORKDIR
cd $WORKDIR

print_green "Unpacking the packages archive"
tar -xf $PACKAGES

if [ $DTB ]; then
    if [ ! -e /boot/$DTB ]; then
	print_green "/boot/$DTB does not appear to exist - skipping"
    else
	print_green "Installing $NAME specific DTB"
	ln -s /boot/$DTB /boot/laptop.dtb
    fi
fi

print_green "Update list of modules to inclue in intramfs"
cat <<EOF >> /etc/initramfs-tools/modules
qcom_smd_regulator
smd_rpm
rpmsg_core
qcom_glink_rpm
qcom_glink_native
qcom_apcs_ipc_mailbox
spmi
spmi_pmic_arb
regmap_spmi
qcom_spmi_pmic
pinctrl_spmi_gpio
EOF

# Not doing this seperately, since it'll happen when the kernel is installed
#print_green "Updating initramfs"
#update-initramfs -u

print_green "Installing the Linux Kernel and DTB"
dpkg -i linux-*.deb
cp laptop*.dtb /boot

print_green "Updating Grub config file"
NEW_GRUB_CMDLINE="GRUB_CMDLINE_LINUX_DEFAULT=\"\$GRUB_CMDLINE_LINUX_DEFAULT $KERNEL_CMDLINE\""
sed -i "s/linux_entry ()/$NEW_GRUB_CMDLINE\n\nlinux_entry ()/" \
    /etc/grub.d/10_linux

sed -i $'/initrd\t\${rel_dirname}\/\${initrd}/ a \ \tdevicetree \/boot\/laptop.dtb' \
    /etc/grub.d/10_linux

update-grub

EFIBOOTDIR=/boot/efi/EFI/BOOT
GRUBMODULESDIR=/boot/grub/arm64-efi

print_green "Installing new Grub binary and modules"
# Back-up existing Grub binary and modules
mv $EFIBOOTDIR/BOOTAA64.EFI $EFIBOOTDIR/BOOTAA64.EFI-orig
mv $GRUBMODULESDIR $GRUBMODULESDIR-orig
# Insert new ones in their place
mkdir $GRUBMODULESDIR
cp grub/BOOTAA64.EFI $EFIBOOTDIR/
cp grub/modules/* $GRUBMODULESDIR

print_green "Installing the Ubuntu Desktop"
apt install -y ubuntu-desktop

print_green "Shutting down the VM"
poweroff
