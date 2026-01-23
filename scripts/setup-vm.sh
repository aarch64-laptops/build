#!/usr/bin/env bash

WORKDIR=/tmp/aarch64-laptops
EFIBOOTDIR=/boot/efi/EFI/BOOT
KERNEL_CMDLINE="efi=novamap ignore_loglevel clk_ignore_unused pd_ignore_unused console=tty0"

print_green()
{
    echo -e "\e[01;32m$@ \e[0m"
}

function usage()
{
    print_green "USAGE: $0 [asus-tp370ql|hp-envy-x2]lenovo-miix-630|lenovo-yoga-c630|generic]"
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
        lenovo-miix-630)
            NAME="Lenovo Miix 630"
            DTB=laptop-lenovo-miix-630.dtb
            ;;
        lenovo-yoga-c630)
            NAME="Lenovo Yoga C630"
            DTB=laptop-lenovo-yoga-c630.dtb
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

print_green "  We'll take it from here - go grab a coffee, this'll take a while!"

## The pain of doing this in a VM is not worth the gain
# print_green "Upgrading the VM (takes a long time .. go get a coffee!)"
# apt update
# apt upgrade -y

cd /tmp

print_green "Update list of modules to include in initramfs"
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
nvmem_qfprom
EOF

# The while [] loops avoid GPG issues
rm nonexistant-file &> /dev/null # Set $? to 1
while [ $? -ne 0 ]; do
    sudo add-apt-repository -y ppa:aarch64-laptops/grub
done

rm nonexistant-file &> /dev/null # Set $? to 1
while [ $? -ne 0 ]; do
    sudo add-apt-repository -y ppa:aarch64-laptops/linux-kernel
done

rm nonexistant-file &> /dev/null # Set $? to 1
while [ $? -ne 0 ]; do
    sudo add-apt-repository -y ppa:aarch64-laptops/linux-kernel-meta
done

sudo apt update

rm nonexistant-file &> /dev/null # Set $? to 1
while [ $? -ne 0 ]; do
    sudo DEBIAN_FRONTEND=noninteractive apt-get install -y                         \
	 -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" \
	 grub-efi-arm64
done

rm nonexistant-file &> /dev/null # Set $? to 1
while [ $? -ne 0 ]; do
    sudo apt install -y linux-image-generic grub2-common
done

print_green "Applying EFI workaround to grub"
sudo sed -i \
's/GRUB_CMDLINE_LINUX_DEFAULT="/GRUB_CMDLINE_LINUX_DEFAULT="efi=novamap /' \
/etc/default/grub

sudo update-grub

if [ $DTB ]; then
    if [ ! -e /boot/$DTB ]; then
	print_green "/boot/$DTB does not appear to exist - skipping"
    else
	print_green "Installing $NAME specific DTB"
	ln -s /boot/$DTB /boot/laptop.dtb
    fi
fi

# Copy grub.cfg shim to the EFI BOOT directory
#  Searches local media for the grub.cfg
cp grub-shim.cfg $EFIBOOTDIR/grub.cfg

# Replace string "[REPLACE_UUID]" with the filesystem UUID
UUID=$(lsblk -o UUID /dev/sda2 | sed '/UUID/d')
sed -i "s/\[REPLACE_UUID\]/$UUID/" $EFIBOOTDIR/grub.cfg

print_green "Installing the Ubuntu Desktop"
apt install -y ubuntu-desktop

print_green "Shutting down the VM"
poweroff &
exit 0
