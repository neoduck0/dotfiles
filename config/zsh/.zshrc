ZSH_THEME="sorin"

plugins=(git tmux vi-mode)

if [ -f $ZDOTDIR/ohmyzsh/oh-my-zsh.sh ]; then
    source $ZDOTDIR/ohmyzsh/oh-my-zsh.sh
elif [ -f ~/.oh-my-zsh/oh-my-zsh.sh ]; then
    source ~/.oh-my-zsh/oh-my-zsh.sh
fi

VI_MODE_SET_CURSOR=true
KEYTIMEOUT=1

source <(fzf --zsh)

setopt IGNOREEOF
