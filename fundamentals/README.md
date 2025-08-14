# 🐧 Linux Wildcards Cheat Sheet

Wildcards are special characters that allow you to match filenames and strings in commands. They can be used with most Linux commands such as:
```bash
ls
rm
cp

*.txt      # Matches all files ending with .txt
a*         # Matches all files starting with 'a'
a*.txt     # Matches files starting with 'a' and ending with .txt

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

`[[:lower:]]` Only lower

`[[:space:]]` white spaces

`[[:upper:]]` only upper cases

#### \ - escape characters. Use if you want to match a wildcard charaters.
`*\?` Match all the file that ends with a question mark