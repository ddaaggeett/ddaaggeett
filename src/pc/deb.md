required firmware install for debian 11

first error prompting this action was installing debian on a laptop thout a hardwired internet link. Solution was to install the non-free firmware for wifi networking:

- download `https://cdimage.debian.org/cdimage/unofficial/non-free/firmware/bullseye/current/firmware.zip`
- extract `/firmware.zip` to `/firmware`

```
mv /firmware
sudo dpkg -i *.deb
```
