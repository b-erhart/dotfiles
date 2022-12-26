# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='[\u@\h \W]\$ '
export PS1="\[\e[37m\]\W\[\e[m\] \[\e[32m\]\\$\[\e[m\] "
