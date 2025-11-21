#!/bin/bash
sudo apt update && sudo apt upgrade
sudo apt install i3status dmenu alacritty picom maim light imwheel nitrogen xclip lxappearance nemo rofi
sudo snap install firefox
sudo snap install code --classic
sudo curl -sS https://starship.rs/install.sh | sh
curl -L https://discord.com/api/download?platform=linux -o discord.deb &&
sudo apt install ./discord.deb && rm ./discord.deb
