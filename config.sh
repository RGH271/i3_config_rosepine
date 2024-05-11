#!/bin/sh


# now clone the configs
# clone the repo
git clone https://github.com/RGH271/i3_config_rosepine.git

sudo cp configfiles/* ~/.config/

# set the polybar scripts to executable
sudo chmod +x ~/.config/polybar/scripts/updates-pacman-aurhelper.sh && sudo chmod +x ~/.config/polybar/launch.sh

# set master i3 config
cp ~/i3_config_rosepine/main_conf_files/config ~/.config/i3/ && sudo chmod a+rw ~/.config/i3/config
