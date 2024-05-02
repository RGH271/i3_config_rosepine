#!/bin/sh


# install graphical softwares
echo "Installing graphics software..."
sudo pacman -S --noconfirm feh picom lxappearance rofi

# install fonts
echo "Installing fonts..."
sudo pacman -S --noconfirm ttf-font-awesome ttf-ubuntu-font-family ttf-droid ttf-firacode-nerd

# install other dependencies
echo "Installing other dependencies..."
sudo pacman -S --noconfirm breeze-icons dolphin python-dbus python-gobject pacman-contrib

# INstall the cursor
echo "Installing the cursor..."
git clone https://github.com/SueDonham/Colloid-pastel-icons.git && cd ~/Colloid-pastel-icons/cursors/ && ./install.sh && cd 

# install rust/cargo
echo "Installing rust..."
curl https://sh.rustup.rs -sSf | sh

echo "Do you want to install YAY? (Y/n)"
read -r choice < /dev/tty
if [ "$choice" = "Y" ] || [ "$choice" = "y" ]; then
    echo "Installing YAY..."
    sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si && cd ~
fi

echo "Do you want to install vesktop? (Y/n)"
read -r choice < /dev/tty
if [ "$choice" = "Y" ] || [ "$choice" = "y" ]; then
    echo "Installing vesktop..."
    yay -S vesktop-bin
fi

echo "Do you want to install spotify? (Y/n)"
read -r choice < /dev/tty
if [ "$choice" = "Y" ] || [ "$choice" = "y" ]; then
    echo "Installing spotify and spotify_player..."
    yay -S spotify-player
    cargo install spotify_player
fi

# install simple terminal
echo "Installing the terminal..."
git clone https://github.com/RGH271/st.git && cd st && sudo make clean install

# remove the repos
sudo rm -rf st && sudo rm -rf yay-bin && sudo rm -rf Colloid-pastel-icons


# now clone the configs
# clone the repo
git clone https://github.com/RGH271/i3_config_rosepine.git

# set the wallpaper
mkdir ~/.config/wallpaper && sudo cp ~/i3_config_rosepine/wallpaper/wallpaper.png ~/.config/wallpaper/

# copy polybar configs
mkdir ~/.config/polybar && sudo cp -r ~/i3_config_rosepine/polybar/* ~/.config/polybar/ && sudo chmod +x ~/.config/polybar/scripts/updates-pacman-helper.sh && sudo chmod +x ~/.config/polybar/launch.sh

# set the picom
mkdir ~/.config/picom && sudo cp ~/i3_config_rosepine/picom/picom.conf ~/.config/picom/

# set master i3 config
cp ~/i3_config_rosepine/main_conf_files/config ~/.config/i3/ && sudo chmod a+rw ~/.config/i3/config