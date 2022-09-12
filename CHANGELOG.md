# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

The commit format is based on [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/).

## [0.0.1] - 2022-09-07
### Added
- A README.md file for guiding the user on how to use this repository.
- A install.sh file for installing this repository on the target machine and run the main.sh file.
- A main.sh file for calling the different bash scripts that make this repository.
- A install_packages.sh file for installing essential packages (see the list in the [README.md](https://github.com/belighted/ubuntu-belighted/blob/main/README.md)).
- A packages.txt containing a list (on per line) of packages to install on the target machine.
- A install_zsh.sh file for installing ZSH, Oh My Zsh and various plugins for Oh My Zsh as well as a theme and aliases.
- A desktop_customization.sh file for installing gnome shell extensions.
- A post_install.sh file for operations that needed the system to reboot after the main installation scripts finished executing. This file also installs dev languages through ASDF.
- A fonts folder containing the MesloLGS NF fonts (required by the Oh My Zsh powerlevel10k theme).
- A .zshrc file containing basic ZSH configurations.
- A aliases.zsh containing basic aliases.
