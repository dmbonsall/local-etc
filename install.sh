#!/bin/bash
# vim: noexpandtab sw=4 ts=4 ai:
set -euo pipefail

dotfiles=( bash_profile bashrc gitconfig tmux.conf vimrc )

echo "This script will create symlinks for the following dotfiles:"
for dotfile in ${dotfiles[@]}; do
	echo "    ${HOME}/.${dotfile} -> ${HOME}/.local/etc/${dotfile}"
done
echo ""

echo "All existing files will be backed up and overwritten. Is this ok? (yes/no)"

while true; do
	read answer
	case ${answer} in
		[Yy]* ) break;;
		[Nn]* ) echo "Exiting..."; exit 1;;
		*) echo "(yes/no)";;
	esac
done

for dotfile in ${dotfiles[@]}; do
	if [ -h .${dotfile} ]; then
		cp -v ${HOME}/.${dotfile} ${HOME}/.${dotfile}.bak
		unlink -v ${HOME}/.${dotfile}
	elif [ -e .${dotfile} ]; then
		mv -v ${HOME}/.${dotfile} ${HOME}/.${dotfile}.bak
	fi

	ln -vs ${HOME}/.local/etc/${dotfile} ${HOME}/.${dotfile}
done

