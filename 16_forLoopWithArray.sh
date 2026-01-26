#!/bin/bash

myArray=( 1 2 3 4 5 Hello Shrishti how are you )

# for i in ${myArray[*]}
for (( i=0;i<${#myArray[*]};i++ ))
do
    echo "Value of array: ${myArray[$i]}"
    echo "Value of index: ${i}"
done


