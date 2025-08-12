#!/bin/bash
# This script is specifically tailored for Void Linux. If you just want the configs,
# run install-conf.sh on your own.

set -e

# install all of my programs
sudo xbps-install nano neovim xclip pulseaudio bluez i3 i3-gaps feh rofi tmux flatpak curl rxvt-unicode xrdb git github-cli xrandr htop fastfetch gcc make spectacle xset xz lxappearance ark playerctl oneko

# enable relevant services
sudo ln -s /etc/sv/bluetoothd /var/service/
sudo ln -s /etc/sv/dbus /var/service/

# makes most used directories
mkdir ~/Projects
mkdir ~/Sources

# installs configs
chmod +x ./install-conf.sh
./install-conf.sh

# makes backup script executable
chmod +x ./backups/backup-all.sh

# disable automatic power management on the wifi card
if [ ! -d "/etc/NetworkManager" ]; then
	sudo mkdir /etc/NetworkManager
fi

if [ ! -d "/etc/NetworkManager/conf.d" ]; then
	sudo mkdir /etc/NetworkManager/conf.d
fi

echo "[connection]\nwifi.powersave = 2" | sudo tee /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf > /dev/null
