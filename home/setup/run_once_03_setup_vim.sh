#!/bin/bash

set -eufo pipefail

mkdir -p ~/.vim/pack/myplugins/start
cd ~/.vim/pack/myplugins/start

# Installing Sensible plugin
git clone https://tpope.io/vim/sensible.git

# Installing Syntastic plugin
git clone https://github.com/vim-syntastic/syntastic.git