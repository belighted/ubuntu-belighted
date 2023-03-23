#!/bin/bash
# VARIABLES
source variables

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
asdf plugin add nodejs $ASDF_NODEJS_GIT
asdf install nodejs latest
asdf global nodejs latest
asdf plugin add ruby $ASDF_RUBY_GIT
asdf install ruby latest
asdf global ruby latest
asdf plugin-add python
asdf install python latest
asdf global python latest
asdf plugin-add postgres
asdf install postgres latest
asdf global postgres latest

# SUSPEND THEN HIBERNATE
sudo bash -c "echo $HANDLE_LID_SWITCH >> $LOGIND_CONF_PATH"
sudo bash -c "echo $HANDLE_LID_SWITCH_DOCKED >> $LOGIND_CONF_PATH"
sudo sed -i "s/\($TARGET_KEY *= *\).*/\1$REPLACEMENT_VALUE/" $UPOWER_CONF_FILE
if test -f $SLEEP_CONF_PATH; then
    sudo bash -c "echo $HIBERNATE_DELAY_SEC >> $SLEEP_CONF_PATH"
else
    sudo cp sleep.conf $SLEEP_CONF_PATH
fi
gsettings set $GNOME_POWER_SETTINGS $SUSPEND_WITH_EXT_MONITOR

# FILE CLEAN UP
rm -rf .deb .tar .extensions
sudo rm -f brscan*.deb
sudo rm -f dcp9270cdn*.deb
sudo rm -f uninstaller_*
rm -rf $HOME/.scripts/ubuntu-belighted
