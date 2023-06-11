#!/bin/zsh

set -eufo pipefail

# Ask for the administrator password upfront
sudo -v

# Update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "🖥   Setting up macos."

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