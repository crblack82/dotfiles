#!/bin/zsh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title JSON to YAML
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName Developer Utils

# Documentation:
# @raycast.author Carson Black
# @raycast.authorURL https://github.com/crblack82

pbpaste | yq eval -P - | pbcopy
