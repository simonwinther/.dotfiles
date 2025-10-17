export PATH="$HOME/.ghcup/bin:$PATH"
eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/if_tea.omp.json)"

alias lvim="~/.local/bin/lvim"
alias gcc='gcc-13'


# >>> conda initialize >>>
__conda_setup="$('/Users/simonwinther/miniconda3/bin/conda' shell.zsh hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/simonwinther/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/simonwinther/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/simonwinther/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload -Uz compinit
compinit


# Auto suggestions and syntax highlighting
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

HISTFILE=$HOME/.zhistory 
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups 
setopt hist_verify

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
# End of auto suggestions and syntax highlighting


# ---- Eza (better ls) ----
alias ls="eza --icons=always"
alias ll="eza -la --icons=always"
# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"
alias cd="z"

[ -f "/Users/simonwinther/.ghcup/env" ] && . "/Users/simonwinther/.ghcup/env" # ghcup-env