#!/bin/bash

set -eufo pipefail


if which brew >/dev/null 2>&1; then
	brew update --quiet
else
	echo "🍺 Installing Homebrew."
	/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"	
fi

if ! which chezmoi >/dev/null 2>&1; then
	echo "👊 Installing chezmoi."
	brew install chezmoi	
fi

if [ -d "$HOME/.local/share/chezmoi/.git" ]; then
  chezmoi update --apply
else
  echo "🚀 Initializing dotfiles."
  chezmoi init --apply https://github.com/crblack82/dotfiles.git
fi