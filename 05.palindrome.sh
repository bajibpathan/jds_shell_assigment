#!/bin/bash

source ./colors.sh

# Banner 
echo "+------------------------------------+"
echo -e " $MAGENTA Is this string a palindrome??  $DEFAULT "     
echo "+------------------------------------+"


# function to verify if the word is Palindrome or not
is_palindrome(){
    original_string="$1"
    reverse_string=$(echo "$1" | rev)

    if [ "$original_string" == "$reverse_string" ]; then
        echo -e "The given word ($GREEN $1 $DEFAULT) is a Palindrome"
    else
        echo -e "The given word ($YELLOW $1 $DEFAULT) is NOT a Palindrome"
    fi
}

# Input from the user
read -p "Enter a string: " WORD

# Validation if it a empty word
if [ -z $WORD ]; then
    echo -e "$RED Invalid Input:: $DEFAULT Please try again."
    exit 1
fi


# Calling the function
is_palindrome $WORD
