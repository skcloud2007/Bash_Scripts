#!/bin/bash

# Print the first and third column of CSV file
awk -F '{print $1, $2}' <filename.csv> # -F is the field separator

# Task: Sum the values of the second column and print the total.
awk '{sum+=$2} END {print sum}' <file.txt>

# Task: Print lines where the number of words in the line is greater than 5.
awk 'NR > 5' <file.txt> # NF is a built-in variable representing the number of fields (words) in the current line

# Task: Print unique values from the first column.
awk '!seen[$1]++' <file.txt> #  seen to track whether a value has been encountered before. If it hasn’t, it is printed.

# Task: Find the maximum value in the second column.
awk 'max < $2 {max = $2} END {print max}' <file.txt>

# Task: Print each line's line number and content.
awk '{print NR, $0 }' <file.txt>

# Task: Replace "old_string" with "new_string" in the second column.
awk '{$2=<new_string>; print $0}' <file.txt>

# Task: Extract the first 5 characters from the third column.
awk '{print substr($3 1, 5)}' <file.txt>

# Task: Print lines that contain the word "error".
awk '/error/' <file.txt>

# Task: Print lines that do not contain the word "error".
awk '!/error/' <file.txt>

# Task: Count how many times the word "server" appears in the file.
awk '{for(i=1;i<=NF;i++) if ($i == "server") count++} END {print count}' <file.txt>

#Task: Print lines where the value in the second column is greater than 100.
awk '$2 > 100' <file.txt>

# Task: Change the field separator to a semicolon and print the first and second columns.
awk -F";" '{print $1, $2}' <file.txt>

# Task: Print the first and last columns.
awk '{print $1, $NF}' <file.txt>

# Task: Sum the values of the second column, excluding the header row.
awk 'NR > 1 {sum+=2} END {print sum}' <file.txt>

# Task: Print the first and third columns where the second column is greater than 50.
awk '$2 > 50 {print $1, $3}' <file.txt>

# Task: Print the first field with a width of 10 characters.
awk '{printf "%-10s %s\n", $1, $2}' <file.txt> ## %-10s ensures that the first field is printed with a width of 10 characters, and %s prints the second field normally.

# Task: Print the total number of fields (columns) in each line.
awk '{print NF}' <file.txt>

# Task: Print the first column along with the line number.
awk '{print NR, $1}' <file.txt>