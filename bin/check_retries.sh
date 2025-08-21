#!/bin/bash
# Finds retry warnings and counts how many were found.

file="$1"

if [ ! -f "$file" ]; then
  echo "File not found: $file"
  exit 1
fi

echo "Matching lines:"
grep -i "retry" "$file"

echo
echo "Total retry warnings:"
grep -i "retry" "$file" | wc -l

