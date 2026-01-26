#!/bin/bash

# Script to show how to use variables

a=10

name="Ashutosh"
age=28
echo "My name is $name and age is $age"

name="Rahul"
echo "My name is $name"

# Var to store the output  of a command

HOSTNAME=$(hostname)
echo "Name of the machine is $HOSTNAME"