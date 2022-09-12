# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

### 1.0.1 (2022-09-12)


### Bug Fixes

* apply suggestions from code review ([1c753d5](https://github.com/belighted/ubuntu-belighted/commit/1c753d5779a741617ff93fccd7307884b20d22d4))
* apply suggestions from code review ([d5756db](https://github.com/belighted/ubuntu-belighted/commit/d5756db8504d30a2b43a366a3dd13af8da0abbe3))
* code duplication for asdf plugins ([4a6f205](https://github.com/belighted/ubuntu-belighted/commit/4a6f205fd73816784e076f3049146c8d0dbbfd3b))
* removing the ".env" section from the README ([721b7d5](https://github.com/belighted/ubuntu-belighted/commit/721b7d5664260808e063d2054b0b5c4f59c66053))
* updated README.md ([6457a74](https://github.com/belighted/ubuntu-belighted/commit/6457a7465244320ffd25570f87d79becf0b14d55))
* updating package table in README ([fd4a56b](https://github.com/belighted/ubuntu-belighted/commit/fd4a56bcdd2276df78fc4aabbba0ef34e9914d39))
* use latest tag with asdf install ([200f940](https://github.com/belighted/ubuntu-belighted/commit/200f940649dc44a47762e25bac26cb5f3a17c3b3))

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
