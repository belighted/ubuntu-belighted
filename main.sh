#!/bin/bash
# CONFIGURE SUSPEND-THEN-HIBERNATE
echo "HandleLidSwitch=suspend-then-hibernate" >> /etc/systemd/logind.conf
cp ./sleep.conf /etc/systemd/sleepd.conf

# INSTALL ESSENTIAL PACKAGES
bash install_packages.sh

# INSTALL ZSH & CONFIGURE OH MY ZSH
bash install_zsh.sh

# DESKTOP CUSTOMIZATION
bash desktop_customization.sh
