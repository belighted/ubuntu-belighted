#!/bin/bash
sudo apt update -qq && sudo apt upgrade -y -qq
sudo apt install git -y -qq
mkdir ~/.scripts
git clone https://github.com/belighted/ubuntu-belighted.git ~/.scripts/ubuntu-belighted
cd ~/.scripts/ubuntu-belighted
./main.sh
rm -f ~/Downloads/install.sh
rm -rf ~/.scripts/ubuntu-belighted