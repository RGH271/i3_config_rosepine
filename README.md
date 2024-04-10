# i3_config

# Dependencies

 - yay
 - st
 - spotify
 - vesktop
 - git probably
 - pulse audio

# Commands

## Install the Dependencies

`sudo pacman -S spotify_launcher feh picom materia-gtk-theme papirus-icon-theme lxappearance ttf-font-awesome ttf-ubuntu-font-family ttf-droid pulseaudio-alsa pulseaudio-bluetooth pulseaudio-equalizer pulseaudio-jack alsa-utils playerctl`
`sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si`
`cd ~`
`yay st && yay vesktop`



## Now copy all the config files and hope to god it works

`git clone https://github.com/RGH271/i3_config.git`
`mkdir ~/.config/wallpaper && sudo cp ~/i3_config/wallpaper/wallpaper.jpg ~/.config/wallpaper/`
`mkdir .config/i3status && sudo cp ~i3_conf/main_conf_files/i3status.conf ~/.config/i3status/ && sudo chown $USER:$USER ~/.config/i3status/i3status.conf`
`mkdir ~/.config/i3blocks && sudo cp ~/i3_config/main_conf_files/i3blocks.conf ~/.config/i3blocks/ && sudo chown $USER:$USER ~/.config/i3blocks/i3blocks.conf`
`sudo cp -a ~/i3_config/scripts/. ~/.config/scripts/ && sudo chmod +x ~/.config/scripts/*`

`cd ~/i3_config/main_conf_files/config ~/.config/i3/`

