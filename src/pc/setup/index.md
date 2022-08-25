[newwinlogo]: http://i.stack.imgur.com/B8Zit.png
1. Open terminal: Press/release <kbd>![Windows Key][newwinlogo]</kbd> and type `terminal`: select the application.

2. Enter the following in terminal:

    - `su -` then enter password
    - `visudo`
    - add line `<your_user_name> ALL=(ALL:ALL) ALL` below `# User privilege specification`, where `<your_user_name>` = `ddaaggeett` (for me) :

        ```
        # User privilege specification
        root    ALL=(ALL:ALL) ALL
        ddaaggeett ALL=(ALL:ALL) ALL
        ```
    - `ctrl + O` - then enter
    - `ctrl + X`

2. Copy + right-click `Paste` the following in your terminal. This will run the **`config script`**:

    ```
    wget https://github.com/ddaaggeett/ddaaggeett/archive/main.zip
    unzip main.zip && cd ddaaggeett-main
    chmod +x ./src/pc/setup/config.sh
    sudo ./src/pc/setup/config.sh
    ```
    Using your keyboard, accept all prompts.
 ___

This does the following:
- installs [firmware](./firmware.md)
- installs preferred [software](./apps.md)
- sets preferred <kbd>![Windows Key][newwinlogo]</kbd> [key command shortcuts](./keys.md) for workflow
- enables convenient [terminal commands](./alias.md)
