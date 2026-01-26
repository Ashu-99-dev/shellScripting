#!/bin/bash

# read -p "Enter your age: " age
# if [[ ${age} -ge 18 ]]
# then
#     echo "You can cast your vote"
# else
#     echo "You can't cast you vote"
# fi

read -p "Enter your marks: " marks
if [ ${marks} -ge 80 ]
then
    echo "First Division"
elif [ $marks -ge 60 ]
then 
    echo "Second Division"
elif [ $marks -ge 40 ]
then 
    echo "Third Division"
else
    echo "Fail.."
fi