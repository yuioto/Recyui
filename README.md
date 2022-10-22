# Archiso with zfs

* archzfs repo added
* zfs-dkms-git added
* zfs-utils-git added
* stable linux zen kernel
* wimdll added

<!--image

## For now have two version ISO:

1. Stable kernel and stable ZFS;
2. Stable kernel and git viersion ZFS.

![zfs-archlinux](https://user-images.githubusercontent.com/1161594/127529134-7044487b-fe96-4775-ad53-38fcd85a5030.png)


![Screenshot_archlinux_2021-08-22_11:12:41](https://user-images.githubusercontent.com/1161594/130341130-d2e29284-e6de-4900-ae22-9a92d3359fac.png)

![Screenshot_archlinux_2021-08-22_11:39:00](https://user-images.githubusercontent.com/1161594/130341182-e29139fb-2c0f-4e48-8abd-6e2c57b537c4.png)

-->

## Archinstall for regular user:

```shell
archinstall
```

## Build image:

```shell
pacman -S archiso
```

```shell
mkarchiso -v -w work -o out .
```

## Download ISO and Record it on a device:

```shell
sudo dd if=out/archlinux_recyui-DATE-x86_64.iso of=/dev/sdevice status=progress bs=1M
```

## image

![xfce4](https://user-images.githubusercontent.com/1161594/172663643-1cb09286-6934-48b3-be87-f79ac26ccfc7.png)

![Firefox](https://user-images.githubusercontent.com/1161594/172663979-8dddcf10-090b-486f-85b9-246051ee5bd6.png)

![Some Tools](https://user-images.githubusercontent.com/1161594/172664053-6c1efd44-b60d-436a-a653-4aa04e0fcb8f.png)

![Proxy Tools](https://user-images.githubusercontent.com/1161594/172664317-c3a5f7a6-a0fa-4da5-9509-3c9defe79791.png)

