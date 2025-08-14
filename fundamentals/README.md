# 🐧 Linux Wildcards Cheat Sheet

Wildcards are special characters that allow you to match filenames and strings in commands. They can be used with most Linux commands such as:
```bash
ls
rm
cp

*.txt      # Matches all files ending with .txt
a*         # Matches all files starting with 'a'
a*.txt     # Matches files starting with 'a' and ending with .txt

?.txt      # Matches any file with one-character name ending with .txt
a?         # Matches files starting with 'a' followed by exactly one character
a?.txt     # Matches files starting with 'a', followed by one character, ending with .txt

ca[nt]*    # Matches files starting with 'ca' followed by 'n' or 't' and then anything else

[!aeiou]*  # Matches files that do not start with a vowel

[a-g]*     # Matches files starting with letters a through g
[1-6]*     # Matches files starting with numbers 1 through 6

| Class       | Description                        | Example        |
| ----------- | ---------------------------------- | -------------- |
| `[:alpha:]` | Alphabetic letters (upper & lower) | `[[:alpha:]]*` |
| `[:alnum:]` | Alphanumeric characters            | `[[:alnum:]]*` |
| `[:digit:]` | Digits (0-9)                       | `[[:digit:]]*` |
| `[:lower:]` | Lowercase letters                  | `[[:lower:]]*` |
| `[:upper:]` | Uppercase letters                  | `[[:upper:]]*` |
| `[:space:]` | Whitespace characters              | `[[:space:]]*` |

*\?        # Matches files that end with a question mark '?'

`ls [[:upper:]]*.txt     # List all .txt files starting with an uppercase letter
rm [!aeiou]*.log        # Remove all .log files that do not start with a vowel
`