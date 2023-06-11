#!/bin/bash

set -eufo pipefail

mkdir -p ~/.vim/pack/myplugins/start
cd ~/.vim/pack/myplugins/start

# Installing Sensible plugin
if [ ! -d "~/.vim/pack/myplugins/start/sensible" ]; then
	git clone https://tpope.io/vim/sensible.git
fi

# Installing Syntastic plugin
if [ ! -d "~/.vim/pack/myplugins/start/syntastic" ]; then
	git clone https://github.com/vim-syntastic/syntastic.git
fi