#! /bin/sh -e

[ -n "$1" ] && {
    if echo "$1" | grep -oqE '^[0-9]+$' 
    then
        length="$1"
    else
        printf "Argument '%s' is not a number.\n" "$1"
        exit 1
    fi
}

[ -z "$length" ] && {
    length=32
}

tr -dc A-Za-z0-9_ < /dev/urandom | head -c "$length" | xargs
