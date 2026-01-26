#!/bin/bash

#cond1 && cond2 || cond3

read -p "Enter your marks: " marks

[ ${marks} -ge 40 ] && echo "Pass" || echo "Minor"