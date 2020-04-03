#!/bin/bash
declare -i x=1
while [ $x -le 100 ]
do
    if [ $((x%2)) == 1 ]
    then
        echo $x
    fi
    x=$((x+1))
done
