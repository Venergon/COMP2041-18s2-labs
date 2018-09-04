#!/bin/sh

if test $# -ge 1
then
    for file in "$@"
    do
        while read line
        do
            echo "$line"
        done < "$file"
    done
else
    while read line
    do
        echo "$line"
    done
fi
