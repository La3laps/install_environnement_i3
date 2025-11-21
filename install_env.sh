#!/bin/bash


#Downloads all dependencies
./install_scripts/install_dependencies.sh

#Sets config files and others notably opens lxappearance and nitrogen for themes and backgounds
./install_scripts/set_configs.sh
./install_scripts/install_autotiling.sh
