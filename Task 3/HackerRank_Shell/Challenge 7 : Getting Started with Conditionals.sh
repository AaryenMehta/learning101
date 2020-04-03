#!/bin/bash
read -p "Input" var
if [[ $var == Y || $var == y ]]
then
    echo "YES"
elif [[ $var == N || $var == n ]]
then
    echo "NO"
fi
