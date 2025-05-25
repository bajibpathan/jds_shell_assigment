#!/bin/bash

############## Approach ##########################
# Initialize factorial with 1
# Loop through the given number of times
# Each loop multiply the loop counter and store it Factorial
# Repeat the process until counter equal to given number
############## Approach ##########################

source ./colors.sh

# Banner 
echo "+------------------------------------+"
echo -e " $MAGENTA FACTORIAL CALCULATOR $DEFAULT "     
echo "+------------------------------------+"


read -p "Enter a number: " NUMBER

FACTORIAL=1

if [ $NUMBER -eq 1 ]; then 
    echo -e "Factorial of a given number ($NUMBER) is $GREEN $FACTORIAL $DEFAULT"
    exit 
else
    for counter in $(seq 2 $NUMBER)
    do
        FACTORIAL=$(($FACTORIAL*$counter))
    done
fi

echo -e "Factorial of a given number ($NUMBER) is $GREEN $FACTORIAL $DEFAULT"