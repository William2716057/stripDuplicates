#!/bin/bash

#define input and output files
input="words.txt"
output="inventedWords.txt"

#check if input file exists
if [ ! -f "$input" ]; then
	echo "'$input' not found."
	exit 1
fi

#sort input, remove duplicates, save to new file
sort "$input" | uniq | sort > "$output"

echo "results saved to '$output'"
