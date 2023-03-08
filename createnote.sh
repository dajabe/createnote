#!/bin/sh

# Set your preferred file extension here
ext="md"
# Adjust this if you want a different date format
current_date=$(date +%F)

# Check user has provided arguments
# Prompt if no args provided
if [ $# -eq 0 ]; then
  read -p "Note Title: " USER_INPUT 
else
  USER_INPUT="$@"
fi 

# Construct notes file name
filename="$current_date"

for word in $USER_INPUT; do 
  filename="$filename"_"$word"
done 

filename="$filename.$ext"

# Check for a default editor and fall back to vi if none is found
if [ -n "$EDITOR" ]; then
  editor="$EDITOR"
else
  editor="vi"
fi

# This means that if you forget you've already started a note for the day
# You will simply reopen it.
exec "$editor" "$filename"
