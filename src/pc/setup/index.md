1. Install Debian from your [bootable USB drive](../index.md) with a hard-wired internet connection. Make sure to [change you boot drive order](https://helpdeskgeek.com/how-to/how-to-change-the-boot-order-in-the-bios-on-your-windows-pc/).

2. Known error: [Debian wifi firmware error handling](./deb.md). This is unnecessary to handle if you're never going to use WIFI.

[newwinlogo]: http://i.stack.imgur.com/B8Zit.png

3. Open terminal: Press/release <kbd>![Windows Key][newwinlogo]</kbd> and type `terminal`: select the application

4. Copy + Paste (right click: `paste`) the following in your terminal. This will run the **`config script`**:

```
wget https://github.com/ddaaggeett/ddaaggeett/archive/main.zip
unzip main.zip && mv ddaaggeett-main ddaaggeett && cd ddaaggeett
chmod +x ./src/pc/setup/config.sh
./src/pc/setup/config.sh
```
___

personalization:

- windows key <kbd>![Windows Key][newwinlogo]</kbd> [shortcuts](./keys.md)  
- convenient [terminal/bash commands](./alias.md)
