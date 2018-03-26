
# shell prompt shows full path
#export PS1="\u @ \W$ "
#\[\033]0;$TITLEPREFIX:$PWD\007\]\n\[\033[32m\]\u@\h \[\033[35m\]$MSYSTEM \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$

# perfer english as default
export LANG="en_US.utf-8"

# better list files
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

