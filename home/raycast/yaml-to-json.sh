#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title YAML to JSON
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName Developer Utils

# Documentation:
# @raycast.author Carson Black
# @raycast.authorURL https://github.com/crblack82

pbpaste | yq eval -o json - | pbcopy
