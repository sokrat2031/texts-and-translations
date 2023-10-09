#!/bin/bash

# Get the current directory
current_dir=$(pwd)
OIFS="$IFS"
IFS=$'\n'

# Find all .docx files in the subdirectory
docx_files=$(find . -type f -name "*.docx")

# Iterate over all .docx files
for docx_file in $docx_files; do

	# Convert the .docx file to Markdown
	pandoc "$docx_file" -f docx -t markdown -o "${docx_file%.docx}.md"

done

IFS="$OIFS"
