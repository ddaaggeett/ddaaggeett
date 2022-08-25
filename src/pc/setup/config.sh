#!/bin/bash

# install firmware
wget https://cdimage.debian.org/cdimage/unofficial/non-free/firmware/bullseye/current/firmware.zip
unzip firmware.zip -d ./firmware
sudo dpkg -i ./firmware/*.deb
rm -rf firmware

# set alias commands
aliases=(
    "alias gl='git log --oneline --decorate --graph --all'"
    "alias off='systemctl -i suspend'"
    "alias reboot='systemctl -i reboot'"
    "alias poweroff='systemctl -i poweroff'"
)

printf "%s\n" "${aliases[@]}" >> ~/.bashrc

sudo apt update
sudo apt upgrade -y
sudo apt --fix-broken install

# install brave browser
sudo apt install apt-transport-https curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y

# install git
sudo apt install git -y

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# install python
wget -O python3.tar.gz https://www.python.org/ftp/python/3.10.6/Python-3.10.6.tar.xz
tar xf python3.tar.xz && cd python3
./configure
make
sudo make install
# install pip
sudo apt install python3-pip -y
# symlink python3 + pip3
sudo ln -sf /usr/bin/python3 /usr/bin/python
sudo ln -sf /usr/bin/pip3 /usr/bin/pip

# install atom.io
wget -O atom.deb https://atom.io/download/deb
sudo dpkg -i atom.deb
rm -rf atom.deb

# install OBS studio
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install obs-studio ffmpeg -y

# install yarn
npm install --global yarn

# install rethinkDB
export CODENAME=`lsb_release -cs`
echo "deb https://download.rethinkdb.com/repository/debian-$CODENAME $CODENAME main" | sudo tee /etc/apt/sources.list.d/rethinkdb.list
wget -qO- https://download.rethinkdb.com/repository/raw/pubkey.gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get install rethinkdb

# install Expo-CLI
npm install --global expo-cli

# set favorite app order 1. terminal 2. files 3. brave browser 4. atom.io 5. OBS studio
gsettings set org.gnome.shell favorite-apps "['org.gnome.Terminal.desktop', 'org.gnome.Nautilus.desktop', 'brave-browser.desktop', 'atom.desktop', 'com.obsproject.Studio.desktop']"

exit 0
