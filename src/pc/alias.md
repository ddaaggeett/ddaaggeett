bash commands `[gl, off, suspend, poweroff]`

add the following bash commands to `~/.bashrc`:

```
alias gl='git log --oneline --decorate --graph --all'
alias off='systemctl -i suspend'
alias reboot='systemctl -i reboot'
alias poweroff='systemctl -i poweroff'
```
