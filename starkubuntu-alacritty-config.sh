#!/bin/bash

mkdir ~/.config/alacritty
touch ~/.config/alacritty/alacritty.toml
echo 'import = ["~/.config/alacritty/catppuccin-macchiatto.toml"]' > ~/.config/alacritty/alacritty.toml

echo "[env]" >> ~/.config/alacritty/alacritty.toml
echo 'TERM = "xterm-256color"' >> ~/.config/alacritty/alacritty.toml

echo "[window]" >> ~/.config/alacritty/alacritty.toml
echo "opacity = 0.9" >> ~/.config/alacritty/alacritty.toml
echo "padding = { x = 10, y = 10 }" >> ~/.config/alacritty/alacritty.toml

curl -LO --output-dir ~/.config/alacritty https://github.com/catppuccin/alacritty/raw/main/catppuccin-macchiato.toml
