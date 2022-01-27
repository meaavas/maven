#!/bin/bash
clear

read -p "Enter your college GPA:" gpa

if [[ $gpa -le  2 ]]; then
        echo "Study Hard"
elif [[ $gpa -le  3 ]]; then
        echo "you can do better."
elif [[ $gpa -le 4 ]]; then
        echo "Well done."

else
        echo "Please enter a valid GPA."

fi
#Added a line of comment for testing purpose