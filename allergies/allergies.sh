#!/usr/bin/env bash

declare -A allergens=(
    [eggs]=1
    [peanuts]=2
    [shellfish]=4
    [strawberries]=8
    [tomatoes]=16
    [chocolate]=32
    [pollen]=64
    [cats]=128
)
score="$1"
cmd="$2"

if [[ "$cmd" != "list" ]]; then
	allergen="$3"
	value="${allergens["$allergen"]}"
	if (( score & value )); then
		echo "true"
	else
		echo "false"
	fi
else
	res=()
	for allergen in eggs peanuts shellfish strawberries tomatoes chocolate pollen cats; do
		value="${allergens["$allergen"]}"
		if (( value & score )); then
			res+=("$allergen")
		fi
	done
	echo "${res[*]}"
fi

	

