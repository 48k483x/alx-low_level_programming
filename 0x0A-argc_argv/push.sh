#!/bin/bash

# Enable tab completion for file selection
read -e -p "Enter the name of the file to push: " -i "" file_to_push

# Check if the file exists
if [ ! -f "$file_to_push" ]; then
  echo "File not found: $file_to_push"
  exit 1
fi

# Specify a default commit message or allow the user to enter one
read -e -p "Enter the commit message (or press Enter to use a default message): " -i "Update $file_to_push" commit_message

# Perform the Git operations
git add "$file_to_push"
git commit -m "$commit_message"
git push

echo "File '$file_to_push' pushed with commit: $commit_message"

