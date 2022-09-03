DEBIAN 11

Caminho: /etc/network/
sudo vim /etc/network/interfaces

script:

# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

# The loopback network interface
auto lo
iface lo inet loopback

The primary network interface → IMPORTANTE TER DESCOMENTADO ESSA LINHA, POIS
PRECISAMOS FIXAR UMA INTERFACE COMO SENDO PRIMÁRIA. NESSE CASO, A enp0s3
allow-hotplug enp0s3

# iface enp0s3 inet dhcp
auto enp0s3
iface enp0s3 inet static
address 192.168.2.226
netmask 255.255.255.0
network 192.168.2.0
broadcast 192.168.2.255
gateway 192.168.2.253

# iface enp0s8 inet dhcp
auto enp0s8
iface enp0s8 inet static
address 10.168.17.66
netmask 255.255.252.0
network 10.168.16.0
broadcast 10.168.19.255
gateway 10.168.18.254
