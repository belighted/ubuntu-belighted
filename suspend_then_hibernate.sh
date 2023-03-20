#!/bin/bash
sudo bash -c "echo "HandleLidSwitch=suspend-then-hibernate" >> /etc/systemd/logind.conf"
sudo cp ./sleep.conf /etc/systemd/sleepd.conf