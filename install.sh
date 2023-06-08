#!/bin/bash

echo "\x1b[35;1m  ██████ ██░ ██ ▄▄▄      ██▀███ ▓█████  ▄████ ██▀███  ██▓███▄ ▄███▓
▒██    ▒▓██░ ██▒████▄   ▓██ ▒ ██▓█   ▀ ██▒ ▀█▓██ ▒ ██▓██▓██▒▀█▀ ██▒
░ ▓██▄  ▒██▀▀██▒██  ▀█▄ ▓██ ░▄█ ▒███  ▒██░▄▄▄▓██ ░▄█ ▒██▓██    ▓██░
  ▒   ██░▓█ ░██░██▄▄▄▄██▒██▀▀█▄ ▒▓█  ▄░▓█  ██▒██▀▀█▄ ░██▒██    ▒██ 
▒██████▒░▓█▒░██▓▓█   ▓██░██▓ ▒██░▒████░▒▓███▀░██▓ ▒██░██▒██▒   ░██▒
▒ ▒▓▒ ▒ ░▒ ░░▒░▒▒▒   ▓▒█░ ▒▓ ░▒▓░░ ▒░ ░░▒   ▒░ ▒▓ ░▒▓░▓ ░ ▒░   ░  ░
░ ░▒  ░ ░▒ ░▒░ ░ ▒   ▒▒ ░ ░▒ ░ ▒░░ ░  ░ ░   ░  ░▒ ░ ▒░▒ ░  ░      ░
░  ░  ░  ░  ░░ ░ ░   ▒    ░░   ░   ░  ░ ░   ░  ░░   ░ ▒ ░      ░   
      ░  ░  ░  ░     ░  ░  ░       ░  ░     ░   ░     ░        ░   
                                                                   

"
echo "This script works only on arch linux. NOTE: You need to have the Paru AUR helper installed on your system to install the dependencies."
paru -S --noconfirm sharenix-git grim slurp mplayer
mkdir $HOME/.config/sharegrim
cp ./screenshot.sh $HOME/.config/sharegrim/screenshot.sh
chmod +x $HOME/.config/sharegrim/screenshot.sh
echo "Done! The script is located in $HOME/.config/sharegrim/screenshot.sh! Add your config to sharenix, bind the script to a keybind on your compositor config and enjoy :D"
