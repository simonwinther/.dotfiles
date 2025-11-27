
# ──────────────────────────── FZF ────────────────────────────
expand_fzf_space() {
  if [[ $LBUFFER == *";f" ]]; then
    LBUFFER="${LBUFFER%";f"} | fzf"
  fi
  zle self-insert
}
zle -N expand_fzf_space
bindkey " " expand_fzf_space

expand_fzf_enter() {
  if [[ $LBUFFER == *";f" ]]; then
    LBUFFER="${LBUFFER%";f"} | fzf"
  fi
  zle accept-line
}
zle -N expand_fzf_enter
bindkey "^M" expand_fzf_enter

# ──────────────────────────── NVIM ────────────────────────────  
function v() {
  if [ $# -eq 0 ]; then 
    nvim .
  else
    nvim "$@"
  fi
}

# ──────────────────────────── FZF UTILS ────────────────────────────
# Fuzzy CD from current directory
fcd() {
    local dir
    dir=$(fd --type d --hidden --follow --exclude .git \
        | fzf --height=60% --layout=reverse --border \
              --prompt="   cd> " \
              --preview 'eza --color=always --icons --group-directories-first -1 {}' \
              --preview-window="right,50%")
    [[ -n "$dir" ]] && cd "$dir"
}

# Global fuzzy CD from $HOME
gcd() {
    local dir
    dir=$(fd --base-directory "$HOME" --type d --hidden --follow --exclude .git \
        | fzf --height=60% --layout=reverse --border \
              --prompt="   gcd> " \
              --preview "eza --color=always --icons --group-directories-first -1 $HOME/{}" \
              --preview-window="right,50%")
    [[ -n "$dir" ]] && cd "$HOME/$dir"
}

# Alt + f and Alt + g to trigger fuzzy CD
bindkey -s '^[f' 'fcd\n'
bindkey -s '^[g' 'gcd\n'


