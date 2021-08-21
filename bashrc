#!/bin/bash
# vim: set noexpandtab ts=4 sw=4 ai:

#aliases
alias ls='\ls --color=auto'
alias ll='ls -lah'
alias l='ll'
alias vi='vim'
alias rerc='. ~/.bashrc'
alias virc='vim ~/.bashrc'
alias clc='clear'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

PS1='[\[\e[32m\]\u\[\e[0m\]@\[\e[1;32m\]\h\[\e[0m\]:\[\e[36m\]`pwd`/\[\e[0m\]]\n    \[\e[1;31m\]\$\[\e[0m\] '
