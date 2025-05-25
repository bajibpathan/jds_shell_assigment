#!/bin/bash

source ./colors.sh

# Banner 
echo "+------------------------------------+"
echo -e " $MAGENTA REVERSE A NUMNBER $DEFAULT "     
echo "+------------------------------------+"

# Read input from user
read -p "Enter a number: " NUMBER

# Input validation
if [ -z "$NUMBER" ]; then
    echo -e "$RED INVALID INPUT:: $DEFAULT Please check"
    exit 1
fi

# Reverse a number
REVERSE=$(echo $NUMBER | rev)

echo "                                               "

echo "+-------------------------------------+"
echo -e "The original number :$YELLOW $NUMBER $DEFAULT"
echo -e "The reverse of it is :$GREEN $REVERSE $DEFAULT"
echo "+-------------------------------------+"

