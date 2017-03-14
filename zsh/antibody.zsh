# Path to antigen

# auto pull in antibody
apphome=${0:a:h}

[[ ! -d $apphome/bundle ]] && mkdir $apphome/bundle
[[ ! -d $apphome/bundle/antibody ]] && git clone https://github.com/yanyingwang/antibody.git $apphome/bundle/antibody
#[[ ! -d $apphome/bundle/oh-my-zsh ]] && git clone https://github.com/robbyrussell/oh-my-zsh.git $apphome/bundle/oh-my-zsh 

source $apphome/bundle/antibody/antibody.zsh

#antibody bundle < "$MYZSH/antibody-bundles.txt"


antibody github zsh-users/zsh-completions
antibody github zsh-users/zsh-history-substring-search
antibody github bhilburn/powerlevel9k

POWERLEVEL9K_SHOW_CHANGESET=true
source  "$apphome/bundle/github-bhilburn-powerlevel9k/powerlevel9k.zsh-theme"
