#!/bin/bash

############## Approach ##########################
# Prime numbers are defined as numbers greater than 1 
# that have no divisors other than 1 and themselves
# Loop through number of times of a given number
# Each loop, divide the number with loop counter
# if it is "Zero", then it's a prime number
# Otherwise -> Not a prime number
############## Approach ##########################

source ./colors.sh

# Check if cowsay package is installed. If not, it will install.
sudo dnf list installed cowsay &> /dev/null
if [ $? -ne 0 ]; then
    sudo dnf install cowsay -y &> /dev/null
fi

# Banner 
echo "+------------------------------------+"
echo -e " $MAGENTA IS IT A PRIME ??? LET'S FIND OUT $DEFAULT "     
echo "+------------------------------------+"

# Input from user
read -p "Enter a number to find out: " NUMBER

# If the given number is 0 or 1,then it is not a prime number
if [ $NUMBER -le 1 ]
then
   cowsay "$NUMBER is not a Prime Number :("
fi

LOOP_VALUE=`expr $NUMBER / 2`
echo "                     "
# Looping the given number to find out if it is Prime or not
for counter in $(seq 2 $LOOP_VALUE)
do
    if [ `expr $NUMBER % $counter` -eq 0 ]
    then
        cowsay "$NUMBER is not a Prime Number :("
        exit 1
    fi
done
cowsay "$NUMBER is a Prime NUmber :)"
