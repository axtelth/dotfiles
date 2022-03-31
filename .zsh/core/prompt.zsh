autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' actionformats '%a'
zstyle ':vcs_info:*' formats $'\ue0a0 ''%b'

function git_info() {
    if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
        print $'\ue0a0' 
    fi
}

function host_info() {
    if [[ $HOSTNAME = toolbox ]]; then
        print "%F{m}● %f"
    fi
}

precmd() { 
    vcs_info
    comps=("┌ %*" $(host_info) "%~ \n└ λ " )
    rcomps=("%{$(echotc UP 1)%}"${vcs_info_msg_0_} "%(?,,%F{r}%? :(%f)%{$(echotc DO 1)%}")
    RPROMPT=$(print $rcomps)
    PROMPT=$(print $comps)
}
