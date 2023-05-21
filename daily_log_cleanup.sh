#!/bin/bash

# Function to recursively delete files
delete_files() {
  local dir="$1"

  # Loop through all files and directories in the given directory
  for file in "$dir"/*; do
    if [[ -f "$file" ]]; then
      # Delete the file
      rm "$file"
    elif [[ -d "$file" ]]; then
      # Recursively delete files in the subdirectory
      delete_files "$file"
    fi
  done
}

# Directory to delete files from
target_directory="/path/to/your/directory"

# Call the function to delete files in the target directory and its child directories
delete_files "$target_directory"
