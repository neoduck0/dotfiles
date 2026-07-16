# omz
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
export FZF_DEFAULT_OPTS="--color=base16"
export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_CTRL_T_COMMAND="fd --type f"
export FZF_ALT_C_COMMAND="fd --type d"

setopt IGNOREEOF
