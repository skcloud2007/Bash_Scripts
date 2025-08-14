
#! /bin/bash 
# Searching and pipe example --> Find all user named "bob" in /etc/passwd
# Print account name and real name
# print in alphabetical order by account name.
# Print in a tabular format

grep bob /etc/passwd | cut -d: -f1,5 | sort | tr ":" " " | column -t
## -d "field separator" by ":" and only print/find field 1 and 5
## "tr" translate charector by replacing ":" with white space
## print in table format
