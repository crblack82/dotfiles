#!/bin/bash

set -eufo pipefail

mkdir -p $HOME/.vim/pack/myplugins/start
cd $HOME/.vim/pack/myplugins/start

echo $HOME/.vim/pack/myplugins/start/syntastic

# Installing Sensible plugin
if [ ! -d "$HOME/.vim/pack/myplugins/start/sensible" ]; then
	git clone https://tpope.io/vim/sensible.git
fi

# Installing Syntastic plugin
if [ ! -d "$HOME/.vim/pack/myplugins/start/syntastic" ]; then
	git clone https://github.com/vim-syntastic/syntastic.git
fi