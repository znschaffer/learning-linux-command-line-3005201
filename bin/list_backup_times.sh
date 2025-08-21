#!/bin/bash
# Shows timestamps for backup job start messages.

file="$1"

if [ ! -f "$file" ]; then
  echo "File not found: $file"
  exit 1
fi

grep -i "Starting backup job" "$file" | cut -d' ' -f2 | sort

