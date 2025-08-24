#!/bin/bash
# Clean up help_files.txt: remove ANSI escape codes and logging headers, preserve all help content

INPUT="help_files.txt"
OUTPUT="help_files_clean.txt"

# Remove ANSI escape codes
sed -E 's/\x1B\[[0-9;]*[a-zA-Z]//g' "$INPUT" |
# Remove logging header (first line if it contains LOGGING OUTPUT)
sed '/LOGGING OUTPUT TO/Id' > "$OUTPUT"

echo "Cleaned file written to $OUTPUT"
