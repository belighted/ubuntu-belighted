#!/bin/bash
sudo apt update -qq && sudo apt upgrade -y -qq
sudo apt install git -y -qq
mkdir $HOME/.scripts
git clone https://github.com/belighted/ubuntu-belighted.git $HOME/.scripts/ubuntu-belighted
cd $HOME/.scripts/ubuntu-belighted
./main.sh
rm -f $HOME/Downloads/install.sh