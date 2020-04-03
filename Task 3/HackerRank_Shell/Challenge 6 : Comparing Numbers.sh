#!/bin/bash
read -p "First Number: " x
read -p "Second Number: " y
if [ $x -lt $y ]
then
    echo "X is less than Y"
elif [ $x -gt $y ]
then
    echo "X is greater than Y"
elif [ $x -eq $y ]
then
    echo "X is equal to Y"
fi
