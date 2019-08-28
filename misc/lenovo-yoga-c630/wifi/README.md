1. Build a WiFi enabled kernel

1.1 Fetch and apply 2 ath10k patches to a supported kernel

**Note:** You can find a supported kernel [HERE](https://github.com/aarch64-laptops/linux/tree/gpu)

```
$ wget https://lore.kernel.org/lkml/20190725063108.15790-1-bjorn.andersson@linaro.org/raw -O patch1.mbox
$ wget https://lore.kernel.org/linux-arm-msm/20190725174755.23432-2-bjorn.andersson@linaro.org/raw -O patch2.mbox

$ git am patch1.mbox
$ git am patch2.mbox
```

1.1. Build a *.deb to install

**Note:** This are the commands to cross-compile.  Compiling natively will work equally well.

```
$ ccache make -j $(nproc)                       \
    ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
    KBUILD_OUTPUT=../build-arm64                \
    dtbs

$ ccache make -j $(nproc)                       \
    ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
    KBUILD_OUTPUT=../build-arm64

$ ccache make -j $(nproc)                       \
    ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
    KBUILD_OUTPUT=../build-arm64                \
    bindeb-pkg
```

This will result in a linux-image-*.deb in the parent directory that you can install with `dpkg -i`.

2. Clone build and install the required userspace projects (on the device)

```
$ sudo apt install git build-essential libudev-dev

$ git clone https://github.com/andersson/qrtr.git
$ git clone https://github.com/andersson/rmtfs.git
$ git clone https://github.com/andersson/pd-mapper.git
$ git clone https://github.com/andersson/tqftpserv.git

$ pushd qrtr && make && sudo make install && popd
$ pushd rmtfs && make && sudo make install && popd
$ pushd pd-mapper && make && sudo make install && popd
$ pushd tqftpserv && make && sudo make install && popd
```

3. Fetch firmware-5.bin from kvalo/ath10k-firmware GitHub repo

```
$  wget https://github.com/kvalo/ath10k-firmware/blob/master/WCN3990/hw1.0/HL2.0/WLAN.HL.2.0-01387-QCAHLSWMTPLZ-1/firmware-5.bin
```

4. Fetch required files from Windows (use search)

  bdwlan.b36
  bdwlan.b37
  bdwlan.b38
  bdwlan.b3c
  bdwlan.b3f
  bdwlan.bin
  wlanmdsp.mbn
  qcdsp1v2850.mbn
  qcdsp2850.mbn

5. Place wlanmdsp.mbn in the TFTP directory

```
$  sudo mkdir -p /readonly/firmware/image
$  sudo cp wlanmdsp.mbn /readonly/firmware/image
```

6. Create board-2.bin

6.1. Create required directory structure and cd into it

```
$  mkdir -p creating-board-2.bin/bdf
$  cd creating-board-2.bin
```

6.2. Place bdwlan.* files into creating-board-2.bin/bdf

```
$  cp bdwlan.* creating-board-2.bin/bdf
```

6.3. Obtain helper script, make it executable and run it

```
$  wget https://github.com/aarch64-laptops/build/blob/master/misc/lenovo-yoga-c630/wifi/create-board-2.bin/make-board-2.bin.sh
$  chmod +x make-board-2.bin.sh
$  ./make-board-2.bin.sh
```

7. Copy firmwares into final location(s) (on the device)

```
$  sudo mkdir -p /lib/firmware/ath10k/WCN3990/hw1.0
$  sudo cp board-2.bin /lib/firmware/ath10k/WCN3990/hw1.0
$  sudo cp firmware-5.bin /lib/firmware/ath10k/WCN3990/hw1.0

$  sudo mkdir /lib/firmware/qcom/c630
$  sudo cp qcdsp1v2850.mbn /lib/firmware/qcom/c630
$  sudo cp qcdsp2850.mbn /lib/firmware/qcom/c630/modem.mdt
$  sudo cp wlanmdsp.mbn /lib/firmware/qcom/c630
```

8. Start the services

```
$  sudo systemctrl start qrtr-ns
$  sudo systemctrl start pd-mapper
$  sudo systemctrl start tqftpserv
$  sudo systemctrl start rmtfs
```

9. Check running services (around 40 should be present)

```
$  qrtr-lookup
```

10. To enable services on automatically at boot time

```
$  sudo systemctrl enable qrtr-ns
$  sudo systemctrl enable pd-mapper
$  sudo systemctrl enable tqftpserv
$  sudo systemctrl enable rmtfs
```