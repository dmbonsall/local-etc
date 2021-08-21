#!/bin/bash
# vim: set noexpandtab ts=4 sw=4 ai:
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]
then
    . /usr/local/git/contrib/completion/git-completion.bash
fi

if [ -f /usr/local/git/contrib/completion/git-prompt.sh ]
then
    . /usr/local/git/contrib/completion/git-prompt.sh
    export GIT_PS1_SHOWDIRTYSTATE=1
    export USE_GIT_PROMPT=1
    export GIT_PS1_SHOWSTASHSTATE=1
else
    export USE_GIT_PROMPT=0
fi

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
alias tree='\tree -C'

if [ $USE_GIT_PROMPT == 1 ]
then
    PS1='[\[\e[32m\]\u\[\e[0m\]@\[\e[1;32m\]\h\[\e[0m\]:\[\e[36m\]`pwd`/\[\e[0m\]]\n\[\e[33m\]($(echo $CONDA_DEFAULT_ENV)) \[\e[35m\]$(__git_ps1 "(%s)") \[\e[1;31m\]\$\[\e[0m\] '
else
    PS1='[\[\e[32m\]\u\[\e[0m\]@\[\e[1;32m\]\h\[\e[0m\]:\[\e[36m\]`pwd`/\[\e[0m\]]\n    \[\e[1;31m\]\$\[\e[0m\] '
fi
