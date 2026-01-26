#!/bin/bash

#Array

myArray=(1 20 30.5 Hello "Hey Buddy!")

echo "All the values in the array are: ${myArray[*]}"

echo "Value in 3rd index: ${myArray[2]}"

#How to find the lenght of array

echo "The length of the array is: ${#myArray[*]}"

echo "Value from index 2 to 3: ${myArray[*]:2:2}"

# Updating an exsiting array with new value

myArray+=( New 30 40 )
echo "Values of the new array are: ${myArray[*]}"