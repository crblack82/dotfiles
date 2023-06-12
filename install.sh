#!/bin/bash

clear
read -p "🤚 This script will setup homebrew and chezmoi. Press [Enter] to continue."


if which brew >/dev/null 2>&1; then
	echo "🍺 Homebrew is already installed"
	brew update --quiet
else
	echo "🍺 Installing Homebrew."
	/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"	
fi

if which chezmoi >/dev/null 2>&1; then
	echo "👊 Chezmoi is already installed."
else
	echo "👊 Installing chezmoi."
	brew install chezmoi	
fi

if [ -d "$HOME/.local/share/chezmoi/.git" ]; then
  echo "🚸 Chezmoi already initialized. Reinitialize with: 'chezmoi init https://github.com/crblack82/dotfiles.git'"
fi

chezmoi init --apply https://github.com/crblack82/dotfiles.git