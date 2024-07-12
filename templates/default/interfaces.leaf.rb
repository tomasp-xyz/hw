# Example /etc/network/interfaces for leaf switch
auto lo
iface lo inet loopback

auto swp1
iface swp1
  address 10.0.1.1/24
