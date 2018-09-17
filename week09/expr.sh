#!/bin/bash

i="0"

while (( i <= 5 ))
do
    a=$(( i++ ))
done

echo $i
echo $a
