#!/bin/bash

# From: https://gist.github.com/lukechilds/a83e1d7127b78fef38c2914c4ececc3c
get_latest_release() {
  return curl --silent "https://api.github.com/repos/creationix/nvm/releases/latest" | # Get latest release from GitHub api
    grep '"tag_name":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'                                    # Pluck JSON value
}

# nvminstall() {
#   printf "Installing nvm v0.33.11\n"
#   printf "Check https://github.com/creationix/nvm/releases for updated versions\n"
#   curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
#   source ~/.bashrc
#   nvm install node
#   printf "Done!";
# }
#
# nvmnoinstall() {
#   printf "Ok bye!\n"
# }

get_latest_release
printf $

# while true; do
#     read -p "Do you want to install nvm & node? " yn
#     case $yn in
#         [Yy]* ) nvminstall; break;;
#         [Nn]* ) nvmnoinstall; break;;
#         * ) printf "Please answer yes or no.\n";;
#     esac
# done
