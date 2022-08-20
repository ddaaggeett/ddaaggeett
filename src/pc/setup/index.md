[newwinlogo]: http://i.stack.imgur.com/B8Zit.png
1. Open terminal: Press/release <kbd>![Windows Key][newwinlogo]</kbd> and type `terminal`: select the application

2. Copy + Paste (right click: `paste`) the following in your terminal. This will run the **`config script`**:

```
wget https://github.com/ddaaggeett/ddaaggeett/archive/main.zip
unzip main.zip && mv ddaaggeett-main ddaaggeett && cd ddaaggeett
chmod +x ./src/pc/setup/config.sh
./src/pc/setup/config.sh
```

This does the following:
- installs [firmware](./firmware.md)
- installs preferred [software](./apps.md)
- sets preferred <kbd>![Windows Key][newwinlogo]</kbd> [key command shortcuts](./keys.md) for workflow
- enables convenient [terminal commands](./alias.md)
