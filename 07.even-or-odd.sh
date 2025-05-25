#!/bin/bash

############## Approach ##########################
# Divide the number by 2
# If the number equal to '0' -> Even
# Otherwise -> Odd
############## Approach ##########################

source ./colors.sh

# Check if cowsay package is installed. If not, it will install.
sudo dnf list installed cowsay &> /dev/null
if [ $? -ne 0 ]; then
    sudo dnf install cowsay -y &> /dev/null
fi

# Banner 
echo "+------------------------------------+"
echo -e " $MAGENTA EVEN OR ODD ??? LET'S FIND OUT $DEFAULT "     
echo "+------------------------------------+"

# Read input from user
read -p "Enter a number: " NUMBER

# Get the reminder of the given number
RESULT=`expr $NUMBER % 2`
echo "                 "

# Check if it is zero or not
if [ $RESULT -eq 0 ]; then
    echo -e "$GREEN $NUMBER $DEFAULT is an even number"
else
    echo -e "$YELLOW $NUMBER $DEFAULT is an odd number"
fi

cowsay "Thank You :)"