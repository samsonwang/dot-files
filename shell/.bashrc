# .bashrc is used for interactive non-login shells

# source global definitions
if [ -f /etc/bashrc ]; then
  source /etc/bashrc
fi

# deepin bashrc
if [ -f /etc/bash.bashrc ]; then
    source /etc/bash.bashrc
fi

# shell prompt shows full path
#export PS1="[\033[0;32m\u\033[0m@\033[0;35m\h\033[0m \033[1;33m\W\033[0m]\$ "

# perfer english as default
export LANG="en_US.utf-8"

# change CDPATH for cd command
export CDPATH=.:~:/etc:/var

# correct mistyped directory names on cd
shopt -s cdspell

# shared library path
export LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH

# cd alias
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."

# make dir and cd into it
function mkdircd() { mkdir -p "$@" && eval cd "\"\$$#\""; }

# record timestamp in history
export HISTTIMEFORMAT='%F %T '

# better list files
alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ll -a'

# interactive when overwrite
alias cp='cp -i'

# when delte a file, move it to trash
alias rm='rm -i'
alias rm=trash
alias lrm='la ~/.trash'
alias unrm=undelfile
undelfile()
{
  mv -i ~/.trash/$@ ./
}
trash()
{
  mv $@ ~/.trash/
}

# git related alias
alias g='git status --short -b'
alias ga='git add'
alias gb='git branch'
alias gc='git commit -m'
alias gd='git diff'
alias gdc='git diff --cached'
alias gco='git checkout'
alias gps='git push'
alias gpl='git pull'
alias gf='git fetch'
alias gl='git log --graph'

alias grep='grep --color=auto'

alias g++='g++ -Wall -std=c++11'

# user local bash config
if [ -f ~/.bash_local ]; then
    source ~/.bash_local
fi
