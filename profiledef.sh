#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="recyui_archlinux_xfce_live"
iso_label="ARCH_RECYUI_XFCE_LIVE_$(date +%Y%m)"
iso_publisher="yuioto"
iso_application="samizdat"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  
  ["/etc/gshadow"]="0:0:0400"
  
  ["/root/.ssh"]="0:0:0700"
  ["/etc/skel/.ssh/"]="0:0:0700"
  ["/root/.ssh/authorized_keys"]="0:0:0600"
  ["/etc/skel/.ssh/authorized_keys"]="0:0:0600"
)


# Sing archzfs pgp
curl https://archzfs.com/archzfs.gpg > airootfs/etc/archzfs.gpg
pacman-key -a airootfs/etc/archzfs.gpg
pacman-key --lsign-key DDF7DB817396A49B2A2723F7403BD972F75D9D76

# Sing yuioto repo
pacman-key -a airootfs/etc/yuioto.gpg
pacman-key --lsign-key 8FE2699529938038384C161B1940CA94064229D9


