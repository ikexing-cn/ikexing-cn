export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
    git
    z
    sudo
    zsh-autosuggestions
    fast-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias t="bun run test"
alias d="bun run dev"
alias b="bun run build"
alias p="bun run preview"
alias bp="b && p"
alias lint="npx eslint ."
alias lintf="lint --fix"
alias vz="vim ~/.zshrc"
alias cz="code ~/.zshrc"
alias sz="source ~/.zshrc"
alias cls="clear"

# Docker Alias
alias dk="docker"
alias dkc="docker-compose"

# Git Alias
alias gi="g init"
alias ga="g add ."
alias gs="g status"
alias gst="g stash"
alias gm="g commit -m"
alias gco="g checkout"
alias gb="g branch"
alias gba="g branch -a"
alias gpl="g pull"
alias gps="g push"
alias gpr="g pull --rebase"
alias go="git remote set-url origin"

alias tz="taze"

# export host_ip=127.0.0.1
export host_ip=$(cat /etc/resolv.conf | grep "nameserver" | cut -f 2 -d " ")
alias proxy="export all_proxy=sock5://$host_ip:8889 http_proxy=http://$host_ip:8889 https_proxy=http://$host_ip:8889 ALL_PROXY=sock5://$host_ip:8889"
alias unproxy='unset all_proxy http_proxy https_proxy ALL_POROXY'
proxy
