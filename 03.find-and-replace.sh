#!/bin/bash

source ./colors.sh

# Arguments validation
if [ $# -ne 4 ]
then
    echo -e "$RED Missing Arguments $DEFAULT: Please check"
    echo -e "$RED USAGE:: $DEFAULT $YELLOW $0 <search_string> <replace_string> <source_dir> <file_pattern> $DEFAULt"
    exit 1
fi

# Stroing the inputs into variables
SEARCH_STRING=$1
REPLACE_STRING=$2
SOURCE_DIR=$3
FILE_PATTERN=$4

# Displaying the Inputs
echo "+-------------------------------+"
echo -e " $BLUE SEARCH STRING: $SEARCH_STRING $DEFAULT "     
echo "+-------------------------------+"
echo -e " $GREEN REPLACE STRING: $REPLACE_STRING $DEFAULT "     
echo "+-------------------------------+"

# Find the files in the source directory
FILES=$(find $SOURCE_DIR -type f -name "$FILE_PATTERN")

# Looping through the files and replacing the text
while IFS= read -r file
do  
    echo -e "\n"
    echo -e "$YELLOW Replacing it in the \"$file\" file. $DEFAULT"
    sed -i -e "s/${SEARCH_STRING}/${REPLACE_STRING}/g" $file
    echo -e " $SEARCH_STRING $GREEN successfully $DEFAULT replaced with $REPLACE_STRING"
done <<< $FILES