#!/bin/bash

path="/Users/i0a0334/Downloads"
files=$(find $path -name '*.pdf' -mtime +30)

if [[ -n $files ]]
then
  echo "$files" > $(date '+%m%d%y%H%M%S').txt
else
  echo "No file found"
fi
