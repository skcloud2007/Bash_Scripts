# SED Utility cases

`sed [Option] 'command' file ## command -->Operation to perform on input, file --> to apply operation`

### Replace first occurance of "old" with "new"
`sed 's/old/new' file.txt`

`s/pattern/replacement/flags`
s= substitue, find pattern, replace, optional flag to use like g(global), i(ignore case)
`s/old/new/g`
Global substitution: Replaces all occurrences of "old" in a line.
