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

- Resolving DNS Name (host, dig)
```bash
host www.mycompany.com
host 1.2.3.5
```
> The /etc/hosts file
>> Format
>>> IP FQDN alias(es)
>>> 10.11.0.1 webprod01.mycompany.com webprod01
>> Now you can refer the host by name.
>>> webprod01.mycompany.com OR webprod01
>> /etc/hosts is local to your linux system. it does not propagate to rest of the network