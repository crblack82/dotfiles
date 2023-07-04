#!/usr/bin/env fish

if ! test -e ~/.config/nvim/init.lua
    git clone https://github.com/nvim-lua/kickstart.nvim.git ~/.config/nvim
end

if ! test -d ~/.tmux/plugins/tpm
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
end