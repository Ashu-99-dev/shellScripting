#!/bin/bash

filename=/Users/ashutoshtiwari/Documents/Development/shellScripting/26_exi.sh

if [ -f ${filename} ]
then
    echo "File exist"
else
    echo "File not exist"
    exit 1
fi
