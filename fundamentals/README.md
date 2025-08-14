# Wildcards
### Wildcards can be used with most commands
 ls
 rm
 cp

#### Match zero or more characters
`*.txt`
`a*`
`a*.txt`
#### Match exactly one charater
`?.txt`
`a?`
`a?.txt`
#### Matches any of the characters includinhg between the brackets. Match exactly one character
Example `ca[nt]*` here any one character "n" or "t" will be filtered.
#### Matches any one characters NOT included between brackets
`[!]` for example `[!aeiou]*`
#### Use two characters separated by a hyphen to create a range in a characters class.
`[a-g]*` Matches all the files that starts with a,b,c,d,e,f or g.
`[1-6]` Matches all the files that starts with 1,2,3,4,5 or 6
#### Named Character Class
`[[:alpha:]]` Matches alphabetic letters both upper & lower
`[[:alnum:]]` Alphanuemeric 
`[[:digit:]]` numbers and decimals
`[[:lower:]]` 
`[[:space:]]` white spaces
`[[:upper:]]` only upper cases
#### \ - escape characters. Use if you want to match a wildcard charaters.
`*\?` Match all the file that ends with a question mark