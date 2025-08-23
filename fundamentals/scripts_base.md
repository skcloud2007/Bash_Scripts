# 🐧 syntaxes
```bash
# While defining command in variable small brackets
SERVER_NAME=$(hostname)
```

- Condition to test:
```bash
syntex: file operatores 
    [ condition-to-test ]

-d FILE   True if a file is directory
-e FILE   True if file exists
-f FILE   True if file exist and is a regular file
-r FILE   True if a file is readbale by you
-s FILE   True if a file exists and is not empty
-w FILE   True if a file is writable by you
-x FILE   True if a file is executable by you
```

- String Operators
```bash
-z STRING            True if string is empty
-n STRING            True if string is not empty
STRING1 = STRING2    True if string are equal
STRING1 !=           True if string are not equal
```

- Arithmetic Operators
```bash
arg1 -eq arg2       # True if arg1 is equal to arg2
arg1 -ne arg2       # True if arg1 not equal to arg2
arg1 -lt arg2       # True if arg1 is less than arg2
arg1 -gt arg2       # True if arg1 is greater that arg2
arg1 -le arg2       # True if arg1 is less than or equal to arg2
arg1 -ge arg2       # True if arg1 is greater than or equal to arg2
```

- Making Decision - The if statement
```bash
if [ condition ]
then
    command 1
    command 2
    command N
fi

## Example =====>>>>>>>
#!/bin/bash
MY_SHELL="bash"
if [ "$MY_SHELL" = "bash" ]
then
    echo "You seems to like the bash shell"
fi

## Example =====>>>>>>>
#!/bin/bash
MY_SHELL="bash"
if [ "$MY_SHELL" = "bash" ]
then
    echo "You seems to like the bash shell"
else
    echo "You don't seems to like the bash shell"
fi
```