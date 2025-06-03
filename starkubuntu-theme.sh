#!/bin/bash

THEME_NAME="Nordic"
THEME_REPO="https://github.com/EliverLara/Nordic"
THEMES_DIR="$HOME/.themes"

echo "Installation du theme $THEME_NAME"

mkdir -p "$THEMES_DIR"

if [ -d "$THEMES_DIR/$THEME_NAME" ]; then
	echo "Le theme existe déjà. Mise à jour..."
	cd "$THEMES_DIR/$THEME_NAME" && git pull
else
	git clone "$THEME_REPO" "$THEMES_DIR/$THEME_NAME"
fi

echo "Application du theme..."

gsettings set org.gnome.desktop.interface gtk-theme "$THEME_NAME"
gsettings set org.gnome.desktop.wm.preferences theme "$THEME_NAME"

if ! command -v gnome-tweaks &> /dev/null; then
	echo "Vous pouvez installer GNOME Tweaks pour plus d'options visuelles :"
	echo " sudo apt install gnome-tweaks"
fi

echo "Theme Nordic installé et activé."
