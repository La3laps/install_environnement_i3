#!/bin/bash

sudo apt install

sudo apt upgrade

sudo apt install python3-i3ipc

git clone https://github.com/nwg-piotr/autotiling ~/Downloads/autotiling

cd ~/Downloads/autotiling/autotiling/

sudo mv ./main.py ./autotiling && chmod +x ./autotiling
sudo mv ./autotiling /usr/local/bin

sudo rm -r ~/Downloads/autotiling/
