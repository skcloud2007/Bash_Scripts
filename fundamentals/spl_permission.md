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