#!/bin/bash
# VARIABLES
source variables

# SET ZSH AS DEFAULT SHELL
sudo chsh -s $(which zsh) $USER

# OH MY ZSH
## INSTALL OH MY ZSH
sh -c "$(curl -fsSL $OHMYZSH_INSTALL_SCRIPT)" "" --unattended
## INSTALL PLUGINS
git clone $ZSH_AUTOSUGGESTIONS_GIT ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone $ZSH_SYNTAX_HIGHLIGHTING_GIT ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
## INSTALL ASDF & NODE & RUBY & RAILS & PYTHON
git clone $ASDF_GIT $HOME/.asdf

## INSTALL POWERLEVEL10K
mkdir -p $HOME/.local/share/fonts
cp fonts/* $HOME/.local/share/fonts
fc-cache
git clone --depth=1 $POWERLEVEL10K_GIT ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
## ZSHRC
rm $HOME/.zshrc
cp .zshrc $HOME/.zshrc
## ALIASES
cp aliases.zsh $HOME/.oh-my-zsh/custom/aliases.zsh
