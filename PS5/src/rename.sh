#!/bin/zsh

IFS=$'\n'
dirs=($(ls -1))

for file in ${dirs[@]}; do
	new_file=${file/Overleaf /}
	mv $file $new_file
done
