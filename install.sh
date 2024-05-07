#!/bin/sh


# install graphical softwares
printf "Installing graphics software...\n"
sudo pacman -S --noconfirm polybar feh picom lxappearance rofi

# install fonts
printf "\nInstalling fonts...\n"
sudo pacman -S --noconfirm ttf-font-awesome ttf-ubuntu-font-family ttf-droid ttf-firacode-nerd ttf-jetbrains-mono ttf-jetbrains-mono-nerd

# install other dependencies
printf "\nInstalling other dependencies...\n"
sudo pacman -S --noconfirm breeze-icons dolphin python-dbus python-gobject pacman-contrib unzip

# INstall the cursor
printf "\nInstalling the cursor...\n"
git clone https://github.com/SueDonham/Colloid-pastel-icons.git && cd ~/Colloid-pastel-icons/cursors/ && ./install.sh && cd 
sudo rm -rf Colloid-pastel-icons

# install rust/cargo
printf "\nInstalling rust...\n"
curl https://sh.rustup.rs -sSf | sh

# install simple terminal
printf "\nInstalling the terminal...\n"
git clone https://github.com/RGH271/st.git && cd st && sudo make clean install && cd
sudo rm -rf st

# install yay
printf "\nInstalling YAY...\n"
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si 
Y
cd 
sudo rm -rf yay-bin

: '
yay -S librewolf-bin

printf "Do you want to install vesktop? (y/N)"
read -r choice < /dev/tty
if [ "$choice" = "Y" ] || [ "$choice" = "y" ]; then
    printf "\nInstalling vesktop...\n"
    yay -S vesktop-bin
    continue
fi

printf "Do you want to install spotify? (y/N)"
read -r choice < /dev/tty
if [ "$choice" = "Y" ] || [ "$choice" = "y" ]; then
    printf "\nInstalling spotify and spotify_player...\n"
    yay -S spotify-player
    cargo install spotify_player
    continue
fi



# remove the repos
sudo rm -rf st && sudo rm -rf yay-bin && sudo rm -rf Colloid-pastel-icons


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

'