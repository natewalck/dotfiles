# History settings
export HISTFILE=~/.histfile
export HISTSIZE=100000
export SAVEHIST=$HISTSIZE
setopt INC_APPEND_HISTORY
alias history='history 1'

export KEYTIMEOUT=1
export EDITOR=/usr/bin/vim
# So we don't get vim bindings for terminal navigation
set -o emacs


# Load settings from another dir to keep this .zshrc clean
export MYZSH=$HOME/code/dotfiles/zsh
for config_file ($MYZSH/**/*.zsh ) source $config_file

# Make the delete key (or Fn + Delete on the Mac) work instead of outputting a ~
bindkey '^?' backward-delete-char
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char
bindkey "\e[3~" delete-char

# Bind substring search to up and down arrows
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

autoload -U compinit && compinit

# Set key for accepting auto suggest
bindkey '^ ' autosuggest-accept
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=159"
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_DISABLE_RPROMPT=true

setopt autocd nomatch

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source <(antibody init)
