#!/bin/bash
# INSTALL KVM PACKAGES
sudo apt update -qq
sudo xargs -a kvm-packages.txt -r apt install -y -qq

# ENABLE VIRTUALIZATION DAEMON
sudo systemctl enable --now libvirtd
sudo systemctl start libvirtd
sudo usermod -aG kvm $USER
sudo usermod -aG libvirt $USER