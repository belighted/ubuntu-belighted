#!/bin/bash
# UPDATE SYSTEM
sudo apt update -qq
sudo apt upgrade -y -qq

# INSTALL ESSENTIAL PACKAGES
./install_packages.sh

# GIT & SSH CONFIGURATION
./config_git_ssh.sh

# INSTALL ZSH & CONFIGURE OH MY ZSH
./install_zsh_setup_ohmyzsh.sh

# DESKTOP CUSTOMIZATION
./desktop_customization.sh
