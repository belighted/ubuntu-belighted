#!/bin/bash
# VARIABLES
source variables

# INSTALL ESSENTIAL APPLICATIONS
## PACKAGES
sudo xargs -a packages.txt -r apt install -y -qq # install the packages listed on the packages.txt file
sudo apt install linux-headers-$(uname -r) -y -qq
## DOCKER
sudo apt remove docker docker.io containerd runc
sudo rm -rf $DOCKER_STORAGE
sudo rm -rf $CONTAINERD_STORAGE
sudo mkdir -m 0755 -p $APT_KEYRING
curl -fsSL $DOCKER_UBUNTU_ROOT_URL/gpg | sudo gpg --dearmor -o $APT_KEYRING/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=$APT_KEYRING/docker.gpg] $DOCKER_UBUNTU_ROOT_URL \
  $(lsb_release -cs) stable" | sudo tee $APT_SOURCE_LIST/docker.list > /dev/null
sudo apt update -qq
sudo xargs -a docker-packages.txt -r apt install -y -qq
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
## SNAPS
### VISUAL STUDIO CODE
sudo snap install code --classic
### SLACK
sudo snap install slack
## OFFICE PRINTER
mkdir .tar
wget $OFFICE_PRINTER_INSTALLER_URL -O .tar/printer.gz
gunzip -c .tar/printer.gz > .tar/printer
sudo bash .tar/printer $OFFICE_PRINTER_NAME

