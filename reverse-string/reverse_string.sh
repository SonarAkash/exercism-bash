#!/usr/bin/env bash

main(){
	local string="$1"
	local reverse_string=

	for((i=${#string}-1; i>=0; i--)); do
		reverse_string+="${string:i:1}"
	done
	echo "$reverse_string"
}

main "$@"
