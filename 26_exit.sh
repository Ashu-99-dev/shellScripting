#!/bin/bash

#to access the arguments


if [ $# -eq 0 ]
then
    echo "Pls provide a value"
    exit 1
fi

echo "First argument is $1"
echo "Second argument is $2"

echo "All the arguments are - ${@}"
echo "Number of arguments are - ${#}"

#for loop to access the values from arguments

for filename in ${@}
do
    echo "Copying file - ${filename}"
done
