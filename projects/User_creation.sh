#!/usr/bin/env bash


# Script should be excute with sudo/root access
if [ "${UID}" -ne 0 ]
then
    echo 'Please run with sudo or root '
    exit 1
fi
# User should provide atleast one argument as username else guide him
if [ "${#}" -lt 1 ]
then
    echo 'Usage: ${0} USER_NAME [COMMENT]...'
    echo 'Create a user with USER_NAME and comments feild of COMMENT'
    exit 1
fi

# Store 1st argument as user name
USER_NAME="${1}"

# In case of more than one argument else treated as comment
shift 
COMMENT="${@}"

# Create a password
PASSWORD=$(date +%s%N)

# Create the user
useradd -c $COMMENT -m $USER_NAME

# check if user successfully created or not

if [ $? -ne 0 ] 
then
    echo 'The Account could not be created'
    exit 1
fi

# Set password for the user
passwd $PASSWORD $USER_NAME

# Check if password is successfully set or not
if [ $? -ne 0 ]
then 
    echo "Password could not be set"
    exit 1
fi

# Force password change of first login
passwd -e $USER_NAME

# Dispaly the username, password, and host where user is created 
echo
echo "USERNAME: $USER_NAME"
echo 
echo "PASSWORD: $PASSWORD"
echo
echo $(hostname)