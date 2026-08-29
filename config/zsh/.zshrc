ZSH_THEME="essembeh"

plugins=(git vi-mode extract)

if [ -f $ZDOTDIR/ohmyzsh/oh-my-zsh.sh ]; then
    source $ZDOTDIR/ohmyzsh/oh-my-zsh.sh
elif [ -f ~/.oh-my-zsh/oh-my-zsh.sh ]; then
    source ~/.oh-my-zsh/oh-my-zsh.sh
fi

VI_MODE_SET_CURSOR=true
KEYTIMEOUT=1

source <(fzf --zsh)

setopt IGNOREEOF

source $ZDOTDIR/herdr.zsh
