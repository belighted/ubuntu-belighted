# Ubuntu Setup Scripts

See [Ubuntu's website](https://ubuntu.com/) for more information on Ubuntu.

## Overview

This folder contains installation scripts for setting up an Ubuntu 22.04 Linux machine for developers at Belighted.

## Before Starting

* Download the Ubuntu 22.04 ISO from [Ubuntu's website](https://ubuntu.com/download/desktop/thank-you?version=22.04.1&architecture=amd64);
* Flash the downloaded ISO to a USB stick. There are multiple ways of doing that. For example, you could use [balenaEtcher](https://www.balena.io/etcher/);
* Boot your computer from the flashed USB stick and follow Ubuntu's installer;
* Once this is all done, reboot and log in to your new operating system;
* That's it! You can now follow the instruction in the [Getting Started](#Getting-Started) section;

## Getting Started

Open a terminal and run the following command:

```bash
wget https://github.com/belighted/ubuntu-belighted/raw/main/install.sh -O /home/$(whoami)/Downloads/install.sh && chmod +x /home/$(whoami)/Downloads/install.sh && bash /home/$(whoami)/Downloads/install.sh
```

This will:
* update your system;
* install the git package on your computer;
* clone this repository to the ~/.scripts folder on your computer;
* run the main.sh script:
- - Install a few packages (see table below);
- - Install zsh;
- - Install and configure Oh My Zsh (plugins, aliases, theme);
- - Configure aliases for Zsh;
- - Install GNOME extensions;
- - Install nodejs, ruby, python and postgres through ASDF;

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
|   libedit-dev |   BSD editline and history libraries (development files)     |
|   libsqlite3-dev  |   C library that implements an SQL database engine    |
|   libbz2-dev  |   high-quality block-sorting file compressor library - development    |
|   libffi-dev  |   Foreign Function Interface library (development files)  |
|   libgdbm6    |   GNU dbm database routines (runtime version)      |
|   libgdbm-dev |   GNU dbm database routines (development files)    |
|   libdb-dev   |   Berkeley Database Libraries (development)        |
|   uuid-dev    |   Universally Unique ID library - headers and static libraries      |
|   tmux        |   terminal multiplexer    |
|   llvm        |   Low-Level Virtual Machine (LLVM)    |
|   xz-utils    |   XZ-format compression utilities     |
|   libxmlsec1-dev  |   	Development files for the XML security library      |
|   liblzma-dev |   	XZ-format compression library - development files       |
|   libcurl4-openssl    |   development files and documentation for libcurl (OpenSSL flavour)   |
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

Now, you can start using your computer.

**NOTE: this script does not configure git and does not generate any ssh key**

**you could do it easily with a few commands (for example) :**

```bash
# GIT
git config --global user.name $GIT_USER_NAME
git config --global user.email $GIT_USER_EMAIL
git config --global core.editor $GIT_EDITOR

# SSH
ssh-keygen -q -t rsa -b 4096 -C "$SSH_EMAIL"
```

## Notes

* The commit format is based on [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/).
* The change log format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Change log

Please refer to the [CHANGELOG.md](https://github.com/belighted/ubuntu-belighted/blob/main/CHANGELOG.md) file.
