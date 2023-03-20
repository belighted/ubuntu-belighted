#!/bin/bash
echo "HandleLidSwitch=suspend-then-hibernate" >> /etc/systemd/logind.conf
cp ./sleep.conf /etc/systemd/sleepd.conf