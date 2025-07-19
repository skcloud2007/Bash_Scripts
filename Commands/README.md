# SED Utility cases

`sed [Option] 'command' file ## command -->Operation to perform on input, file --> to apply operation`

### Replace first occurance of "old" with "new"
`sed 's/old/new' file.txt`

`s/pattern/replacement/flags`
s= substitue, find pattern, replace, optional flag to use like g(global), i(ignore case)
`s/old/new/g file.txt`
Global substitution: Replaces all occurrences of "old" in a line.

`sed 's/old/new/Ig' file.txt` Case insensitive substitution where "I"

`sed '/pattern/d' file.txt`   Delete line matching "pattern" from "file.txt"

``sed -n '5p' file.txtx``  Print 5th line from file.txt

`sed '/pattern/i new_line' file.txt` Insert "new_line" before "pattern"

`sed '/pattern/a new_line' file.txt` Insert "new_line" after "pattern"

`sed '/^$/d' file.txt`  Delete empty line from "file.txt"

`sed '10,20 s/old/new/g' file.txt` Replace "old" with "new" in line "10 and 20"

`sed 's/[ \t]*$//' file.txt` Remove trailing whitespace from each line in file.txt

`sed -i 's/old_text/new_text/g' file.txt` In-place sustitution of "old_text" with "new_text"
