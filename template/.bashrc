## Modificado por Ansible

# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -lrta'
alias ls='ls -GFh'

export PS1="\[\e[36m\]\H\[\e[m\]@\[\e[31m\]\u\[\e[m\]:\[\e[32m\]\W\[\e[m\] "
hostnamectl

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

