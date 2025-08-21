# 🐧 Network Troubleshooting
- Testing connectivity with ping
```bash
ping HOST
ping -c COUNT HOST
# example:
ping -c 3 google.com
```
- Check path/route via traceroute
```bash
traceroute -n google.com  # -n -->> to use IP address instead of DNS name

tracepath -n google.com   # it does not requires root privilege
```

- The netstat command
```bash
netstat
 -n   Display numerical addresses and ports
 -i   Display a list of network interfaces.
 -r   Display the route table (netstat -rn)
 -p   Display the PID and program uses
 -l   Display listening socket (netstat -nlp)
 -t   Limit the output to TCP (netstat -ntlp)
 -u   Limit the output to UDP (netstat -nulp)
```
- Packet sniffing with tcpdump
```bash
tcpdump 
  -n    Display numerical addresses and ports
  -A    Display ASCII (text) output
  -v    Verbose mode. produce more output
  -vvv  Even more verbose output
```
