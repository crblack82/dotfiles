#!/bin/bash

set -eufo pipefail


if command -v brew &>/dev/null; then
	brew update --quiet
else
	echo "🍺 Installing Homebrew."
	/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"	
fi

if ! command -v chezmoi &> /dev/null; then
	echo "👊 Installing chezmoi."
	brew install chezmoi	
fi

if [ -d "$HOME/.local/share/chezmoi/.git" ]; then
  chezmoi update --apply
else
  echo "🚀 Initializing dotfiles."
  chezmoi init --apply https://github.com/crblack82/dotfiles.git
fi