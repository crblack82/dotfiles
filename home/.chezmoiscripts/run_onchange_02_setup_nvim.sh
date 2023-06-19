#!/usr/bin/env fish

if ! test -e ~/.config/nvim/init.lua
    git clone https://github.com/nvim-lua/kickstart.nvim.git ~/.config/nvim
end