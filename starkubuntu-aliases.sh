#!/bin/bash

echo "# ----- navigation -----" >> ~/.bashrc
echo "alias cdev='cd ~/dev'" >> ~/.bashrc
echo "alias ..='cd ..'" >> ~/.bashrc
echo "alias ...='cd ../..'" >> ~/.bashrc
echo "alias size='du -sh * | sort -hr'" >> ~/.bashrc
echo "alias ffind='find . -type f -iname'" >> ~/.bashrc

echo "# ----- fichiers specifiques -----" >> ~/.bashrc
echo "alias md='glow'" >> ~/.bashrc

echo "# ----- productivite -----" >> ~/.bashrc
echo "alias todo='glow ~/todo.md'" >> ~/.bashrc

echo "# ----- edition rapide -----" >> ~/.bashrc
echo "alias bashrc='nvim ~/.bashrc'" >> ~/.bashrc
echo "alias reload='source ~/.bashrc'" >> ~/.bashrc

