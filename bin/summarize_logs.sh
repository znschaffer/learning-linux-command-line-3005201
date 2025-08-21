#!/bin/bash
# Counts occurrences of each log level.

file="$1"

if [ ! -f "$file" ]; then
  echo "File not found: $file"
  exit 1
fi

cut -d' ' -f3 "$file" | sort | uniq -c

