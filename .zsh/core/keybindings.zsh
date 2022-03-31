function zle-line-init() { echoti smkx }
function zle-line-finish() { echoti rmkx }
zle -N zle-line-init
zle -N zle-line-finish

bindkey -e

# History search
if [[ -n "${terminfo[kcuu1]}" ]]; then
  autoload -U up-line-or-beginning-search
  zle -N up-line-or-beginning-search
  bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
fi
if [[ -n "${terminfo[kcud1]}" ]]; then
  autoload -U down-line-or-beginning-search
  zle -N down-line-or-beginning-search
  bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
fi

# [Delete] - delete char forward
bindkey '^[[3~' delete-char
bindkey '^[[3;5~' kill-word

# [Ctrl-RightArrow] - move forward one word
bindkey '^[[1;5C' forward-word
# [Ctrl-LeftArrow] - move backward one word
bindkey '^[[1;5D' backward-word

bindkey '\ew' kill-region
bindkey -s '\el' 'ls\n'
bindkey -s '\e1' 'clear\n'
bindkey '^r' history-incremental-search-backward
bindkey ' ' magic-space

autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line
