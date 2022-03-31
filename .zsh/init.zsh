ZSH="${HOME}/.zsh"
CORE="${ZSH}/core"
PLUGINS="${ZSH}/plugins"

loadcore() {
    source $CORE/opts.zsh
    source $CORE/aliases.zsh
    source $CORE/prompt.zsh
    source $CORE/utils.zsh
    source $CORE/keybindings.zsh
}

loadplugins() {
    source $PLUGINS/fzf-tab/*.plugin.zsh
    source $PLUGINS/fzf-zsh-plugin/*.plugin.zsh
    source $PLUGINS/zsh-syntax-highlighting/*.plugin.zsh
    source $PLUGINS/zsh-completions/*.plugin.zsh

    # Zsh completions configuration
    fpath=($PLUGINS/zsh-completions/src/ $fpath)

    # Fzf
    [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
    export FZF_DEFAULT_COMMAND='fd -tf'
    export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border rounded'
}
