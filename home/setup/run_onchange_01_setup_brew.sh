#!/bin/zsh

set -eufo pipefail

echo "🍺 Installing homebrew bundle"

# Install bundle
HOMEBREW_BUNDLE_MAS_SKIP=TestFlight brew bundle install --file $HOME/.Brewfile

# Cleanup files
brew bundle cleanup --file $HOME/.Brewfile --force
