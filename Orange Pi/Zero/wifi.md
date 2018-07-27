## Modified from: https://gist.github.com/LuisHCK/02fc5e441dd4cda9951171286542dbb3

### Copy defaults

```
sudo cp /etc/network/interfaces /etc/network/interfacesoriginal
sudp rm /etc/network/interfaces
```
### Paste into `/etc/network/interfaces` (`sudo vim /etc/network/interfaces`)
```
auto lo
iface lo inet loopback

auto eth0
allow-hotplug eth0
iface eth0 inet dhcp

allow-hotplug wlan0
iface wlan0 inet manual
wpa-roam /etc/wpa_supplicant/wpa_supplicant.conf
iface default inet dhcp
```
### Paste into `/etc/wpa_supplicant/wpa_supplicant.conf` (`sudo vim /etc/wpa_supplicant/wpa_supplicant.conf`)
```
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
```

#### For secure WiFi:
```
network={
ssid="SECURE-WIFI"
psk="yourpassword"
}
```
#### Or for unsecured WiFi:
```
network={
ssid="OPEN-WIFI"
key_mgmt=NONE
}
```

### Reboot system (`sudo reboot`)
