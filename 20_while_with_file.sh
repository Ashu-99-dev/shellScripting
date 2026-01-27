#!/bin/bash

# while IFS="," read id name age || this is the syntax for will to print csv file
cat demo.csv | awk 'NR!=1 {print}' | while IFS="," read id name age #this will remove the first line of csv files 
do 
    echo "Value from file is ${id}"
    echo "Value from file is ${name}"
    echo "Value from file is ${age}"
done 