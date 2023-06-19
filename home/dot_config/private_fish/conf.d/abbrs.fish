set -q MY_ABBRS_INITIALIZED; and return

abbr -a -- nv nvim


abbr -a -- cat "ccat"
abbr -a -- cleanup "find . -type f -name '*.DS_Store' -ls -delete"
abbr -a -- dl "cd ~/Downloads"
abbr -a -- dt "cd ~/Desktop"
abbr -a -- dot "cd ~/Github/dotfiles"
abbr -a -- ip "dig +short myip.opendns.com @resolver1.opendns.com"
abbr -a -- lss "ls -Gal"
abbr -a -- lp "ls -p"
abbr -a -- localip "ipconfig getifaddr en0"
abbr -a -- map "xargs -n1"
abbr -a -- vim "nvim"
abbr -a -- vi "nvim"

set -g MY_ABBRS_INITIALIZED true