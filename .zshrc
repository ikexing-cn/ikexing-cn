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

alias t="nr test"
alias d="nr dev"
alias lint="npx eslint ."
alias lintf="lint --fix"
alias vz="vim ~/.zshrc"
alias cz="code ~/.zshrc"
alias sz="source ~/.zshrc"
alias cls="clear"

# Docker Alias
alias dk="docker"
alias dkps="docker ps"
alias dki="docker images"
alias dkpsa="docker ps -a"
alias dks="docker start"
alias dkst="docker stop"
alias dkr="docker rm"
alias dkl="docker logs"
alias dkri="docker rmi"
alias dkc="docker-compose"

# Git Alias
alias gi="g init"
alias ga="g add ."
alias gs="g status"
alias gm="g commit -m"
alias gco="g checkout"
alias gb="g branch"
alias gba="g branch -a"
alias gpl="g pull"
alias gps="g push"
alias gpr="g pull --rebase"
alias go="git remote set-url origin"

#export host_ip="10.94.135.2"
export host_ip=$(cat /etc/resolv.conf | grep "nameserver" | cut -f 2 -d " ")
alias proxy="export all_proxy=sock5://$host_ip:8889 http_proxy=http://$host_ip:8889 https_proxy=http://$host_ip:8889 ALL_PROXY=sock5://$host_ip:8889"
alias unproxy='unset all_proxy http_proxy https_proxy ALL_POROXY'
proxy
