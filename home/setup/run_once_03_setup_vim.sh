#!/bin/bash

set -eufo pipefail

mkdir -p ~/.vim/pack/myplugins/start
cd ~/.vim/pack/myplugins/start

# Installing Sensible plugin
if [ ! -d "~/.vim/pack/myplugins/start/sensible" ]; then
  echo "Directory does not exist!"
fi


# Installing Syntastic plugin
if [ ! -d "~/.vim/pack/myplugins/start/syntastic" ]; then
	git clone https://github.com/vim-syntastic/syntastic.git
fi