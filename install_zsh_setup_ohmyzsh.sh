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
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs 16.17.0
asdf global nodejs 16.17.0
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install ruby 3.1.2
asdf global ruby 3.1.2
gem install rails
asdf plugin-add python
asdf install python 3.10.6
asdf global python 3.10.6

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
