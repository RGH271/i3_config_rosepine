#!/bin/sh

# make sure the repo is up to date
cd ~/i3_config_rosepine && git pull && cd

# recopy the wallpaper
sudo rm -r ~/i3_config_rosepine/wallpaper/* && sudo cp ~/.config/wallpaper/* ~/i3_config_rosepine/wallpaper/
# save the picom configs
sudo rm -r ~/i3_config_rosepine/picom/* && sudo cp ~/.config/picom/picom.conf ~/i3_config_rosepine/picom/
# save polybar configs and scripts
sudo rm -r ~/i3_config_rosepine/polybar/* && sudo cp -r ~/.config/polybar/* ~/i3_config_rosepine/polybar/

# remove and copy all the important config files
sudo rm -r ~/i3_config_rosepine/main_conf_files/*
sudo cp ~/.config/i3/config ~/i3_config_rosepine/main_conf_files/