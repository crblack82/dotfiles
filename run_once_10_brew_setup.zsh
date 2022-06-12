#!/bin/zsh

set -eufo pipefail

# Install Homebrew apps
echo '🍺  Installing Homebrew apps' && /bin/zsh -c "brew bundle --file=brew-bundle.txt"
brew cleanup

# Configure Java
sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk