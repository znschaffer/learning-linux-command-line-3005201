#!/bin/bash
# Replaces 'fail' (any case) with 'FAILURE' in a copy of the file.

file="$1"
outfile="cleaned_${file}"

if [ ! -f "$file" ]; then
  echo "File not found: $file"
  exit 1
fi

sed 's/[Ff][Aa][Ii][Ll]/FAILURE/g' "$file" | tee "$outfile"

