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
mkdir -p $USER_FONT_PATH
wget $MESLO_LGS_NF_REGULAR_URL -O $USER_FONT_PATH/MesloLGS-NF-Regular.ttf
wget $MESLO_LGS_NF_BOLD_URL -O $USER_FONT_PATH/MesloLGS-NF-Bold.ttf
wget $MESLO_LGS_NF_ITALIC_URL -O $USER_FONT_PATH/MesloLGS-NF-Italic.ttf
wget $MESLO_LGS_NF_BOLD_ITALIC_URL -O $USER_FONT_PATH/MesloLGS-NF-BoldItalic.ttf
fc-cache
git clone --depth=1 $POWERLEVEL10K_GIT ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
## ZSHRC
rm $HOME/.zshrc
cp .zshrc $HOME/.zshrc
## ALIASES
cp aliases.zsh $HOME/.oh-my-zsh/custom/aliases.zsh
