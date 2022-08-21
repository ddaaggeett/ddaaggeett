[newwinlogo]: http://i.stack.imgur.com/B8Zit.png

**windows key <kbd>![Windows Key][newwinlogo]</kbd> shortcuts**:  

Press/Hold <kbd>![Windows Key][newwinlogo]</kbd> **+ number** to open the docked applications:

<kbd>![Windows Key][newwinlogo]</kbd> + 1 -> terminal  
<kbd>![Windows Key][newwinlogo]</kbd> + 2 -> files  
<kbd>![Windows Key][newwinlogo]</kbd> + 3 -> brave browser  
<kbd>![Windows Key][newwinlogo]</kbd> + 4 -> atom.io
___

If the `config script` hasn't been run, then handle manually:  
Run the following in terminal:

```
gsettings set org.gnome.shell favorite-apps "['org.gnome.Terminal.desktop', 'org.gnome.Nautilus.desktop', 'brave-browser.desktop', 'atom.desktop', 'com.obsproject.Studio.desktop']"
```
