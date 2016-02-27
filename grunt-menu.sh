#!/bin/bash

# NPM Version
NPM_VERSION="4.0.0"

# Formatting variables
BOLD=$(tput bold)
NORMAL=$(tput sgr0)
GREEN=$(tput setaf 2)
LBLUE=$(tput setaf 6)
RED=$(tput setaf 1)
PURPLE=$(tput setaf 5)

#==============
# Initiate and clone submodule
#==============
INSTALL_SUBMODULE() {

	# Remove any trace of old modules
	if [ -d ".git/modules/grunt-base" ]; then
    	rm -rf grunt-base
	    rm -rf .git/modules/grunt-base/
	    git submodule deinit grunt-base
	    git rm grunt-base
	    git rm --cached grunt-base
	fi

	# remove Gruntfile.js if exist
	if [ -f Gruntfile.js ]; then
		rm Gruntfile.js
	fi

	# remove package.json if exist
	if [ -f package.json ]; then
		rm package.json
	fi

	# Make sure you're in a git directory before trying to create a submodule
	if [ -d ".git" ]; then
		git submodule init
		git submodule add https://gitlab.cwp.govt.nz/build-tools/grunt-base.git
	else
		git init
		submodule;
	fi

}

#==============
# Remove any old files and import new ones to project root
#==============
INSTALL_GRUNT() {

	# Create syslinks
	ln -s grunt-base/Gruntfile.js ./
	ln -s grunt-base/package.json ./

	# Install package.json dependencies
	npm install

	clear;

	echo 'COMPLETE: Type "grunt" to start watching!';

	exit;

}


#==============
# Menu
#==============
main() {

	clear

	until [ "$REPLY" = "q" ]
	do
		echo "${BOLD}#-----------------------------------------------#${NORMAL}"
		echo
		echo "${GREEN}1. Project setup ${NORMAL}"
		echo "Install grunt and required modules for a clean project"
		echo
		echo '#-----------------------------------------------#'
		echo 'q.  Quit'
		echo
		read -p 'Command : ' REPLY
		case $REPLY in

			1) INSTALL_SUBMODULE && INSTALL_GRUNT
			;;

			[Qq]*) clear && exit
			;;
		esac
	done

}

#==============
# Call the menu
#==============
main
