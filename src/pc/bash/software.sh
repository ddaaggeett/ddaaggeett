#!/bin/bash
echo installing software

# install brave browser
sudo apt install apt-transport-https curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y

# install git
sudo apt install git -y

# install nvm
# TODO: untested
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install --lts

# install python
# TODO: untested
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
pip install opencv-contrib-python

# install atom.io
wget -O atom.deb https://atom.io/download/deb
sudo dpkg -i atom.deb
rm -rf atom.deb

# install OBS studio
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install obs-studio ffmpeg -y

# install yarn
# TODO: untested
npm install --global yarn

# install rethinkDB
export CODENAME=`lsb_release -cs`
echo "deb https://download.rethinkdb.com/repository/debian-$CODENAME $CODENAME main" | sudo tee /etc/apt/sources.list.d/rethinkdb.list
wget -qO- https://download.rethinkdb.com/repository/raw/pubkey.gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get install rethinkdb

# install Expo-CLI
# TODO: untested
npm install --global expo-cli

# install wine
sudo sh -c 'echo " deb https://dl.winehq.org/wine-builds/debian/ bullseye main" >> /etc/apt/sources.list.d/wine.list'
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt update
sudo apt install --install-recommends winehq-stable
sudo apt install winetricks

# install steam
sudo dpkg --add-architecture i386
sudo add-apt-repository non-free
sudo apt install software-properties-common
sudo apt update
sudo apt install steam

# install youtube-dl
sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
# install yt-dlp
sudo wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp  # Make executable
