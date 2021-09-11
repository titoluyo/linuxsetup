#!/bin/bash
# echo ==== update & upgrade ===
# sudo apt update && sudo apt -y upgrade
# echo ==== INSTALLING git ====
# sudo apt install git -y
echo ==== CONFIGURING git ====
git config --global user.email "tluyo@hotmail.com"
git config --global user.name "Tito Luyo Murata"

echo ==== CONFIGURING ssh key ====
sudo rm -f -r ~/.ssh
mkdir ~/.ssh

ssh-keygen -t rsa -C "tluyo@hotmail.com" -f ~/.ssh/id_rsa -N ""
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

cat ~/.ssh/id_rsa.pub

: <<'END'
curl -s "https://raw.githubusercontent.com/titoluyo/linuxsetup/main/00_git.sh" | bash - 
END
