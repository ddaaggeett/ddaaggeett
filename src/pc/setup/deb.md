Required firmware install for Debian 11

My first error prompting this action was installing Debian on a laptop without a hard-wired internet connection. Solution was to install the non-free firmware for WIFI networking:

- download `https://cdimage.debian.org/cdimage/unofficial/non-free/firmware/bullseye/current/firmware.zip`
- extract `/firmware.zip` to `/firmware`

```
mv /firmware
sudo dpkg -i *.deb
```
