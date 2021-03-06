#!/usr/bin/env zsh

# Go to the top level of a Git repo
gd() {
	root=$(git rev-parse --show-toplevel) 2> /dev/null || {
		echo -e "\033[32mgd\033[0m only works inside a Git repo."
		return
	}
	cd $root
}
