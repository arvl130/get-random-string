#! /bin/sh -e

printf '%s' 'Enter some words: '
read -r input

output="$(echo "$input" | fold -w 1 | shuf | tr -d '\n')"

printf "[shuffled] '%s'\n" "$output"
