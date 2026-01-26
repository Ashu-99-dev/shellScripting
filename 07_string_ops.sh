#!/bin/bash

myVar="Hey Buddy, How are you?"

myVarLength=${#myVar}
echo "Lenght of the myVar is $myVarLength"

echo "Uppercase is: ${myVar^^}"
echo "Lowercase is: ${myVar,,}"

# To replace a string 

newVar=${myVar/Buddy/Rahul}

echo "$newVar"

echo "After slice: ${myVar:4:5}"