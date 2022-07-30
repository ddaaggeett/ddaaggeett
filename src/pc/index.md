[Debian 11](https://www.debian.org/download)

- [brave browser](https://brave.com/linux/#debian-ubuntu-mint)
- [git](https://git-scm.com/download/linux)
- [atom.io](https://atom.io)
- [nvm](https://github.com/nvm-sh/nvm#installing-and-updating)
___

[newwinlogo]: http://i.stack.imgur.com/B8Zit.png

**windows key <kbd>![Windows Key][newwinlogo]</kbd> shortcuts**:  
place applications in the following order:

<kbd>![Windows Key][newwinlogo]</kbd> + 1 -> terminal  
<kbd>![Windows Key][newwinlogo]</kbd> + 2 -> files  
<kbd>![Windows Key][newwinlogo]</kbd> + 3 -> brave browser  
<kbd>![Windows Key][newwinlogo]</kbd> + 4 -> atom.io  
___

**execute `python` as `python3`**:

    sudo ln -sf /usr/bin/python3 /usr/bin/python

where [/usr/bin/python3] == `$ which python3`
___

**convenience commands**

add the following bash commands to `~/.bashrc`:
    
- `alias gl='git log --oneline --decorate --graph --all'`
- `alias off='systemctl -i suspend'`
