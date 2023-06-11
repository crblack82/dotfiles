#!/bin/zsh 

set -eufo pipefail

echo "Creating a new Brewfile"
brew bundle dump --force --global
HOMEBREW_BUNDLE_MAS_SKIP=TestFlight brew bundle check --file ~/.Brewfile
brew bundle cleanup --force