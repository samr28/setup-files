Copied from: https://gist.github.com/LuisHCK/02fc5e441dd4cda9951171286542dbb3


sudo cp /etc/network/interfaces /etc/network/interfacesoriginal
sudp rm /etc/network/interfaces
sudo nano /etc/network/interfaces
----------------------------------
COPY
----------------------------------
auto lo
iface lo inet loopback

auto eth0
allow-hotplug eth0
iface eth0 inet dhcp

allow-hotplug wlan0
iface wlan0 inet manual
wpa-roam /etc/wpa_supplicant/wpa_supplicant.conf
iface default inet dhcp
---------------------------------
Ctrl + O
Enter
Ctrl + X
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf

----------------------------------
COPY
----------------------------------
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1

network={
ssid="SECURE-WIFI"
psk="yourpassword"
}

network={
ssid="OPEN-WIFI"
key_mgmt=NONE
}
----------------------------------
Change based on your WiFi Settings
Ctrl + O
Enter
Ctrl + X
sudo reboot
