#!/bin/bash

# call paru install
arch_install() {
	paru -S "$1" --noconfirm --skipreview --mflags --skipchecksums
}

# Determine whether the package is installed
### usage:
# is_install $dd
# if [[ $? -eq 1 ]] ; then
#  echo ok 
# fi
is_install() {
	if [ "$(command -v "$1")" ]; then
		return 1
	else
		return 0
	fi
}

