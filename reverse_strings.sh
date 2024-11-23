#!/bin/bash

# Author: [Karthees P]
# Script to reverse a string with special conditions

flag=$1

input_string=$2

if [ "$flag" != "-e" ] && [ "$flag" != "-w" ]; then
echo "Invalid input. Use -e for entire reversal or -w for word reversal."
exit 1

fi

if [ "$flag" == "-e" ]; then
echo "$input_string" | rev

elif [ "$flag" == "-w" ]; then

for word in $input_string; do

echo -n "$(echo $word | rev) "
done

echo
fi
