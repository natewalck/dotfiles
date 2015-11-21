# History settings
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=$HISTSIZE

export KEYTIMEOUT=1
export EDITOR=/usr/bin/vim
# So we don't get vim bindings for terminal navigation
set -o emacs

# Load settings from another dir to keep this .zshrc clean
export MYZSH=$HOME/code/dotfiles/zsh
for config_file ($MYZSH/**/*.zsh ) source $config_file


setopt appendhistory autocd nomatch
