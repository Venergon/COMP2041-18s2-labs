#!/bin/sh
num="$1"
for i in $(seq 2 "$(expr "$1" - 1)")
do
    if test $( expr $num % $i ) -eq 0
    then
        echo "$num is composite"
        exit 1
    fi

done
echo "$num is prime"
exit 0
