export PATH="$PATH:/Users/loustella/.local/bin"
. "$HOME/.cargo/env"
FPATH="$(brew --prefix)/share/zsh/site-functions:/Users/loustella/.zfunc:${FPATH}"
source ~/projects/dotfiles/lscolors.sh
export FZF_DEFAULT_OPTS='--color=bg+:#D9D9D9,bg:#E1E1E1,border:#C8C8C8,spinner:#719899,hl:#719872,fg:#616161,header:#719872,info:#727100,pointer:#E12672,marker:#E17899,fg+:#616161,preview-bg:#D9D9D9,prompt:#0099BD,hl+:#719899'

autoload -Uz compinit && compinit
source /Users/loustella/projects/fzf-tab/fzf-tab.plugin.zsh
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

function set_win_title(){
  echo -ne "\033|0; $(basename "$PWD") \007"
}

source <(kubectl completion zsh)
source <(minikube completion zsh)
source <(helm completion zsh)

precmd_functions+=(set_win_title)

alias ls="ls --color=auto"
eval "$(starship init zsh)"


# bun completions
[ -s "/Users/loustella/.bun/_bun" ] && source "/Users/loustella/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
