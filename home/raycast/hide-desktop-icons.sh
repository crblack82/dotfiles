#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Hide Desktop Icons
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName Privacy Tools

# Documentation:
# @raycast.author Carson Black
# @raycast.authorURL https://github.com/crblack82

defaults write com.apple.finder CreateDesktop -bool false

killall "Finder" 2>/dev/null