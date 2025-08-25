# 🐧 permissions
- Setuid
  - When a process is started, it runs using the starting user's UID and GID
  - setuid = Set User ID upon execution
  - -rwsr-xr-x  1 root  root  /usr/bin/passwd
  - ping -> uses root user
  - chsh -> Change shell
  - setuid files are an attack surface
  - Noy honored on shell scripts.

# 🐧 Octal permissions
```bash
setuid      setgid      sticky
  0           0           0       value for off
  1           1           1       Binary value for ON
  4           2           1       Base 10 value for ON
```

- Adding the setuid attribute
```bash
chmod u+s /path/to/file
chmod 4755 /path/to/file # 4 -> for setuid
```

- Remove the setuid attribute
```bash
chmod u-s /path/to/file
chmod 0755 /path/to/file # 0 -> to disable the setuid
```
- finding setuid files
```bash
find / -perm /4000 -ls
find / -perm +4000 -ls # used in old way
```
- Only the owner should edit setuid files
```bash
              Symbolic        Octal
Good        -rwsr-xr-x        4755
Bad         -rwsrwxr-x        4775
Really Bad  -rwsrwxrwx        4777
```