#!/usr/bin/env fish

if ! test -d ~/.gvm
    git clone https://github.com/nvim-lua/kickstart.nvim.git ~/.config/nvim
	bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
end