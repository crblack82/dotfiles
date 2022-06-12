#!/bin/zsh

set -eufo pipefail

# Ask for the administrator password upfront
sudo -v

# Update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo ""
echo "🤚  This script will setup .dotfiles for you."

# Update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Rosetta 2
if ! pgrep -x "oahd" > /dev/null 2>&1; then
    sudo /usr/sbin/softwareupdate --install-rosetta --agree-to-license
  if [[ $? -eq 0 ]]; then
    echo "🌹  Rosetta has been successfully installed."
  else
    echo "💀  Rosetta installation failed!"
    exit 1
  fi
fi

# Install Xcode command line tools
if ! xcode-select -p > /dev/null 2>&1; then
  sudo xcode-select --install
  if [[ $? -eq 0 ]]; then
    echo "🖥   Xcode command line tools have been successfully installed."
  else
    echo "💀   Xcode command line tools installation failed!"
    exit 1
  fi
fi

# Install Homebrew
command -v brew >/dev/null 2>&1 || \
  (echo '🍺  Installing Homebrew' && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)")

# Install Oh My Zsh
if [ ! -f ~/.oh-my-zsh/oh-my-zsh.sh ]; then
  (echo '💰  Installing oh-my-zsh' && yes | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)")
fi

# Install chezmoi
command -v chezmoi >/dev/null 2>&1 || \
  (echo '👊  Installing chezmoi' && brew install chezmoi)

if [ -d "$HOME/.local/share/chezmoi/.git" ]; then
  echo "🚸  chezmoi already initialized"
  echo "    Reinitialize with: 'chezmoi init https://github.com/crblack82/dotfiles.git'"
else
  echo "🚀  Initialize dotfiles with:"
  echo "    chezmoi init https://github.com/crblack82/dotfiles.git"
fi

echo ""
echo "Done."
