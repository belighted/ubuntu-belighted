#!/bin/bash
# ENABLE VIRTUALIZATION DAEMON
sudo systemctl enable --now libvirtd
sudo systemctl start libvirtd
sudo usermod -aG kvm $USER
sudo usermod -aG libvirt $USER