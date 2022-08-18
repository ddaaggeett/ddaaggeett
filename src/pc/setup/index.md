1. Install Debian from your [bootable USB drive](../index.md) with a hard-wired internet connection. Make sure to [change you boot drive order](https://helpdeskgeek.com/how-to/how-to-change-the-boot-order-in-the-bios-on-your-windows-pc/).
___
2. Known error: [Debian wifi firmware error handling](./deb.md). This is unnecessary if you're never going to use WIFI.
___
3. **`config script`**:

If you've [cloned this repository](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository), run (copy + paste) the following in your `terminal` once Debian is installed from inside directory: `/ddaaggeett`

```
chmod +x ./src/pc/setup/config.sh
./src/pc/setup/config.sh
```
___

personalization:

[newwinlogo]: http://i.stack.imgur.com/B8Zit.png
- windows key <kbd>![Windows Key][newwinlogo]</kbd> [shortcuts](./keys.md)  
- convenient [terminal/bash commands](./alias.md)
