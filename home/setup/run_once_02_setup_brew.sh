#!/bin/zsh

set -eufo pipefail

echo "🍺 Installing homebrew bundle"

# Dump existing  bundle to file
brew bundle dump --file ~/.Brewfile --force --global

# Validate and install bundle
HOMEBREW_BUNDLE_MAS_SKIP=TestFlight brew bundle check --file ~/.Brewfile

# Cleanup files
brew bundle cleanup --file ~/.Brewfile --force