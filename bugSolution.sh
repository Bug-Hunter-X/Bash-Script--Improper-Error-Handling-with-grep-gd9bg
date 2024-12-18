#!/bin/bash

# This script demonstrates proper error handling when using 'grep'.

file_to_process="my_file.txt"

grep_result=$(grep "error" $file_to_process)

if [ $? -ne 0 ]; then
  echo "Error: 'grep' command failed. File might not exist or pattern not found."
  exit 1
fi

if [[ -z "$grep_result" ]]; then
  echo "Info: No errors found in the file."
else
  echo "Errors found in the file:"
  echo "$grep_result"
fi
