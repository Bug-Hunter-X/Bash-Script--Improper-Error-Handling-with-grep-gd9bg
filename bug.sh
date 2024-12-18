#!/bin/bash

# This script attempts to process a file, but it mishandles errors.
# It doesn't check the return value of the 'grep' command.

file_to_process="my_file.txt"

grep "error" $file_to_process

if [ $? -ne 0 ]; then
  echo "Error processing the file!"
exit 1
fi

echo "File processed successfully!"
