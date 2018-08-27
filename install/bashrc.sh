#!/bin/bash

red() {
	cd ~/
	printf "Downloading red PS1 from github\n"
	wget -q https://raw.githubusercontent.com/samr28/setup-files/master/ps1/red
	cat red >> ~/.ps1
	rm red
}

multicolor() {
	cd ~/
	printf "Downloading multicolor PS1 from github\n"
	wget -q https://raw.githubusercontent.com/samr28/setup-files/master/ps1/multicolor
	cat multicolor >> ~/.ps1
	rm multicolor
}

if ! grep -q "source ~/.bash_custom" ~/.bashrc; then
	
	printf "Downloading bashrc from github...\n"
	cd ~/
	wget -q https://raw.githubusercontent.com/samr28/setup-files/master/bash_custom
	
	printf "Adding remote bashrc to local\n"
	mv bashrc .bash_custom
	echo 'source ~/.bash_custom' >> .bashrc	
fi
if ! grep -q "source ~/.ps1" ~/.bashrc; then 

	cd ~/
	wget -q https://raw.githubusercontent.com/samr28/setup-files/master/ps1/parse_git_branch

	mv parse_git_branch .ps1

	while true; do
		read -p "Which PS1 do you want? (r=red, m=multicolor) " rm
		case $rm in
			[Rr]* ) red; break;;
			[Mm]* ) multicolor; break;;
			* ) printf "Please choose r or m.\n";;
		esac
	done
	echo 'source ~/.ps1' >> .bashrc
fi

source ~/.bashrc

printf "Done!\n"
