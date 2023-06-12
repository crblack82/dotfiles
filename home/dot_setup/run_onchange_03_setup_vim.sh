#!/bin/zsh

# Installing Sensible plugin
if [ ! -d "$HOME/.vim/pack/myplugins/start/sensible" ]; then
	git clone https://tpope.io/vim/sensible.git
fi

# Installing Syntastic plugin
if [ ! -d "$HOME/.vim/pack/myplugins/start/syntastic" ]; then
	git clone https://github.com/vim-syntastic/syntastic.git
fi

# Installing fzf plugin
if [ ! -d "$HOME/.vim/pack/myplugins/start/fzf" ]; then
	git clone https://github.com/junegunn/fzf.git
fi

# Installing fzf.vim plugin
if [ ! -d "$HOME/.vim/pack/myplugins/start/fzf.vim" ]; then
	git clone https://github.com/junegunn/fzf.vim.git
fi