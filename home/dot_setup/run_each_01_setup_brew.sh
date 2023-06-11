#!/bin/zsh

set -eufo pipefail

echo "🍺 Installing homebrew bundle"

# Validate and install bundle
HOMEBREW_BUNDLE_MAS_SKIP=TestFlight brew bundle check --file ~/.Brewfile

# Cleanup files
brew bundle cleanup --file ~/.Brewfile --force