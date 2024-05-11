#!/bin/sh

# make sure the repo is up to date
cd ~/i3_config_rosepine && git pull 
cd configfiles

# recopy the wallpaper
sudo rm -r wallpaper/* && sudo cp ~/.config/wallpaper/* wallpaper/
# save the picom configs
sudo rm -r picom/* && sudo cp ~/.config/picom/picom.conf picom/
# save polybar configs and scripts
sudo rm -r polybar/* && sudo cp -r ~/.config/polybar/* polybar/
# save the rofi config
sudo rm -rf rofi/* 
sudo cp -r ~/.config/rofi/* rofi/ 
# save the nvim configs
sudo rm -rf nvim/* 
sudo cp -r ~/.config/nvim/* nvim/
# save x11 files
sudo rm -rf X11/*
sudo cp -r ~/.config/X11/* X11/

# remove and copy all the important config files
sudo rm -r ~/i3_config_rosepine/main_conf_files/*
sudo cp ~/.config/i3/config ~/i3_config_rosepine/main_conf_files/
