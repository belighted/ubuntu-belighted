#!/bin/bash
# VARIABLES
GNOME_SHELL_EXTENSIONS="/home/$(whoami)/.local/share/gnome-shell/extensions"
USER_THEMES="user-theme@gnome-shell-extensions.gcampax.github.com"
UT_URL="https://extensions.gnome.org/extension-data/user-themegnome-shell-extensions.gcampax.github.com.v49.shell-extension.zip"
REMOVABLE_DRIVE_MENU="drive-menu@gnome-shell-extensions.gcampax.github.com"
RDM_URL="https://extensions.gnome.org/extension-data/drive-menugnome-shell-extensions.gcampax.github.com.v51.shell-extension.zip"
CLIPBOARD_INDICATOR="clipboard-indicator@tudmotu.com"
CI_URL="https://extensions.gnome.org/extension-data/clipboard-indicatortudmotu.com.v42.shell-extension.zip"
CAFFEINE="caffeine@patapon.info"
C_URL="https://extensions.gnome.org/extension-data/caffeinepatapon.info.v41.shell-extension.zip"
PLACES_STATUS_INDICATOR="places-menu@gnome-shell-extensions.gcampax.github.com"
PSI_URL="https://extensions.gnome.org/extension-data/places-menugnome-shell-extensions.gcampax.github.com.v54.shell-extension.zip"
SOUND_INPUT_OUTPUT_DEVICE_CHOOSER="sound-output-device-chooser@kgshank.net"
SIODC_URL="https://extensions.gnome.org/extension-data/sound-output-device-chooserkgshank.net.v43.shell-extension.zip"
TRAY_ICONS_RELOADED="trayIconsReloaded@selfmade.pl"
TIR_URL="https://extensions.gnome.org/extension-data/trayIconsReloadedselfmade.pl.v25.shell-extension.zip"
VITALS="Vitals@CoreCoding.com"
V_URL="https://extensions.gnome.org/extension-data/VitalsCoreCoding.com.v57.shell-extension.zip"

# GNOME EXTENSIONS
mkdir -p $GNOME_SHELL_EXTENSIONS
## USER THEMES
mkdir ./.extensions
wget $UT_URL -O ./.extensions/user_themes.zip
unzip -qq .extensions/user_themes.zip -d ./.extensions/$USER_THEMES
cp -r ./.extensions/$USER_THEMES ~/.local/share/gnome-shell/extensions/$USER_THEMES
## REMOVABLE DRIVE MENU
wget $RDM_URL -O ./.extensions/removable_drive_menu.zip
unzip -qq .extensions/removable_drive_menu.zip -d ./.extensions/$REMOVABLE_DRIVE_MENU
cp -r ./.extensions/$REMOVABLE_DRIVE_MENU ~/.local/share/gnome-shell/extensions/$REMOVABLE_DRIVE_MENU
## CLIPBOARD INDICATOR
wget $CI_URL -O ./.extensions/clipboard_indicator.zip
unzip -qq .extensions/clipboard_indicator.zip -d ./.extensions/$CLIPBOARD_INDICATOR
cp -r ./.extensions/$CLIPBOARD_INDICATOR ~/.local/share/gnome-shell/extensions/$CLIPBOARD_INDICATOR
## CAFFEINE
wget $C_URL -O ./.extensions/caffeine.zip
unzip -qq .extensions/caffeine.zip -d ./.extensions/$CAFFEINE
cp -r ./.extensions/$CAFFEINE ~/.local/share/gnome-shell/extensions/$CAFFEINE
## PLACES STATUS INDICATOR
wget $PSI_URL -O ./.extensions/places_status_indicator.zip
unzip -qq .extensions/places_status_indicator.zip -d ./.extensions/$PLACES_STATUS_INDICATOR
cp -r ./.extensions/$PLACES_STATUS_INDICATOR ~/.local/share/gnome-shell/extensions/$PLACES_STATUS_INDICATOR
## SOUND INPUT & OUTPUT DEVICE CHOOSER
wget $SIODC_URL -O ./.extensions/sound_input_output_device_chooser.zip
unzip -qq .extensions/sound_input_output_device_chooser.zip -d ./.extensions/$SOUND_INPUT_OUTPUT_DEVICE_CHOOSER
cp -r ./.extensions/$SOUND_INPUT_OUTPUT_DEVICE_CHOOSER ~/.local/share/gnome-shell/extensions/$SOUND_INPUT_OUTPUT_DEVICE_CHOOSER
## TRAY ICONS: RELOADED
wget $TIR_URL -O ./.extensions/tray_icons_reloaded.zip
unzip -qq .extensions/tray_icons_reloaded.zip -d ./.extensions/$TRAY_ICONS_RELOADED
cp -r ./.extensions/$TRAY_ICONS_RELOADED ~/.local/share/gnome-shell/extensions/$TRAY_ICONS_RELOADED
## VITALS
wget $V_URL -O ./.extensions/vitals.zip
unzip -qq .extensions/vitals.zip -d ./.extensions/$VITALS
cp -r ./.extensions/$VITALS ~/.local/share/gnome-shell/extensions/$VITALS
