#!/bin/bash

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