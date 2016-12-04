#!/bin/bash

DOTFILES=(".bashrc" ".vimrc")
DATETEIME=`date +%Y%m%dT%H%M%S`
BASEDIR="${HOME}/git/dotfiles"

for file in ${DOTFILES[@]}; do
	if [ -e ${HOME}/${file} ]; then
		echo "File exists. Create tmp file: ${file}.dot_${DATETEIME}"
		ln -s ${BASEDIR}/${file} ${HOME}/${file}.dot_${DATETEIME}
	else
		echo "Create Symbolic file: ${file}"
		ln -s ${BASEDIR}/${file} ${HOME}/${file}
	fi
done
