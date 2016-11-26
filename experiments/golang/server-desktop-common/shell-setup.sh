#!/bin/bash
#A shell script to setup any bash related stuff that is common to multiple projects


#first, lets make sure this project can handle different golang subprojects.
#from: http://stackoverflow.com/questions/17780754/automatically-defining-gopath-on-a-per-project-basis/28394596#28394596
cd () {
	builtin cd "$@"
	cdir=$PWD
	GOPATH=""
	while [ "$cdir" != "/" ]; do
		if [ -e "$cdir/.gopath" ]; then
			GOPATH=$cdir
			break
		fi
		cdir=$(dirname "$cdir")
	done
	export GOPATH
	
}

