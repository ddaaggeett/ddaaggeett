Required firmware install for Debian 11

My first error prompting this action was installing Debian on a laptop without a hard-wired internet connection. Solution was to install some firmware:

if the `config script` hasn't been run, then handle manually:

Run the following in terminal:

```
wget https://cdimage.debian.org/cdimage/unofficial/non-free/firmware/bullseye/current/firmware.zip
unzip firmware.zip
sudo dpkg -i *.deb
```
