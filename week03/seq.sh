#!/bin/bash
#set -x

last=1
curr=1
echo "$0"
if [ $# -eq 1 ]
then
    last="$1"
elif [ $# -eq 2 ]
then
    curr="$1"
    last="$2"
fi

while [ "$curr" -le "$last" ]
do
    echo "$curr"
    curr="`expr $curr + 1`"
done
