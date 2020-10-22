### docker isc-dhcp-server

docker run -it --rm --init --net host -v "path/data":/etc/dhcp rabbired/dhcpd "ethx"

## docker-compose
dhcpd:
  image: rabbired/dhcpd
  net: host
  volumes:
    - "path/data":/etc/dhcp
    # Optional
  command:
    - "ethx"
