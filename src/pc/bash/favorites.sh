#!/bin/bash
echo setting order or favorite apps

# set favorite app order 1. terminal 2. files 3. brave browser 4. atom.io 5. OBS studio
gsettings set org.gnome.shell favorite-apps "['org.gnome.Terminal.desktop', 'org.gnome.Nautilus.desktop', 'brave-browser.desktop', 'atom.desktop', 'com.obsproject.Studio.desktop']"