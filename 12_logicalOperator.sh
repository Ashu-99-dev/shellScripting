#!/bin/bash

# AND operator

read -p "Enter your age: " age
read -p "Enter your country: " country
if [ ${age} -ge 18 ] && [ ${country} == "India" ]
then
    echo "You can vote"
else
    echo "You can't vote"
fi