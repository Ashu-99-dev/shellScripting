#!/bin/bash

echo "Provide an Option"
echo "a for print date"
echo "b for lists of scripts"
echo "c to check the current location"

read choice

case ${choice} in
    a)
    #multiple lines in a case
        echo "Today's date is:"
        date
        echo "Ending...";;
    b)ls;;
    c)pwd;;
    *)echo "Please provide a valid value"
esac
