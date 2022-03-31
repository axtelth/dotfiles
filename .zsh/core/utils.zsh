mkcd() {
    NAME=$1; mkdir -p "$NAME"; cd "$NAME"; 
}

extree() { 
    exa -T -L $1 $2 
}

listcolors() {
    for (( i = 30; i < 38; i++ )); do 
        echo -e "\033[0;"$i"m Normal: (0;$i); \033[1;"$i"m Light: (1;$i)"; 
    done 
}
