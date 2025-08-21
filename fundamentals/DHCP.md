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

- Configuring a DHCP client - RHEL
```bash
ifconfig -a OR ip link
/etc/sysconfig/network-scripts/ifcfg-DEVICE
/etc/sysconfig/network-scripts/ifcfg-eth0
/etc/sysconfig/network-scripts/ifcfg-enp5s2
# edit the file (whatever is present in your system) with below content
BOOTPROTO=dhcp
```
- Configuring a DHCP client - UBUNTU
```bash
/etc/network/interfaces
## Add the below content
auto eth0
iface eth0 inet dhcp
```
- Assigning a static IP address - RHEL
  - /etc/sysconfig/network-script/ifcfg-eth0
```bash
DEVICE=eth0
BOOTPROTO=static
IPADDR=10.109.155.174
NETMASK=255.255.255.0
NETWORK=10.109.155.0
BROADCAST=10.109.155.255
GATEWAY=10.109.155.1
ONBOOT=yes
```