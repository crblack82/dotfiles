#!/usr/bin/env fish

set autolaunch_dir "/Users/$USER/Library/Application\ Support/iTerm2/Scripts/AutoLaunch/"
mkdir -p $autolaunch_dir

cp ../dot_iterm2/AutoSwitchTheme.py $autolaunch_dir 