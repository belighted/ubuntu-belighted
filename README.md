# Ubuntu Setup Scripts

See [Ubuntu's website](https://ubuntu.com/) for more information on Ubuntu.

## Overview

This folder contains installation scripts for setting up an Ubuntu 22.04 Linux machine for developers at Belighted.

## Before Starting

* Download the Ubuntu 22.04 ISO from [Ubuntu's website](https://ubuntu.com/download/desktop/thank-you?version=22.04.1&architecture=amd64).
* Flash the downloaded ISO to a USB stick. There are multiple ways of doing that. I like to use [balenaEtcher](https://www.balena.io/etcher/).
* Boot your computer from the flashed USB stick and follow Ubuntu's installer.
* Once this is all done, reboot and log in to your new operating system.
* That's it! You can now follow the instruction in the [Getting Started](#Getting-Started) section.

## Getting Started

Open a terminal and run the following commands :

```bash
sudo apt update
sudo apt upgrade
sudo apt install git
git clone https://github.com/belighted/ubuntu-belighted.git ~/.scripts/ubuntu-belighted
```

This will :
* update your system,
* install the git package on your computer,
* clone this repository to the ~/.scripts folder on your computer.

Before starting anything else, you need to set your environment variables. run the following commands :

```bash
cd ~/.scripts/ubuntu-belighted
nano .env
```

This will open [nano](https://www.nano-editor.org/) within your terminal. paste the following lines and make sure to edit the variable values to match your own credential and preferences !

```bash
GIT_USER_NAME="toto"
GIT_USER_EMAIL="toto@titi.org"
GIT_EDITOR="nano"
SSH_EMAIL="toto@titi.org"
```

These variables will be used during the script execution to set the Git gloabl configuration.

Once the instructions have finished running, run the following command to run the install script :

```bash
./install.sh
```

Running this script will :

* Install a few packages (see table below);
* Configure your Git credentials;
* Create an SSH key pair;
* Install zsh;
* Install and configure Oh My Zsh (plugins, aliases, theme);
* Configure aliases for Zsh;
* Install GNOME extensions;
* Install nodejs, ruby and python through ASDF;

docker-ce docker-ce-cli containerd.io docker-compose-plugin

|   Package     |   description     |
|   -------     |   -----------     |
|   curl        |   command line tool for transferring data with URL syntax      |
|   git         |   fast, scalable, distributed revision control system      |
|   Vim         |   Vi IMproved - enhanced vi editor     |
|   net-tools   |   NET-3 networking toolkit     |
|   build-essential |   Informational list of build-essential packages  |
|   zsh         |   shell with lots of features |
|   ca-certificates |   	Common CA certificates  |
|   gnupg       |   GNU privacy guard - a free PGP replacement      |
|   lsb-release |   Linux Standard Base version reporting utility      |
|   autoconf    |   automatic configure script builder      |
|   bison       |   YACC-compatible parser generator      |
|   libssl-dev  |   Secure Sockets Layer toolkit - development files     |
|   libyaml-dev |   Fast YAML 1.1 parser and emitter library (development)       |
|   libreadline6-dev    |    GNU readline and history libraries, development files    |
|   zlib1g-dev  |	compression library - runtime     |
|   libncurses5-dev |    shared libraries for terminal handling (legacy version)    |
|   libffi-dev  |   Foreign Function Interface library (development files)     |
|   libgdbm6    |   GNU dbm database routines (runtime version)      |
|   libd-dev    |   Berkeley Database Libraries     |
|   uuid-dev    |   Universally Unique ID library - headers and static libraries      |
|   libfuse2    |   Filesystem in Userspace (library)     |
|   Visual Studio Code  |   VS Code is a source-code editor made by Microsoft   |
|   docker (& friends)  |   Pack, ship and run any application as a lightweight container   |
|   Slack       |   Slack is a messaging program designed specifically for the office   |


### After Running The Script

After the script finished executing, you will need to reboot. Do it before continuing.

Once you logged back in, open a terminal. You will be prompted to configure the powerlevel10k oh-my-zsh theme.

**NOTE: during the execution of the ./install.sh script, the MesloLGS NF fonts were installed on your system. powerlevel10k recommends using them.**

**on the gnome terminal, open the settings and select your profile. Under the "Text" section, check the "Custom font" box and select the "MesloLGS NF" font from the drop down list**

There is one more script to execute :

```bash
cd ~/.scripts/ubuntu-belighted
./post_install.sh
```

This script enables the gnome shell extensions that were configured during installation. It also installs nodejs, ruby, rails and python using asdf.

Now you're done !
