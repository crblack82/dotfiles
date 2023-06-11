#!/bin/zsh

set -eufo pipefail

# Creating backup, swaps and undo directory
mkdir -p $HOME/backups
mkdir -p $HOME/swaps
mkdir -p $HOME/undo

# Create plugin directory
mkdir -p "$HOME/.vim/pack/myplugins/start"
cd "$HOME/.vim/pack/myplugins/start"

# Installing Sensible plugin
if [ ! -d "$HOME/.vim/pack/myplugins/start/sensible" ]; then
	git clone https://tpope.io/vim/sensible.git
fi

# Installing Syntastic plugin
if [ ! -d "$HOME/.vim/pack/myplugins/start/syntastic" ]; then
	git clone https://github.com/vim-syntastic/syntastic.git
fi