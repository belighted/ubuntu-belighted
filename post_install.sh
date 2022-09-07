#!/bin/bash
# VARIABLES
GNOME_SHELL_EXTENSIONS="/home/$(whoami)/.local/gnome-shell/extensions"
USER_THEMES="user-theme@gnome-shell-extensions.gcampax.github.com"
REMOVABLE_DRIVE_MENU="drive-menu@gnome-shell-extensions.gcampax.github.com"
CLIPBOARD_INDICATOR="clipboard-indicator@tudmotu.com"
CAFFEINE="caffeine@patapon.info"
PLACES_STATUS_INDICATOR="places-menu@gnome-shell-extensions.gcampax.github.com"
SOUND_INPUT_OUTPUT_DEVICE_CHOOSER="sound-output-device-chooser@kgshank.net"
TRAY_ICONS_RELOADED="trayIconsReloaded@selfmade.pl"
VITALS="Vitals@CoreCoding.com"

# GNOME EXTENSIONS
gnome-extensions enable $USER_THEMES
gnome-extensions enable $REMOVABLE_DRIVE_MENU
gnome-extensions enable $CLIPBOARD_INDICATOR
gnome-extensions enable $CAFFEINE
gnome-extensions enable $PLACES_STATUS_INDICATOR
gnome-extensions enable $SOUND_INPUT_OUTPUT_DEVICE_CHOOSER
gnome-extensions enable $TRAY_ICONS_RELOADED
gnome-extensions enable $VITALS

# ASDF
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

# FILE CLEAN UP
rm -rf .deb .tar .extensions
sudo rm -f brscan*.deb
sudo rm -f dcp9270cdn*.deb
sudo rm -f uninstaller_*
