#!/bin/bash
echo installing Debian firmware

wget https://cdimage.debian.org/cdimage/unofficial/non-free/firmware/bullseye/current/firmware.zip
unzip firmware.zip -d ./firmware
sudo dpkg -i ./firmware/*.deb
rm -rf firmware
sudo apt update
sudo apt upgrade -y
sudo apt --fix-broken install
