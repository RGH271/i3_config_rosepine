# Dependencies

 - yay
 - st
 - spotify
 - vesktop
 - git probably
 - pulse audio

# Commands

A few notes:
 - In archinstall, remember to set firefox and git to install (and neofetch aswell if you want)
 - Remember to press ESC when first booting i3 to not create a config file automatically so theres not conflict later on
 - Remember to use middle mouse button to copy + paste in the i3 default terminal!!


## Install the Dependencies

```
sudo pacman -S spotify-launcher feh picom materia-gtk-theme papirus-icon-theme lxappearance ttf-font-awesome ttf-ubuntu-font-family ttf-droid
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si
cd ~
yay vesktop-bin
git clone https://git.suckless.org/st && cd st && sudo make clean install
cd ~
sudo rm -rf st && sudo rm -rf yay-bin
```


## Now copy all the config files and hope to god it works

```
git clone https://github.com/RGH271/i3_config.git
mkdir ~/.config/wallpaper && sudo cp ~/i3_config/wallpaper/wallpaper.jpg ~/.config/wallpaper/
sudo cp -a ~/i3_config/scripts/. ~/.config/scripts/ && sudo chmod +x ~/.config/scripts/*
mkdir .config/i3status && sudo cp ~/i3_config/main_conf_files/i3status.conf ~/.config/i3status/ && sudo chown $USER:$USER ~/.config/i3status/i3status.conf
mkdir ~/.config/i3blocks && sudo cp ~/i3_config/main_conf_files/i3blocks.conf ~/.config/i3blocks/ && sudo chown $USER:$USER ~/.config/i3blocks/i3blocks.conf
cp ~/i3_config/main_conf_files/config ~/.config/i3/ && sudo chmod a+rw ~/.config/i3/config
```

# Resave the config

Copy and paste this to recommit:

```
cd ~/i3_config && git pull
cd ~
sudo rm -r ~/i3_config/wallpaper/* && sudo cp ~/.config/wallpaper/wallpaper.jpg ~/i3_config/wallpaper/
sudo rm -r ~/i3_config/scripts/* && sudo cp ~/.config/scripts/* ~/i3_config/scripts/
sudo rm -r ~/i3_config/main_conf_files/*
sudo cp ~/.config/i3/config ~/i3_config/main_conf_files/ && sudo cp ~/.config/i3blocks/i3blocks.conf ~/i3_config/main_conf_files/ && sudo cp ~/.config/i3status/i3status.conf ~/i3_config/main_conf_files/
```


**Don't forget to recommit to git!!!**