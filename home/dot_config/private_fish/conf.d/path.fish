set -q MY_PATHS_INITIALIZED; and return

fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/opt/curl/bin $fish_user_paths
fish_add_path /opt/homebrew/opt/coreutils/libexec/gnubin $fish_user_paths
fish_add_path /Users/$USER/Library/Application Support/JetBrains/Toolbox/scripts

set -g MY_PATHS_INITIALIZED true