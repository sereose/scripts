#!/bin/sh

user=$(whoami)
if [ "$user" = "root" ]
then
  echo "Running entire update script as root may break zsh repo permissions."
  exit 1
fi

#regular
echo "--> Updating deb packages"
sudo apt-get update
sudo apt-get upgrade
sudo rm -rf /var/cache/apt/archives/*.deb

#zsh
echo "--> Updating zsh"
git -C ~/.oh-my-zsh/ pull
