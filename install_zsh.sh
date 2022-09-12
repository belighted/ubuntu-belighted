#!/bin/bash
# SET ZSH AS DEFAULT SHELL
sudo chsh -s $(which zsh) $(whoami)

# OH MY ZSH
## INSTALL OH MY ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
## INSTALL PLUGINS
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
## INSTALL ASDF & NODE & RUBY & RAILS & PYTHON
git clone https://github.com/asdf-vm/asdf.git ~/.asdf

## INSTALL POWERLEVEL10K
mkdir -p ~/.local/share/fonts
cp ./fonts/* ~/.local/share/fonts
fc-cache
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
## ZSHRC
rm ~/.zshrc
cp ./.zshrc ~/.zshrc
## ALIASES
cp ./aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
