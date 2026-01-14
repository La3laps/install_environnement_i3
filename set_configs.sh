# Update config for i3, i3 status bar and alacritty
sudo cp -rf ./i3/ ~/.config/
sudo cp -rf ./i3status/ ~/.config/
sudo cp -rf ./alacritty/ ~/.config/

# Setup wallpaper in Pictures
sudo cp -rf ./utils-themes/wallpaper.png ~/Pictures/
sudo cp -rf ./utils-themes/NordArc-Theme/ /usr/share/themes/
sudo cp -rf ./utils-themes/icons/capitaine-cursors-light/ /usr/share/icons/
sudo cp -rf ./utils-themes/icons/NordArc-Icons/ /usr/share/icons/
sudo cp -rf ./rofi/ ~/.config/
sudo cp -rf ./utils-themes/background.mp4 ~/Videos/

sudo chown -R $USER ~/.config/
sudo chown -R $USER ~/Pictures/
sudo chown -R ~/Videos/

#Add fonts to local fonts
mkdir -p ~/.local/share/fonts
sudo cp -rf ./utils-themes/Hermit ~/.local/share/fonts

#Add starship to terminal
echo 'eval "$(starship init bash)"' >> ~/.bashrc
starship preset tokyo-night -o ~/.config/starship.toml
sudo cp -rf ./starship.toml ~/.config/

lxappearance &
nitrogen &

# Wait for lxappearance and nitrogen to close
wait $(pgrep lxappearance)
wait $(pgrep nitrogen)

echo -e "You have set you config, background and themes!"
