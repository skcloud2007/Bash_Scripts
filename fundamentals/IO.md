# 🐧 Linux Input/Output Types

```bash

| Stream Name                  | File Descriptor | Default Target / Source | Description                                                                                         |
| ---------------------------- | --------------- | ----------------------- | --------------------------------------------------------------------------------------------------- |
| **Standard Input (stdin)**   | 0               | Keyboard                | Used to provide input to a command or program. Example: `cat` reads from stdin if no file is given. |
| **Standard Output (stdout)** | 1               | Terminal (screen)       | Used to display normal output. Can be redirected to a file or another command.                      |
| **Standard Error (stderr)**  | 2               | Terminal (screen)       | Used to display error messages. Can also be redirected separately from stdout.                      |

🔹 Redirection Operators
Linux provides operators to redirect these streams:

| Operator | Description                           | Example                        |      |            |
| -------- | ------------------------------------- | ------------------------------ | ---- | ---------- |
| `>`      | Redirect stdout to a file (overwrite) | `ls > filelist.txt`            |      |            |
| `>>`     | Redirect stdout to a file (append)    | `echo "hello" >> filelist.txt` |      |            |
| `<`      | Redirect stdin from a file            | `sort < unsorted.txt`          |      |            |
| `2>`     | Redirect stderr to a file             | `ls /fake 2> errors.txt`       |      |            |
| `2>&1`   | Redirect stderr to stdout             | `command > output.txt 2>&1`    |      |            |
| \`       | \`                                    | Pipe stdout to another command | \`ls | grep txt\` |

& → Used with redirection to signal that a file descriptor is being used 

🔹 File Descriptors in Detail
0 → stdin
Reads input from user or file

1 → stdout
Prints normal output

2 → stderr
Prints error messages
# Redirect stdout to one file and stderr to another
command > normal_output.txt 2> error_output.txt
# Redirect output nowhere
>/dev/null


