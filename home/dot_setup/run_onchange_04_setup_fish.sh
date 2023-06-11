#!/bin/zsh

# Setup fisher plugins
fisher install pure-fish/pure
fisher install edc/bass
fisher install jethrokuan/z

# Setup paths
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/opt/curl/bin $fish_user_paths
fish_add_path /opt/homebrew/opt/coreutils/libexec/gnubin $fish_user_paths
fish_add_path /Users/$USER/Library/Application Support/JetBrains/Toolbox/scripts

# Setup env variables
set -Ux EDITOR vim
set -Ux JAVA_HOME /Library/Java/JavaVirtualMachines/temurin-20.jdk/Contents/Home
set -Ux HOMEBREW_NO_ENV_HINTS true