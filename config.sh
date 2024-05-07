#!/bin/sh


# now clone the configs
# clone the repo
git clone https://github.com/RGH271/i3_config_rosepine.git

# set the wallpaper
mkdir ~/.config/wallpaper && sudo cp ~/i3_config_rosepine/wallpaper/wallpaper.png ~/.config/wallpaper/

# copy polybar configs
mkdir ~/.config/polybar && sudo cp -r ~/i3_config_rosepine/polybar/* ~/.config/polybar/ 
sudo chmod +x ~/.config/polybar/scripts/updates-pacman-aurhelper.sh && sudo chmod +x ~/.config/polybar/launch.sh

# set the picom
mkdir ~/.config/picom && sudo cp ~/i3_config_rosepine/picom/picom.conf ~/.config/picom/

# set master i3 config
cp ~/i3_config_rosepine/main_conf_files/config ~/.config/i3/ && sudo chmod a+rw ~/.config/i3/config