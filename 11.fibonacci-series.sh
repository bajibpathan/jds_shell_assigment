#!/bin/bash

############## Approach ############
# Repeatedly summing the previous two numbers
# Print the sum
############## Approach ############

source ./colors.sh

# Banner 
echo "+------------------------------------+"
echo -e " $MAGENTA FIBONACCI SEQUENCE $DEFAULT "     
echo "+------------------------------------+"

# Variable declaration
FIRST=0
SECOND=1
NEXT=$SECOND
LOOP_COUNTER=1

# Input from the user
read -p "Enter a number to see the Fibonacci sequence: " NUMBER

echo "                                              "
echo "+--------------------------------------------+"
echo -e "The Fibonnaci sequenece of first $BLUE $NUMBER $DEFAULT numbers"
echo "+--------------------------------------------+"


echo "                                              "
echo "+--------------------------------------------+"
# caculating the fibonacci numbers by looping through
while [ "$LOOP_COUNTER" -le "$NUMBER" ]
do
    # Printing the sum
    echo -en "$YELLOW $NEXT $DEFAULT "
    FIRST=$SECOND
    SECOND=$NEXT
    NEXT=`expr $FIRST + $SECOND`
    LOOP_COUNTER=`expr $LOOP_COUNTER + 1`
done
echo -e "\n+--------------------------------------------+"
