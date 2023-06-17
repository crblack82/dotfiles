if status is-interactive
    # Commands to run in interactive sessions can go here
end

# iterm2 integration
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# fzf integration
fzf_configure_bindings --directory=\cf --git_log=\cL --git_status=\cS --history=\ch --processes=\cp --variables=\cv

# nvm integration
function nvm
   bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent

# pyenv integration
pyenv init - | source