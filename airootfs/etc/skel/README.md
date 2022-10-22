# Recyui Main Docs

Fork form ArchLinuxISO.

yui passwd:`recyui`

Recyui ISO witer on USB.

```shell
sudo dd if=<recyui.iso> of=/dev/<usb-dev-file> bs=16K && sync
```

## wimlib

Wiki: https://wiki.archlinux.org/title/wimlib

### install windows

#### short docs

```shell
sudo EFI=/dev/<efi-part-desk-name> wiminstall.gptboot /dev/<os-part-desk-name> <WIM file> <image-id>
```

image-id 1~5
* 1 = Windows Starter
* 2 = Windows Home Basic
* 3 = Windows Home Premium
* 4 = Windows Professional
* 5 = Windows Enterpise Workstations
* 6 = Windows Enterpise
* 7 = Windows Professional Enterpise
* 8 = Windows Ultimate


#### long docs
(The docs copy from:https://github.com/ghostplant/ubuntu-pe)

   1. Support Booting USB/CDROM in both MBR & UEFI machines;

   2. Support Installing Ubuntu Image to Hard Drive: sudo ubi-lite

   3. Support Installing Windows Image to MBR Hard Drive: sudo wiminstall.mbrboot /dev/<os-part-name> <WIM file> <image-id>

       [Method-1: Will Erase Grub in Hard drive (cautious!)]
       ex-1: sudo wiminstall.mbrboot /dev/sda1 ./xp-sp3.wim
       ex-2: sudo wiminstall.mbrboot /dev/sda1 ./windows-7.wim 4
       ex-3: sudo wiminstall.mbrboot /dev/sda1 ./windows-11.wim 1

       [Method-2: Not Erase Grub in Hard drive, but need three-step manual configuration on boot settings]
       step-1: Ensure Ubuntu + Grub has been installed on hard driver partitions other than /dev/sda1
       step-2: sudo wiminstall /dev/sda1 ./xp-sp3.wim
       step-3: Reboot, login Ubuntu and run: sudo update-grub

       [Method-3: For UEFI Installation to GPT Hard Drive]
```shell
       sudo EFI=/dev/<efi-part-name> wiminstall.gptboot /dev/<os-part-name> <WIM file> <image-id>
```

