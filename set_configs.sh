# Update config for i3, i3 status bar and alacritty
sudo cp -rf ./i3/ ~/.config/
sudo cp -rf ./i3status/ ~/.config/
sudo cp -rf ./alacritty/ ~/.config/
sudo cp -rf ./starship.toml ~/.config/
# Setup wallpaper in Pictures
sudo cp -rf ./utils-themes/wallpaper.png ~/Pictures/
sudo cp -rf ./utils-themes/NordArc-Theme/ ~/Pictures/
sudo cp -rf ./utils-themes/icons/ ~/Pictures/

sudo chown -R $USER ~/.config/
sudo chown -R $USER ~/Pictures/

#Add fonts to local fonts
mkdir -p ~/.local/share/fonts
sudo cp -rf ./utils-themes/Hermit ~/.local/share/fonts

#Add starship to terminal
echo 'eval "$(starship init bash)"' >> ~/.bashrc
starship preset tokyo-night -o ~/.config/starship.toml

lxappearance &
nitrogen &

# Wait for lxappearance and nitrogen to close
wait $(pgrep lxappearance)
wait $(pgrep nitrogen)

echo -e "You have set you config, background and themes!"
