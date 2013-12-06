# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000

path+=('/usr/local/packer')
export PATH

setopt appendhistory autocd beep nomatch

bindkey -v

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/nate/.zshrc'

# Load config files to keep .zshrc clean
export MYZSH=$HOME/src/dotfiles/zsh
for config_file ($MYZSH/**/*.zsh ) source $config_file

autoload -Uz compinit
compinit
# End of lines added by compinstall
