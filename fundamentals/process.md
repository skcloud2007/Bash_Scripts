# 🐧 Linux Process

```bash
ps                # Display process status
ps -e             # Everything, All Process
ps -f             # Full Format listing
ps -u <username>  # Display username's process
ps -p <PID>       # Display information of PID
```

```bash
ps -ef            # Display all process full
ps -eH            # Display a process tree
ps -e --forest    # " " " " " " " " " " "
```

```bash
pstree            # Display processes in tree format
top               # Interactive process viewer
htop              # "  "  "  "   "    "   "    "
```

# 🐧 Background & foreground
```bash
<command> &       # Start command in background.
CTRL-c            # Kill the foreground process
CTRL-z            # Suspend the foreground process
```

```bash
bg [%num]         # Background a suspended process
fg [%num]         # foreground a background process
kill              # Kill a process by Job PID or Number
jobs [%num]       # List Jobs
```

```bash
kill [-sig] pid   # Send a signal to the process
kill -l           # Display a list of Signal

# Example
kill <PID>
kill -15 <PID>   #  15 is type of kill
kill -TERM <PID> # kill -9 <PID>