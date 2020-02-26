# .bashrc is used for interactive non-login shells

# source global definitions
if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi

# deepin bashrc
if [ -f /etc/bash.bashrc ]; then
    source /etc/bash.bashrc
fi

# common used init file
if [ -f ~/.local/init.sh ]; then
    source ~/.local/init.sh
fi
