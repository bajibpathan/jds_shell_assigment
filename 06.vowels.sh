#!/bin/bash

source ./colors.sh

# Check if cowsay package is installed. If not, it will install.
sudo dnf list installed cowsay &> /dev/null
if [ $? -ne 0 ]; then
    sudo dnf install cowsay -y &> /dev/null
fi

# Input from the user
read -p "Enter a statement to count the number of vowles: " STATEMENT

# Validating the correctness of the statement
if [ -z "$STATEMENT" ]; then
    echo -e "$RED Invalid Input::$DEFAULT Please try again"
    exit 1
fi

# Counting number of vowels
VOWEL_COUNT=$(echo $STATEMENT | grep -oi '[aeiou]' | wc -l)

# Displaying the results
echo -e "$CYAN Number of Vowels in the statement $DEFAULT: $GREEN $VOWEL_COUNT $DEFAULT"

cowsay "Thank You for trying this script"