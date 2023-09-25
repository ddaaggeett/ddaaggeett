<link href="../../css/styles.css" rel="stylesheet" />

[newwinlogo]: http://i.stack.imgur.com/B8Zit.png
1. Open terminal: Press/release <kbd>![Windows Key][newwinlogo]</kbd> and type `terminal`: select the application.

2. Enter the following in terminal:

    1. `su -` then enter password
    2. `visudo`
    3. add line `<your_user_name> ALL=(ALL:ALL) ALL` below `# User privilege specification`, where `<your_user_name>` = `ddaaggeett` (for me) :

        <code class="code">
        
        
# User privilege specification
root    ALL=(ALL:ALL) ALL
ddaaggeett ALL=(ALL:ALL) ALL
        
        </code>

    4. `ctrl + O` - then enter
    5. `ctrl + X`

3. Copy + right-click `Paste` the following in your terminal. This will run the **`configuration script`**:
    <span class="code">

    ```
    wget https://github.com/ddaaggeett/ddaaggeett/archive/main.zip -P ~/github && cd ~/github
    sudo unzip main.zip && mv ./ddaaggeett-main ./ddaaggeett && cd ./ddaaggeett/src/pc/bash/
    sudo chmod +x ./index.sh
    sudo ./index.sh
    ```
    </span>
    Using your keyboard, accept all prompts.
 ___

This does the following:
- **enables convenient [terminal commands](./alias.md)**
- installs [firmware](./firmware.md)
- installs preferred [software](./software.md)
- sets preferred <kbd>![Windows Key][newwinlogo]</kbd> [key command shortcuts](./keys.md) for workflow
___
