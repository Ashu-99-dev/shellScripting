#!/bin/bash

# to create a user ,provide username and description

echo "Creating User"
echo "Username is: ${1}"

shift

echo "Description: ${@}"