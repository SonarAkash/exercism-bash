#!/usr/bin/env bash

num="$1"
new_num=0
n="${#num}"
for ((i=0; i<n; i++)); do
	digit="${num:i:1}"
	power=$(( digit ** n))
	((new_num+=power))
done
if (( num == new_num )); then
	echo "true"
else
	echo "false"
fi
