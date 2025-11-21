#!/bin/bash


#Downloads all dependencies
echo -e "\n\n\e[36m [||||||||||||||||| Installing dependencies |||||||||||||||||]\e[0m\n\n"
./install_dependencies.sh

#Sets config files and others notably opens lxappearance and nitrogen for themes and backgounds
echo -e "\n\n\e[36m [||||||||||||||||| Settings background, themes and configurations |||||||||||||||||]\e[0m\n\n"
./set_configs.sh

echo -e "\n\n\e[36m [||||||||||||||||| Installing autotiling for i3 |||||||||||||||||]\e[0m\n\n"
./install_autotiling.sh

echo -e "\n\n\033[31m /!\\ The computer needs to restart to apply changes!\033[0m\n\n[Ctrl + C] to stop automatic reboot... (You will have to run the installation again)\n\n"

for i in {10..0}
do
  echo -n "$i "
  sleep 0.5
  echo -n ". "
  sleep 0.5
  echo -n ". "
  sleep 0.5
done
echo
sudo rm -r ../install_environnement_i3/
sudo systemctl reboot
