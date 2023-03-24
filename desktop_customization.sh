#!/bin/bash
# VARIABLES
source variables

# GNOME EXTENSIONS
mkdir -p $GNOME_SHELL_EXTENSIONS
## USER THEMES
mkdir .extensions
wget $UT_URL -O .extensions/user_themes.zip
unzip -qq .extensions/user_themes.zip -d .extensions/$USER_THEMES
cp -r .extensions/$USER_THEMES $GNOME_SHELL_EXTENSIONS/$USER_THEMES
## REMOVABLE DRIVE MENU
wget $RDM_URL -O .extensions/removable_drive_menu.zip
unzip -qq .extensions/removable_drive_menu.zip -d .extensions/$REMOVABLE_DRIVE_MENU
cp -r .extensions/$REMOVABLE_DRIVE_MENU $GNOME_SHELL_EXTENSIONS/$REMOVABLE_DRIVE_MENU
## CLIPBOARD INDICATOR
wget $CI_URL -O .extensions/clipboard_indicator.zip
unzip -qq .extensions/clipboard_indicator.zip -d .extensions/$CLIPBOARD_INDICATOR
cp -r .extensions/$CLIPBOARD_INDICATOR $GNOME_SHELL_EXTENSIONS/$CLIPBOARD_INDICATOR
## CAFFEINE
wget $C_URL -O .extensions/caffeine.zip
unzip -qq .extensions/caffeine.zip -d .extensions/$CAFFEINE
cp -r .extensions/$CAFFEINE $GNOME_SHELL_EXTENSIONS/$CAFFEINE
## PLACES STATUS INDICATOR
wget $PSI_URL -O .extensions/places_status_indicator.zip
unzip -qq .extensions/places_status_indicator.zip -d .extensions/$PLACES_STATUS_INDICATOR
cp -r .extensions/$PLACES_STATUS_INDICATOR $GNOME_SHELL_EXTENSIONS/$PLACES_STATUS_INDICATOR
## SOUND INPUT & OUTPUT DEVICE CHOOSER
wget $SIODC_URL -O .extensions/sound_input_output_device_chooser.zip
unzip -qq .extensions/sound_input_output_device_chooser.zip -d .extensions/$SOUND_INPUT_OUTPUT_DEVICE_CHOOSER
cp -r .extensions/$SOUND_INPUT_OUTPUT_DEVICE_CHOOSER $GNOME_SHELL_EXTENSIONS/$SOUND_INPUT_OUTPUT_DEVICE_CHOOSER
## TRAY ICONS: RELOADED
wget $TIR_URL -O .extensions/tray_icons_reloaded.zip
unzip -qq .extensions/tray_icons_reloaded.zip -d .extensions/$TRAY_ICONS_RELOADED
cp -r .extensions/$TRAY_ICONS_RELOADED $GNOME_SHELL_EXTENSIONS/$TRAY_ICONS_RELOADED
## VITALS
wget $V_URL -O .extensions/vitals.zip
unzip -qq .extensions/vitals.zip -d .extensions/$VITALS
cp -r .extensions/$VITALS $GNOME_SHELL_EXTENSIONS/$VITALS
