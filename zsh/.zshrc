export PATH="$HOME/.local/bin:/usr/local/bin:$PATH"

# Remove duplicate entries from PATH (keep path unique)
typeset -U path PATH

# ---- GHCup Haskell Environment ----
[ -f "$HOME/.ghcup/env" ] && . "$HOME/.ghcup/env"

# ---- Oh My Posh ----
eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/custom.omp.json)"
#eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/if_tea.omp.json)"
#eval "$(oh-my-posh init zsh --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/refs/heads/main/themes/tokyo.omp.json)"

# ---- Auto suggestions and syntax highlighting ----
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ---- History Settings ----
HISTFILE=$HOME/.zhistory 
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups 
setopt hist_verify

bindkey '5A' history-search-backward
bindkey '5B' history-search-forward

# ---- Eza (better ls) ----
alias ls="eza --icons=always"
alias ll="eza -la --icons=always"

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"
alias cd="z"


# ---- Dotfiles ----
unalias dotfiles 2>/dev/null
dotfiles() { command git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" "$@"; }
godot() { cd ~/.dotfiles/ }

# ---- Clear Command ----
alias cl='clear'

# ---- Quick Exit ----
alias q='exit'

# ---- Neovim Alias ----
function v() {
  if [ $# -eq 0 ]; then 
    nvim .
  else
    nvim "$@"
  fi
}

# ----- LazyGit -----
alias lg='lazygit'

# ----- Latex ----- 
export TEXINPUTS=/home/simon/Desktop/acl-style-files-master//:

# ----- Copy Clipboard ------ 
alias cc='xclip -selection clipboard'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
