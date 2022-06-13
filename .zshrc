export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
    git
    z
    sudo
    zsh-syntax-highlighting
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias d="nr dev"
alias vz="vim ~/.zshrc"
alias cz="code ~/.zshrc"
alias sz="source ~/.zshrc"
alias cls="clear"
alias ms="sudo service mongodb start"
alias mst="sudo service mongodb stop"

# Git Alias
alias ga="git add ."
alias gs="git status"
alias gm="git commit -m"
alias gco="git checkout"
alias gb="git branch"
alias gba="git branch -a"
alias gpl="git pull"
alias gps="git push"
alias gpr="git pull --rebase"

export host_ip=$(cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
alias proxy="export all_proxy=http://$host_ip:8889 http_proxy=http://$host_ip:8889 https_proxy=http://$host_ip:8889"
alias unproxy='unset all_proxy http_proxy https_proxy'
proxy