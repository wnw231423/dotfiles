#
# ~/.bashrc
#
### My own config here. ###
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export Default_IM_Module=fcitx

#To show git branch in bash.
source ~/.git-prompt.sh
PS1='\[\e[36m\]\u\[\e[m\]@\h \W\[\e[32m\]$(__git_ps1 "(%s)")\[\e[m\]\$ '

###########################

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cw='python ~/repo/wallpaper_demo/change_wallpaper.py'
alias dot='cd ~/.dotfiles'

# open clash system proxy
function proxy_on() {
    export http_proxy=http://127.0.0.1:7897
    export https_proxy=http://127.0.0.1:7897
    export no_proxy=127.0.0.1,localhost
    echo -e "\033[32m[√] system proxy have opened\033[0m"
}

# close clash system proxy
function proxy_off() {
    unset http_proxy
    unset https_proxy
    unset no_proxy
    echo -e "\033[31m[×] system proxy have closed\033[0m"
}

# Created by `pipx` on 2025-02-06 08:02:16
export PATH="$PATH:/home/wnw231423/.local/bin"

export PATH="$PATH:$HOME/.dotnet/tools"
