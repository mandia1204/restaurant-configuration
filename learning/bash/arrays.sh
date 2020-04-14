#!/bin/bash
ARRAY=( 'Debian Linux' 'Redhat Linux' Ubuntu Linux Windows )
# get number of elements in the array
ELEMENTS=${#ARRAY[@]}

# echo each element in array
# for loop
for (( i=0;i<$ELEMENTS;i++)); do
    echo ${ARRAY[${i}]}
done

for t in ${ARRAY[@]}; do
  echo $t
done

ARRAY+=( "newElement1" "newElement2" ) #adds 2 elements

echo ${ARRAY[@]}
