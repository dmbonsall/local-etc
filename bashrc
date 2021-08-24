#!/bin/bash
# vim: set noexpandtab ts=4 sw=4 ai:

# ===== Git Completion Script =====
if [ -e ${HOME}/.local/etc/git-completion.bash ]; then
	# Prefer the local git completion script, if there is one
	source ${HOME}/.local/etc/git-completion.bash
elif [ -e /usr/local/git/contrib/completion/git-completion.bash ]; then
	# Fall back here, if the local is not present
    source /usr/local/git/contrib/completion/git-completion.bash
fi

# ===== Git Prompt Script =====
if [ -e ${HOME}/.local/etc/git-prompt.sh ]; then
	# Prefer the local git prompt script, if there is one
	source ${HOME}/.local/etc/git-prompt.sh
    USE_GIT_PROMPT=1
elif [ -f /usr/local/git/contrib/completion/git-prompt.sh ]; then
	# Fall back here, if the local is not present
    source /usr/local/git/contrib/completion/git-prompt.sh
    USE_GIT_PROMPT=1
else
    USE_GIT_PROMPT=0
fi

# ===== Aliases =====
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
    GIT_PS1_SHOWDIRTYSTATE=1
    GIT_PS1_SHOWSTASHSTATE=1

    PS1='[\[\e[32m\]\u\[\e[0m\]@\[\e[1;32m\]\h\[\e[0m\]:\[\e[36m\]`pwd`/\[\e[0m\]]\n\[\e[33m\]($(echo $CONDA_DEFAULT_ENV)) \[\e[35m\]$(__git_ps1 "(%s)") \[\e[1;31m\]\$\[\e[0m\] '
else
    PS1='[\[\e[32m\]\u\[\e[0m\]@\[\e[1;32m\]\h\[\e[0m\]:\[\e[36m\]`pwd`/\[\e[0m\]]\n    \[\e[1;31m\]\$\[\e[0m\] '
fi
