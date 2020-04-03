#!/bin/bash
read x
printf "%.3f\n" `echo "$x" | bc -l`
