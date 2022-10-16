#!/bin/bash
# VARIABLES
## URLS FOR .DEB PACKAGES
CODE_DEB="https://az764295.vo.msecnd.net/stable/784b0177c56c607789f9638da7b6bf3230d47a8c/code_1.71.0-1662018389_amd64.deb"

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
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
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
wget https://download.brother.com/welcome/dlf006893/linux-brprinter-installer-2.2.3-1.gz -O ./.tar/printer.gz
gunzip -c ./.tar/printer.gz > ./.tar/printer
sudo bash ./.tar/printer DCP-9270CDN

