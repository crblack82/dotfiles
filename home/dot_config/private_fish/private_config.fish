if status is-interactive
    # Commands to run in interactive sessions can go here
end

# nvm integration
function nvm
   bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent

# iterm2 integration
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# fzf integration
fzf_configure_bindings --directory=\cf --git_log=\cl --git_status=\cs --history=\cr --processes=\cp --variables=\cv

# Aliases
abbr -a cat "ccat"
alias dl "cd ~/Downloads"
alias dt "cd ~/Desktop"
alias dot "cd ~/Github/dotfiles"
alias git "hub"
abbr -a ip "dig +short myip.opendns.com @resolver1.opendns.com"
abbr -a localip "ipconfig getifaddr en0"