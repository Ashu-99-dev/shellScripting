#!/opt/homebrew/bin/bash

# How to store the key value pair 

declare -A myArray
myArray=( [name]=Ashutosh [age]=28 [city]=Paris)

echo "Name is: ${myArray[name]}"
