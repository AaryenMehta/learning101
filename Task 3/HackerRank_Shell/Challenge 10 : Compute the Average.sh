#!/bin/bash
read n
sum=0
for ((i=1;i<=n;i++))
do
    read x
    sum=$((sum+x))
done
avg=$sum/$n
printf "%0.3f" `echo "$avg" | bc -l`
