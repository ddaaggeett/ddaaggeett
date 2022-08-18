#!/bin/bash

aliases=(
    "alias gl='git log --oneline --decorate --graph --all'"
    "alias off='systemctl -i suspend'"
    "alias reboot='systemctl -i reboot'"
    "alias poweroff='systemctl -i poweroff'"
)

printf "%s\n" "${aliases[@]}" >> ~/.bashrc

exit 0
