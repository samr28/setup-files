#!/bin/bash

show() {
  cat /home/sam/.ssh/id_rsa
}

done() {
  printf "Ok bye!\n"
}

printf "What email should be used for the key?\n"

read $email

ssh-keygen -t rsa -b 4096 -C $email

while true; do
    read -p "Would you like to view the ssh key now? " yn
    case $yn in
        [Yy]* ) show; break;;
        [Nn]* ) done; break;;
        * ) printf "Please answer yes or no.\n";;
    esac
done
