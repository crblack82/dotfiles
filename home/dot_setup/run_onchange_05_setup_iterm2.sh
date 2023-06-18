#!/bin/zsh

autolaunch_dir = "/Users/${whoami}/Library/Application\ Support/iTerm2/Scripts/AutoLaunch/"
mkdir -p $autolaunch_dir

cp ../dot_iterm2/AutoSwitchTheme.py $autolaunch_dir 