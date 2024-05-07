#!/bin/sh


# install yay
printf "\nInstalling YAY...\n"
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si 
Y
cd 
sudo rm -rf yay-bin