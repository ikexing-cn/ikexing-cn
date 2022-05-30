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
alias sz="source ~/.zshrc"
alias cls="clear"
alias ms="sudo service mongodb start"
alias mst="sudo service mongodb stop"

export N_PREFIX="$HOME/n_"

export host_ip=$(cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
alias proxy="export all_proxy=http://$host_ip:8889 http_proxy=http://$host_ip:8889 https_proxy=http://$host_ip:8889"
alias unproxy='unset all_proxy http_proxy https_proxy'
proxy

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/home/ikx/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
