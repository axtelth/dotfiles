autoload -U compinit && compinit
zstyle ':completion:*' completer _expand _complete _ignored _match _correct _approximate _prefix
zstyle ':completion:*' max-errors 1
zstyle :compinstall filename '$HOME/zc'
HISTFILE=~/.histfile

bindkey -e
bindkey "\e[3~" delete-char


HISTORY_SUBSTRING_SEARCH_PREFIXED=1
HISTSIZE=1000
SAVEHIST=1000

setopt autocd extendedglob
