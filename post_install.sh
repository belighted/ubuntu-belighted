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
asdf install nodejs latest
asdf global nodejs latest
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install ruby latest
asdf global ruby latest
asdf plugin-add python
asdf install python latest
asdf global python latest
asdf plugin-add postgres
asdf install postgres latest
asdf global postgres latest

# FILE CLEAN UP
rm -rf .deb .tar .extensions
sudo rm -f brscan*.deb
sudo rm -f dcp9270cdn*.deb
sudo rm -f uninstaller_*
