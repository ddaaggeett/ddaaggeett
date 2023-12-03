<link href="../css/styles.css" rel="stylesheet" />

I've' used all 3 standard operating systems: Windows, MacOS, and Linux. They're all good.

This is [Debian](https://www.debian.org/) Linux. I use it as my primary desktop. [Ubuntu](https://ubuntu.com/tutorials/install-ubuntu-desktop#1-overview) Linux also does the trick which tends to be better for new Linux users. I recommend [booting these with a virtual machine](https://ubuntu.com/tutorials/how-to-run-ubuntu-desktop-on-a-virtual-machine-using-virtualbox#1-overview) to test it out in your current PC before considering a full install.

**YES**, this configuration will provide the regular everyday, no-skill PC user experience. The idea Linux is not user-friendly or non-dummy-proof is entirely false. So, welcome.
___

 **Copy using the following**:

Debian:
1. Download the [latest .iso image](https://www.debian.org/download)
2. [create a bootable USB installation disk](https://linuxhint.com/create_bootable_linux_usb_flash_drive/) with your downloaded .iso
3.  Install Debian from your bootable USB drive with a hard-wired internet connection. Make sure to [change your boot drive order](https://helpdeskgeek.com/how-to/how-to-change-the-boot-order-in-the-bios-on-your-windows-pc/) to recognize your ISO disk first.

Optional configuration after a fresh boot:

<link href="../../css/styles.css" rel="stylesheet" />

[newwinlogo]: http://i.stack.imgur.com/B8Zit.png
1. Open terminal: Press/release <kbd>![Windows Key][newwinlogo]</kbd> and type `terminal`: select the application.

2. Enter the following in terminal:

    1. `su -` then enter password
    2. `visudo`
    3. add line `<your_user_name> ALL=(ALL:ALL) ALL` below `# User privilege specification`, where `<your_user_name>` = `ddaaggeett` (for me) :

    ```bash
    # User privilege specification
    root    ALL=(ALL:ALL) ALL
    ddaaggeett ALL=(ALL:ALL) ALL
    ```
    4. `ctrl + O` - then enter
    5. `ctrl + X`

3. Copy + right-click `Paste` the following in your terminal. This will run the **`configuration script`**:
    <span class="code">

    ```bash
    wget https://github.com/ddaaggeett/ddaaggeett/archive/main.zip -P ~/github && cd ~/github
    sudo unzip main.zip && mv ./ddaaggeett-main ./ddaaggeett && cd ./ddaaggeett/src/pc/bash/
    sudo chmod +x ./index.sh
    sudo ./index.sh
    ```
    </span>
    Using your keyboard, accept all prompts.
 ___

This does the following:
- **enables convenient [terminal commands](../pc/setup/alias.md)**
- installs [firmware](../pc/setup/firmware.md)
- installs preferred [software](../pc/setup/software.md)
- sets preferred <kbd>![Windows Key][newwinlogo]</kbd> [key command shortcuts](../pc/setup/keys.md) for workflow
___

Any questions, please ask one [here](https://github.com/ddaaggeett/ddaaggeett/issues/new/choose).
