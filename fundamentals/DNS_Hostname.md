# 🐧

- Determine your IP Address

```bash
ip addr
ip a
ip address show #  OR
ip a s
ifconfig
```

- Hostname (DNS Hostname)
```bash
FQDN = Fully qualified domain name
    > webprod01.mycompany.com
TLD
    > .com, .net, .org
Domains
    >
Sub-domain
```

- Display hostname

```bash
$hostname     # webprod01
uname -n      # webprod01
$hostname -f  # webprod01.mycompany.com
```

- Setting the hostname

```bash
hostname webprod01
echo 'webprod01' > /etc/hostname
vi /etc/sysconfig/network
    HOSTNAME=webprod01
```