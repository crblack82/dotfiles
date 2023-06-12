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
alias -s cat "ccat"
alias -s dl "cd ~/Downloads"
alias -s dt "cd ~/Desktop"
alias -s dot "cd ~/Github/dotfiles"
alias -s git "hub"
alias -s ip "dig +short myip.opendns.com @resolver1.opendns.com"
alias -s localip "ipconfig getifaddr en0"