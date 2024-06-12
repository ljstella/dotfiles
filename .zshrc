export PATH="$PATH:/Users/lstella/.local/bin"


fpath+=~/.zfunc
autoload -Uz compinit && compinit

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
source ~/github/fzf-tab/fzf-tab.plugin.zsh
# autocompletion using arrow keys (based on history)
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

eval "$(starship init zsh)"
