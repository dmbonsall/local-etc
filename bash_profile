#!/bin/bash
# vim: set noexpandtab ts=4 sw=4 ai:

# include .bashrc if it exists
if [ -e "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
fi

export PATH=/Users/david/Library/Python/3.9/bin:/Users/david/.local/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
