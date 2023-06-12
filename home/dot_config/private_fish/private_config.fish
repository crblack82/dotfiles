if status is-interactive
    # Commands to run in interactive sessions can go here
end

function nvm
   bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

fzf_configure_bindings --directory=\cf --git_log=\cl --git_status=\cs --history=\cr --processes=\cp --variables=\cv