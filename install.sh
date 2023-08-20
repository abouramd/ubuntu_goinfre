#!/bin/bash

curl https://raw.githubusercontent.com/abouramd/ubuntu_goinfre/main/script.sh > ~/script.sh

chmod u+x ~/script.sh

if [ -e ~/.zshrc ]
then
	echo "source ~/script.sh" >> ~/.zshrc
fi

if [ -e ~/.bashrc ]
then
	echo "source ~/script.sh" >> ~/.bashrc
fi




