# github.com/crblack82/dotfiles

dotfiles, managed with [`chezmoi`](https://github.com/crblack82/dotfiles).

## Install

This'll install Homebrew and chezmoi. After installation `chezmoi` will be initialized.

```shell
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/crblack82/dotfiles/master/executable_install.zsh)"
```

## Manual install

Prerequisite: Homebrew & chezmoi

```shell
# Setup
chezmoi init https://github.com/crblack82/dotfiles.git
```