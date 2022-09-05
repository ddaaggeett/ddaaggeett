#!/bin/bash
echo setting alias commands

aliases=(
    "alias gl='git log --oneline --decorate --graph --all'"
    "alias off='systemctl -i suspend'"
    "alias reboot='systemctl -i reboot'"
    "alias poweroff='systemctl -i poweroff'"
    "alias config='cd ~/github/ddaaggeett/src/pc/bash && ./index.sh'"
    "alias lip='hostname -I | awk \"{print \\\$1}\"'"
)

printf "%s\n" "${aliases[@]}" >> ~/.bashrc
