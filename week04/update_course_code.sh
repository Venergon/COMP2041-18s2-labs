#!/bin/sh

for file in "$@"
do
    if test -d "$file"
    then

        "$0" "$file/"*

    else
        temp="$file.tmp.$$"
        if test -e "$temp"
        then
            echo "$temp already exists"
            exit 1
        fi
        sed "s/COMP2041/COMP2042/g;s/COMP9041/COMP9042/g" "$file"  > "$temp"
        mv "$temp" "$file"
    fi

done
