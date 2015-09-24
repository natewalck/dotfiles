# History settings
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000

export KEYTIMEOUT=1
export EDITOR=/usr/bin/vim

# Load settings from another dir to keep this .zshrc clean
export MYZSH=$HOME/code/dotfiles/zsh
for config_file ($MYZSH/**/*.zsh ) source $config_file


setopt appendhistory autocd nomatch
