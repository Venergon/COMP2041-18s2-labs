#!/bin/sh
for i in $(seq 100)
do
    if ./isprime.sh "$i" > /dev/null
    then
        echo "$i"
    fi

done
