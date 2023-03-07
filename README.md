# Ubuntu Setup Scripts

See [Ubuntu's website](https://ubuntu.com/) for more information on Ubuntu.

## Table of content

<!-- TOC -->
* [Overview](#overview)
* [Before Starting](#before-starting)
* [Getting Started](#getting-started)
  * [After Running The Script](#after-running-the-script)
* [Dual-Boot - Ubuntu 22.04 with Windows 11](#dual-boot---ubuntu-2204-with-windows-11)
  * [Requirement](#requirement)
  * [Preparing Windows for Ubuntu](#preparing-windows-for-ubuntu)
    * [Shrink Windows partition](#shrink-windows-partition)
    * [Windows Drive Encryption](#windows-drive-encryption)
  * [Installing Ubuntu](#installing-ubuntu)
* [Notes](#notes)
* [Change log](#change-log)
* [Notes](#notes-1)
  * [Slack](#slack)
<!-- TOC -->

## Overview

This doc includes an installation script to set up Ubuntu 22.04 Linux for developers at Belighted.

## Before Starting

**If your goal is to dual-boot Linux (Ubuntu 22.04) and Windows (11), refer to
the [Dual-Boot - Ubuntu 22.04 with Windows 11](#dual-boot---ubuntu-2204-with-windows-11) section.**

* download the Ubuntu 22.04 ISO
  from [Ubuntu's website](https://ubuntu.com/download/desktop/thank-you?version=22.04.1&architecture=amd64);
* flash the downloaded ISO to a USB stick. There are multiple ways of doing that. For example, you could
  use [balenaEtcher](https://www.balena.io/etcher/);
* boot your computer from the flashed USB stick and follow Ubuntu's installer;
* once this is all done, reboot and log in to your new operating system;
* that's it! You can now follow the instructions in the [Getting Started](#getting-started) section;

## Getting Started

Open a terminal and run the following command:

```bash
wget https://github.com/belighted/ubuntu-belighted/raw/main/install.sh -O /home/$(whoami)/Downloads/install.sh && chmod +x /home/$(whoami)/Downloads/install.sh && bash /home/$(whoami)/Downloads/install.sh
```

This will:

* update your system;
* install the git package on your computer;
* clone this repository to the ~/.scripts folder on your computer;
* run the main.sh script, it will:
    * install a few packages (see table below);
    * configure the office printer (run the configuration script, you have to set inputs manually. Refer to
      the [Printer](https://www.notion.so/belighted/Printer-4953222ec7d54ddcb8617b4af0ec8915) Notion Page);
    * install zsh;
    * install and configure Oh My Zsh (plugins, aliases, theme);
    * configure aliases for Zsh;
    * install GNOME extensions;
    * install nodejs, ruby, python and postgres through ASDF;

| Package              | description                                                       |
|----------------------|-------------------------------------------------------------------|
| curl                 | command line tool for transferring data with URL syntax           |
| git                  | fast, scalable, distributed revision control system               |
| Vim                  | Vi IMproved - enhanced vi editor                                  |
| net-tools            | NET-3 networking toolkit                                          |
| build-essential      | Informational list of build-essential packages                    |
| zsh                  | shell with lots of features                                       |
| ca-certificates      | Common CA certificates                                            |
| gnupg                | GNU privacy guard - a free PGP replacement                        |
| lsb-release          | Linux Standard Base version reporting utility                     |
| autoconf             | automatic configure script builder                                |
| bison                | YACC-compatible parser generator                                  |
| libssl-dev           | Secure Sockets Layer toolkit - development files                  |
| libyaml-dev          | Fast YAML 1.1 parser and emitter library (development)            |
| libreadline6-dev     | GNU readline and history libraries, development files             |
| zlib1g-dev           | compression library - runtime                                     |
| libncurses5-dev      | shared libraries for terminal handling (legacy version)           |
| libedit-dev          | BSD editline and history libraries (development files)            |
| libsqlite3-dev       | C library that implements an SQL database engine                  |
| libbz2-dev           | high-quality block-sorting file compressor library - development  |
| libffi-dev           | Foreign Function Interface library (development files)            |
| libgdbm6             | GNU dbm database routines (runtime version)                       |
| libgdbm-dev          | GNU dbm database routines (development files)                     |
| libdb-dev            | Berkeley Database Libraries (development)                         |
| uuid-dev             | Universally Unique ID library - headers and static libraries      |
| tmux                 | terminal multiplexer                                              |
| llvm                 | Low-Level Virtual Machine (LLVM)                                  |
| xz-utils             | XZ-format compression utilities                                   |
| libxmlsec1-dev       | Development files for the XML security library                    |
| liblzma-dev          | XZ-format compression library - development files                 |
| libcurl4-openssl-dev | development files and documentation for libcurl (OpenSSL flavour) |
| libfuse2             | Filesystem in Userspace (library)                                 |
| Visual Studio Code   | VS Code is a source-code editor made by Microsoft                 |
| docker (& friends)   | Pack, ship and run any application as a lightweight container     |
| snapd                | Daemon and tooling that enable snap packages                      |
| Slack (snap)         | Slack is a messaging program designed specifically for the office |

### After Running The Script

After the script finished executing, you will need to reboot. Do it before continuing.

Once you logged back in, open a terminal. You will be prompted to configure the powerlevel10k oh-my-zsh theme.

**NOTE: during the execution of the ./install.sh script, the MesloLGS NF fonts were installed on your system.
powerlevel10k recommends using them.**

**on the gnome terminal, open the settings and select your profile. Under the "Text" section, check the "Custom font"
box and select the "MesloLGS NF" font from the drop down list**

There is one more script to execute :

```bash
bash ~/.scripts/ubuntu-belighted/post_install.sh
```

This script enables the gnome shell extensions that were configured during installation. It also installs nodejs, ruby,
postgres and python using asdf.

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

## Dual-Boot - Ubuntu 22.04 with Windows 11

### Requirement

* A computer running Windows 11;

**NOTE: to bypass the internet connection from the Windows 11 OOBE (Out Of the Box Experience), follow the steps 19 and
20 from [this guide](https://pureinfotech.com/bypass-internet-connection-install-windows-11/).**

### Preparing Windows for Ubuntu

#### Shrink Windows partition

Open the Disk Management utility by pressing **[WinKey]+[R]** and typing *diskmgmt.msc* in the dialog box. Hit **[Enter]
** to continue.

Within the Disk Management window, shrink your Windows Volume to create an empty partition for Ubuntu 22.04:

* right click on the volume, select *Shrink Volume...*;
* *enter the amount of space to shrink in MB*.
  The [minimum requirement for an Ubuntu 22.04](https://help.ubuntu.com/community/Installation/SystemRequirements)
  installation is 25GB (25600MB). If you can spare more space, go for it;

**NOTE: if you would like to resize your Windows 11 partition down to less than half its original size, the above
mentioned instruction will not work. Instead, follow:**

* **make sure neither BitLocker nor Device Encryption is turned on on your computer**;
*
    * **if Device Encryption is turned on, simply turn it off from Settings > Privacy & Security**;
*
    * **if BitLocker is turned on, execute these commands from within Powershell in "Admin mode":**

```powershell
manag-bde --status # this command only prints status information about your device encryption
Disable-Bitlocker -MountPoint "C:"
manage-bde -off C:
```

* **download and install [AOMEI Partition Assistant](https://www.diskpart.com/download.html)**;
* **resize the windows partition using AOMEI Partition Assistant**;

#### Windows Drive Encryption

1) Device Encryption

To check if your computer supports *Device Encryption*, open **Settings > Privacy & Security**. If your computer support
that feature, you should see a tab called *Device Encryption*. By default, Windows 11 should turn the feature on.

**NOTE: when the Device Encryption is over, you should check and save the recovery key somewhere safe:**

* **If you linked your user account to your Microsoft Account: the recovery key can be obtained
  through [this Microsoft link](https://account.microsoft.com/devices/recoverykey)**
* **Otherwise, go to `Settings > Privacy & Security > Device Encryption` and click on "Manage my BitLocker parameters
  and then on "Save my recovery key"**

2) BitLocker

If *Device Encryption* is unavailable on your computer, turn
on [BitLocker](https://support.microsoft.com/en-us/windows/turn-on-device-encryption-0c453637-bc88-5f74-5105-741561aae838) (
see the bottom of the page).

**NOTE: you MUST save the recovery key somewhere safe and not on your computer**

### Installing Ubuntu

* download the Ubuntu 22.04 ISO
  from [Ubuntu's website](https://ubuntu.com/download/desktop/thank-you?version=22.04.1&architecture=amd64);
* flash the downloaded ISO to a USB stick. There are multiple ways of doing that. For example, you could
  use [rufus](https://rufus.ie/en/);
* boot your computer from the flashed USB stick;
* follow **Phase 3: Partition the drive for Ubuntu** and **Phase 4: Install Ubuntu**
  from [this tutorial](https://www.mikekasberg.com/blog/2020/04/08/dual-boot-ubuntu-and-windows-with-encryption.html).
  The tutorial was written for a Windows 10 and Ubuntu 20.04 dual-boot but works great for a Windows 11 and Ubuntu 22.04
  dual-boot;
  
  Careful that in the provided commands you may need to replace `sda` by `nvme0n1`, [depending on your hardware](https://askubuntu.com/questions/932331/filesystem-shows-dev-nvme0n1p1-instead-of-dev-sda).
  
  In case of need, ask Nicolas Daxhelet for support.
* once this is all done, reboot the computer;
* you will be greeted by **GRUB**, select *Ubuntu*;
* that's it! You can now follow the instructions in the [Getting Started](#Getting-Started) section (dont forget
  the [After Running The Script](#After-Running-The-Script) section!);

## Notes

* The commit format is based on [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/).
* The change log format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
  and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Change log

Please refer to the [CHANGELOG.md](https://github.com/belighted/ubuntu-belighted/blob/main/CHANGELOG.md) file.

## Notes

### Slack

If you used this script before slack was installed through snap, you might have noticed a few GPG related warnings after
running ```sudo apt update```. To remove them and install slack using snap:

* run "sudo apt-key list" and find the problematic keys. This should not be too difficult since this command should not
  list more thant a few keys. Once you found the keys, look at their "pub" entry. Note the 8 last characters for each
  problematic key. All key entries look something like this:

```bash
------------------------------------
pub   rsa2048 2015-10-28 [SC]
      BC52 8686 B50D 79E3 39D3  721C EB3E 94AD BE12 29CF
uid           [ unknown] Microsoft (Release signing) <gpgsecurity@microsoft.com>

## In this example, the number you are looking for is BE1229CF
```

* run the following command for each problematic key:

```bash
sudo apt-key del $NUMBER_YOU_GOT_FROM_PREVIOUS_STEP
```

* run the following command to remove the ```slack.list``` file from the apt sources:

```bash
sudo rm -f /etc/apt/sources.list.d/slack.list
```

* run the following command to completely uninstall the slack version you initially installed while running this script:

```bash
sudo apt purge slack-desktop -y
```

* if snaps are not yet ava`ilable on your machine:

```bash
sudo apt update
sudo apt install snapd
```

* finaly, install slack as a snap:

```bash
sudo snap install slack
```