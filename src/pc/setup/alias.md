The following terminal commands should be ready to run if you've run the `config script` detailed [here](./index.md)

- `gl`: print any current git repository information
- `off`: put pc to sleep
- `reboot`
- `poweroff`
___

If you haven't run the `config script`, do it manually:

Add the following bash commands to `/home/[username]/.bashrc`:

```
alias gl='git log --oneline --decorate --graph --all'
alias off='systemctl -i suspend'
alias reboot='systemctl -i reboot'
alias poweroff='systemctl -i poweroff'
```
