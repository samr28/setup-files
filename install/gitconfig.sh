#!/bin/bash

install() {
  mv gitconfig .gitconfig
  printf "Done!\n"
}

noinstall() {
  rm gitconfig
  printf "Ok bye!\n"
}

printf "Downloading gitconfig from github...\n"
cd ~/
wget https://raw.githubusercontent.com/samr28/setup-files/master/gitconfig
printf "====================\n"
printf "Your gitconfig:\n\n"
cat .gitconfig
printf "==========\n"
printf "Will be replaced with:\n\n"
cat gitconfig
printf "====================\n"

while true; do
    read -p "Do you want to replace your gitconfig? " yn
    case $yn in
        [Yy]* ) install; break;;
        [Nn]* ) noinstall; break;;
        * ) printf "Please answer yes or no.\n";;
    esac
done
