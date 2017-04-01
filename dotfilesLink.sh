#!/bin/bash

DOTFILES=(".bashrc" ".vimrc" ".screenrc")
DATETEIME=`date +%Y%m%dT%H%M%S`
BASEDIR="$(echo ${0%/*})"

if [ ${HOME} != $(pwd) ]; then
	echo "'${0##*/}' is Execute in the HOME directory."
	exit 1
fi

for file in ${DOTFILES[@]}; do
	if [ -e ${file} ]; then
		echo "File exists. Create tmp file: ${file}.dot_${DATETEIME}"
		ln -s ${BASEDIR}/${file} ${file}.dot_${DATETEIME}
	else
		echo "Create Symbolic file: ${file}"
		ln -s ${BASEDIR}/${file} ${file}
	fi
done
