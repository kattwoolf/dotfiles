#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTSIZE=5000
HISTFILESIZE=100000

# append to the history file, don't overwrite it
shopt -s histappend

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\[\033[01;35m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
export EDITOR="nvim"
alias e='$EDITOR'

# <3333333333333333333333333333
alias tmax='tmux'

# Disable C-s
stty -ixon
