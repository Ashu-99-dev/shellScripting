#!/bin/bash

read -p "which site do you want to check: " site

ping -c 1 ${site} &> /dev/null     # /dev/null is used to negelect the output

if [ $? -eq 0 ]
then 
    echo "Successfully connected to: $site"
else 
    echo "Unable to connect: ${site}"
fi