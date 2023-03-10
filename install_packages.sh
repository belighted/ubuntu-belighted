#!/bin/bash
# VARIABLES
source variables

# INSTALL ESSENTIAL APPLICATIONS
## PACKAGES
sudo xargs -a packages.txt -r apt install -y -qq # install the packages listed on the packages.txt file
sudo apt install linux-headers-$(uname -r) -y -qq
## SNAPS
### VISUAL STUDIO CODE
sudo snap install code --classic
### DOCKER
sudo snap install docker
### SLACK
sudo snap install slack
## OFFICE PRINTER
mkdir .tar
wget $OFFICE_PRINTER_INSTALLER_URL -O .tar/printer.gz
gunzip -c .tar/printer.gz > .tar/printer
sudo bash .tar/printer DCP-9270CDN

