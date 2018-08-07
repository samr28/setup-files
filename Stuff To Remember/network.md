# Network

## Update adapter in ubuntu 18.04+

First find the address of the new adapter `(Y)` ([related askubuntu](https://askubuntu.com/questions/654820/how-to-find-pci-address-of-an-ethernet-interface))
```
lshw -class network -businfo
```


`(X)` = address of **old** adapter

`(Y)` = address of **new** adapter

```
sudo sed -i 's/enp(X)s0/enp(Y)s0/g' /etc/netplan/50-cloud-init.yaml

sudo /lib/netplan/generate && sudo systemctl restart systemd-networkd
```
