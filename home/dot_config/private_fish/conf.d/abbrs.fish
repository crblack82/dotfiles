set -q MY_ABBRS_INITIALIZED; and return

abbr -a -- c clear
abbr -a -- cat "ccat"
abbr -a -- cleanup "find . -type f -name '*.DS_Store' -ls -delete"
abbr -a -- dl "cd ~/Downloads"
abbr -a -- dt "cd ~/Desktop"
abbr -a -- dot "cd ~/Github/dotfiles"
abbr -a -- h history

# editor
abbr -a -- nv nvim
abbr -a -- vim nvim
abbr -a -- vi nvim

# ls
abbr -a -- l 'ls -UF'
abbr -a -- la 'ls -la'
abbr -a -- ldot 'ls -ld .*'
abbr -a -- ll 'ls -lGFh'
abbr -a -- lsa 'ls -aGF'

# ip
abbr -a -- ip "dig +short myip.opendns.com @resolver1.opendns.com"
abbr -a -- localip 'ipconfig getifaddr en0'

set -g MY_ABBRS_INITIALIZED true
