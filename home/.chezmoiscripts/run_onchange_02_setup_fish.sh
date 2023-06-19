#!/usr/bin/env fish

# ENV
set -Ux EDITOR nvim
set -Ux JAVA_HOME /Library/Java/JavaVirtualMachines/temurin-20.jdk/Contents/Home
set -Ux HOMEBREW_NO_ENV_HINTS true
set -Ux JSII_SILENCE_WARNING_UNTESTED_NODE_VERSION true

# PATH
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/opt/curl/bin $fish_user_paths
fish_add_path /opt/homebrew/opt/coreutils/libexec/gnubin $fish_user_paths
fish_add_path /Users/$USER/Library/Application Support/JetBrains/Toolbox/scripts

# ALIAS
abbr cat "ccat"
alias -s cleanup "find . -type f -name '*.DS_Store' -ls -delete"
alias -s dl "cd ~/Downloads"
alias -s dt "cd ~/Desktop"
alias -s dot "cd ~/Github/dotfiles"
alias -s ip "dig +short myip.opendns.com @resolver1.opendns.com"
alias -s lss "ls -Gal"
alias -s lp "ls -p"
alias -s localip "ipconfig getifaddr en0"
alias -s map "xargs -n1"
alias -s vim "nvim"
alias -s vi "nvim"