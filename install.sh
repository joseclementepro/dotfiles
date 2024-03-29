#!/bin/bash

./dotfiles/scripts/symlink.sh
./dotfiles/scripts/aptinstall.sh
./dotfiles/scripts/programs.sh
./dotfiles/scripts/pipinstall.sh

# Get all upgrades
sudo apt upgrade -y


curl -L git.io/antigen > ~/antigen.zsh

# Create Dev folders
mkdir -p ${HOME}/Dev/examples ${HOME}/Dev/personal ${HOME}/Dev/projects

# Fun hello
figlet "Estamos de regreso..." | lolcat

# See our zsh changes
chsh -s $(which zsh)

zsh
