#!/bin/bash

WORKDIR=/tmp/aarch64-laptops
PACKAGES=/tmp/output.tgz
KERNEL_CMDLINE="nokaslr nomodeset ignore_loglevel clk_ignore_unused pd_ignore_unused console=tty0"

print_green()
{
    echo -e "\e[01;32m$@ \e[0m"
}

print_green "We're inside the VM"

if [ ! -f $PACKAGES ]; then
    print_green "Packages archive missing"
    exit 1
fi

## The pain of doing this in a VM is not worth the gain
# print_green "Upgrading the VM (takes a long time .. go get a coffee!)"
# apt update
# apt upgrade -y

print_green "Creating workspace ($WORKDIR)"
mkdir -p $WORKDIR
cd $WORKDIR

print_green "Unpacking the packages archive"
tar -xf $PACKAGES

print_green "Installing the Linux Kernel and DTB"
dpkg -i linux-*.deb
cp msm8998-mtp.dtb /boot

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

print_green "Updating initramfs"
update-initramfs -u

print_green "Updating Grub config file"
NEW_GRUB_CMDLINE="GRUB_CMDLINE_LINUX_DEFAULT=\"\$GRUB_CMDLINE_LINUX_DEFAULT $KERNEL_CMDLINE\""
sed -i "s/linux_entry ()/$NEW_GRUB_CMDLINE\n\nlinux_entry ()/" \
    /etc/grub.d/10_linux

sed -i $'/initrd\t\${rel_dirname}\/\${initrd}/ a \ \tdevicetree \/boot\/msm8998-mtp.dtb' \
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

print_green "Shutting down the VM"
poweroff
