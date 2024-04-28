#!/bin/sh


# install dependencies
sudo pacman -S feh picom lxappearance ttf-font-awesome ttf-ubuntu-font-family ttf-droid breeze-icons dolphin python-dbus ttf-firacode 
git clone https://github.com/SueDonham/Colloid-pastel-icons.git && cd ~/Colloid-pastel-icons/cursors/ && ./install.sh && cd ~
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si && cd ~
yay -S vesktop-bin
yay -S spotify-player
git clone https://git.suckless.org/st && cd st && sudo make clean install && cd ~ 
sudo rm -rf st && sudo rm -rf yay-bin && sudo rm -rf Colloid-pastel-icons


# now clone the configs
git clone https://github.com/RGH271/i3_config.git
mkdir ~/.config/wallpaper && sudo cp ~/i3_config/wallpaper/wallpaper.jpg ~/.config/wallpaper/
sudo cp -a ~/i3_config/scripts/. ~/.config/scripts/ && sudo chmod +x ~/.config/scripts/*
mkdir .config/i3status && sudo cp ~/i3_config/main_conf_files/i3status.conf ~/.config/i3status/ && sudo chown $USER:$USER ~/.config/i3status/i3status.conf
mkdir ~/.config/i3blocks && sudo cp ~/i3_config/main_conf_files/i3blocks.conf ~/.config/i3blocks/ && sudo chown $USER:$USER ~/.config/i3blocks/i3blocks.conf
cp ~/i3_config/main_conf_files/config ~/.config/i3/ && sudo chmod a+rw ~/.config/i3/config