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
- Adding the setuid and setgid attributes
```bash
chmod u+g /path/to/file
chmod 6755 /path/to/file
```
- Removing the setgid attribute
```bash
chmod g-s /path/to/file
chmod 0755/path/to/file
```

- setgid on directories
  - using setgid on a directory causes new files and subdirectories created within it to inherit.

# 🐧 The Sticky Bit
- Use on a directory to only allow the owner of the file/directory to delete it.
-  Used on /tmp
  - drwxrwxrwt  10  root  root  4096  Feb 1 09:47 /tmp

- Adding the Sticky Bit
```bash
chmod o+t /path/to/directory
chmod 1777 /path/to/directory
```
- Removing the Sticky Bit
```bash
chmod o-t /path/to/directory
chmod 0777 /path/to/directory
```