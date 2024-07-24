#!/bin/zsh

IFS=$'\n'
#dirs=($(ls -1 | sed "s/^/\'/g" | sed "s/$/\'/g" ))
dirs=($(ls -1))

for file in ${dirs[@]}; do
	new_file=${file/HW1.1 /}
	mv $file $new_file
done
