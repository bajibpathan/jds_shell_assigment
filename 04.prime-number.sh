#!/bin/bash
source ./colors.sh

# Banner 
echo "+-------------------------------+"
echo -e " $MAGENTA IST IT A PRIME ??? $DEFAULT "     
echo "+-------------------------------+"

# Input from user
read -p "Enter a number to find out: " NUMBER

# If the given number is 0 or 1,then it is not a prime number
if [ $NUMBER -le 1 ]
then
    echo -e "$YELLOW $1 is not a Prime Number"
    exit 1
fi

LOOP_VALUE=`expr $NUMBER / 2`
echo "                     "

# Looping the given number to find out if it is Prime or not
for counter in $(seq 2 $LOOP_VALUE)
do
    if [ `expr $NUMBER % $counter` -eq 0 ]
    then
        echo -e "$YELLOW $NUMBER $DEFAULT is not a Prime Number"
        exit
    fi
done

echo -e "$GREEN $NUMBER $DEFAULT is a Prime Number"