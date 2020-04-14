#!/bin/bash
echo $1 $2 $3

args=("$@") #array

echo $args
echo ${args[0]} ${args[1]} ${args[2]}


echo $@  # all
echo Number of arguments passed: $#


echo `uname -o`
