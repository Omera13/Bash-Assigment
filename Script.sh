#!/bin/bash

# Check if an argument was sent
if [ $# -eq 0 ]
then
    filename="Data.txt" # Default file name
else
    filename=$1
fi

# Check if the file name is a file
if [ ! -f "$filename" ] 
then 
    echo "File does not exist"
    exit 1
fi

# Print columns 1 and 3 from the text file
awk '{print $1, $3}' "$filename"

# Could have also print only the lines where the status is not 'Running'
# By adding a condition to the awk command:
# awk '$3 != "Running" {print $1, $3}' "$filename"

# To save the output to a different text file we can add '> output_filename.txt' at the end of the command