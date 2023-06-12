#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Show Desktop Icons
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName Privacy Tools

# Documentation:
# @raycast.author Carson Black
# @raycast.authorURL https://github.com/crblack82

defaults write com.apple.finder CreateDesktop -bool true

#killall "Finder" 2>/dev/null