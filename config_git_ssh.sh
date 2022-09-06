#!/bin/bash
# VARIABLES
source .env

# GIT
git config --global user.name $GIT_USER_NAME
git config --global user.email $GIT_USER_EMAIL
git config --global core.editor $GIT_EDITOR

# SSH
ssh-keygen -q -t rsa -b 4096 -C "$SSH_EMAIL" -N '' <<< $'\ny' >/dev/null 2>&1
