#!/bin/bash

set -eufo pipefail

echo "🍺 Creating a new Brewfile"

# Dump existing  bundle to file
brew bundle dump --force --global

# Validate and install bundle
HOMEBREW_BUNDLE_MAS_SKIP=TestFlight brew bundle check --file ~/.Brewfile

# Cleanup files
brew bundle cleanup --force