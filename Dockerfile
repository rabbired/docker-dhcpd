FROM alpine:latest

RUN apk update && apk upgrade && apk add --no-cache dhcp
    
RUN ["touch", "/var/lib/dhcp/dhcpd.leases"] \
    && rm -rf /var/cache/apk/* \
    && rm -rf /root/.cache \
    && rm -rf /tmp/*

ENTRYPOINT ["/usr/sbin/dhcpd", "-4", "-f", "-d", "--no-pid", "-cf", "/etc/dhcp/dhcpd.conf"]
