#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -e -u

# Warning: customize_airootfs.sh is deprecated! Support for it will be removed in a future archiso version.

sed -i 's/#\(en_US\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

ln -sf /usr/share/zoneinfo/UTC /etc/localtime

usermod -s /usr/bin/zsh root
cp -aT /etc/skel/ /root/
chmod 700 /root
# unset the root password
passwd -d root

systemctl set-default graphical.target
systemctl enable sddm.service

# pacman-key --init
# pacman-key --populate archlinux
# pacman-key --populate arcolinux

groupsalci="adm,audio,disk,floppy,log,network,optical,rfkill,storage,video,wheel,sys"
useradd -m -g users -G $groupsalci -s /bin/bash liveuser
passwd -d liveuser

#set permissions
chmod 750 /etc/sudoers.d
chmod 750 /etc/polkit-1/rules.d
chgrp polkitd /etc/polkit-1/rules.d
