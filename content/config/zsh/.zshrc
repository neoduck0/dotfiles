# omz
ZSH_THEME="my_theme"
plugins=(git)
source ~/.oh-my-zsh/oh-my-zsh.sh

# aliases
alias modify-repos="sudo reflector --save /etc/pacman.d/mirrorlist --protocol https --latest 5 --sort age"
alias s-cloud="rclone -v sync ~/Cloud mega-crypt:"
alias s-local="rclone -v sync mega-crypt: ~/Cloud"

# vi mode
bindkey -v

export KEYTIMEOUT=1
setopt PROMPT_SUBST

function vi_mode_status() {
  if [[ ${KEYMAP} == vicmd ]]; then
    echo "%F{cyan}[NORMAL]%f"
  else
    echo "%F{green}[INSERT]%f"
  fi
}

function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]]; then
    echo -ne '\e[1 q'
  else
    echo -ne '\e[5 q'
  fi
  zle reset-prompt
}
zle -N zle-keymap-select

function zle-line-init {
  echo -ne '\e[5 q'
  zle reset-prompt
}
zle -N zle-line-init

RPS1="$RPS1 "'$(vi_mode_status)'

# opencode
export PATH=$HOME/.opencode/bin:$PATH

# fzf
source <(fzf --zsh)
export FZF_DEFAULT_OPTS="--color=base16"

# tmux
if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ] && [ -z "${TMUX}" ]; then
    exec tmux new-session >/dev/null 2>&1
fi
