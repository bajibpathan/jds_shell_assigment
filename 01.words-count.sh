#!/bin/bash

# Sourcing all the color variables 
source ./colors.sh

# Validation for invalid arguments
if [ $# -eq 0 ]; then
    echo -e "$BLUE Please supply filename as argument $DEFAULT"
    echo -e "$RED USAGE:: $DEFAULT sh $0 <words_file_name> [number_of_top_words]"
    exit 1
fi

if [ ! -f $1 ]; then
    echo -e "$RED Invalid Argument:: $DEFAULT Please pass the file which contains words"
    exit 1
fi


TOP_WORDS=${2:-5}

# Counting the words and their repetion
grep -wo '[[:alnum:]]\+' $1 | sort | uniq -c | sort -rk 1 > SORTED_WORDS
TOTAL_WORDS=$(cat SORTED_WORDS | wc -l)
RESULT=$(awk -F " " '{print $2 " " $1}' SORTED_WORDS | head -n $TOP_WORDS)

# Displaying the results
echo "+------------------------------------------+"
echo -e " $GREEN Total Words in the file: $TOTAL_WORDS  $DEFAULT   "     
echo "+------------------------------------------+"
echo "                                           "

echo "+------------------------------------------+"
echo -e "$MAGENTA Top $TOP_WORDS words with thier repetition $DEFAULT"
echo "+------------------------------------------+"
echo -e "$YELLOW WORD \tRepetition $DEFAULT"
echo "+-----------------+"
echo $RESULT| xargs -n 2 | column -t
echo "+------------------------------------------+"
