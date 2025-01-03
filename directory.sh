#!/bin/bash

echo "Enter Directory Name"
read dir

# Check if the directory exists
if [ ! -d "$dir" ]; then
  echo "Invalid directory"
  exit 1
fi

# Initialize the variable to track the largest size
large=0
largest_file=""

# Loop through each file in the directory
for file in $(find "$dir" -type f)
do
  size=$(stat -c %s "$file")
  echo "Size of $file is $size bytes"
  
  # Check if this file is larger than the current largest
  if [ $size -gt $large ]; then
    large=$size
    largest_file="$file"
  fi
done

# Output the file with the maximum size
echo "File with maximum size is: $largest_file with size $large bytes"

