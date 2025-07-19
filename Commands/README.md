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

`sed '/pattern/i new_line' file.txt` Insert <new_line> before <pattern>