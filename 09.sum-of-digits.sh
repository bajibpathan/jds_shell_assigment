#!/bin/bash

source ./colors.sh

# Banner 
echo "+------------------------------------+"
echo -e " $MAGENTA SUM OF DIGITS $DEFAULT "     
echo "+------------------------------------+"

# Input from the user
read -p "Enter a number to calculate of digits: " NUMBER

# To store total sum
SUM=0

# Looping the number until the number not equal to 0
while [ $NUMBER -ne 0 ]
do
    REMINDER=`expr $NUMBER % 10`
    NUMBER=`expr $NUMBER / 10`
    SUM=`expr $SUM + $REMINDER`
done

echo -e "Sum of the Digits is $GREEN $SUM $DEFAULT"
