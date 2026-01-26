#!/bin/bash

#Getting values from a file names.txt

file="/Users/ashutoshtiwari/Documents/Development/shellScripting/names.txt"

for name in $(cat $file)
do
    echo "Name is $name"
done