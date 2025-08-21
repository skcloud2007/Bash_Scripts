# 🐧 DHCP

- Network Ports
```bash
When a service starts it binds itself to a port.
Ports 1-1023 are well known ports
> 22 SSH
> 25 SMTP
> 80 HTTP
> 143 IMAP
> 389 LDAP
> 443 HTTPS
```

- DHCP servers assign IP address to DHCP clients
  - IP Address
  - netmask
  - gateway
  - DNS Servers
- Each IP is leased from the pool of IP address the DHCP server manages.
  - The lease expiration time is configurable on the DHCP server. (1 Hr, 1 Day, 1 week, etc)
  - The client must renew the lease if it wants to keep using the IP address. If no renewal is recieved, the IP is available to other DHCP clients.
