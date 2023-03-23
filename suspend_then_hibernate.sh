#!/bin/bash
sudo bash -c "echo "HandleLidSwitch=suspend-then-hibernate" >> /etc/systemd/logind.conf"
if test -f /etc/systemd/sleep.conf; then
    sudo bash -c "echo "HibernateDelaySec=3600" >> /etc/systemd/sleep.conf"
else
    sudo cp sleep.conf /etc/systemd/sleep.conf
fi