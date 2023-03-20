#!/bin/bash
# VARIABLES
source variables

# INSTALL ESSENTIAL APPLICATIONS
## PACKAGES
sudo xargs -a packages.txt -r apt install -y -qq # install the packages listed on the packages.txt file
sudo apt install linux-headers-$(uname -r) -y -qq
## VSCODE
mkdir ./.deb
wget $CODE_DEB -O ./.deb/code.deb
sudo apt install ./.deb/code.deb -y -qq
## DOCKER
sudo mkdir -p /etc/apt/keyrings
curl -fsSL $DOCKER_UBUNTU_ROOT_URL/gpg | sudo gpg --dearmor -o $APT_KEYRING/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=$APT_KEYRING/docker.gpg] $DOCKER_UBUNTU_ROOT_URL $(lsb_release -cs) stable" | sudo tee $APT_SOURCE_LIST/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y -qq
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
sudo systemctl start docker.service
sudo systemctl start containerd.service
## SLACK
sudo snap install slack
## OFFICE PRINTER
mkdir ./.tar
wget $OFFICE_PRINTER_INSTALLER_URL -O ./.tar/printer.gz
gunzip -c ./.tar/printer.gz > ./.tar/printer
sudo bash ./.tar/printer DCP-9270CDN

