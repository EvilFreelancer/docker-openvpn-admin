#!/bin/bash

env

echo "$(pwd) $0 $1"

case "$1" in
    install)
    /var/www/html/scripts/install-openvpn.sh
    ;;
    restart|stop|start)
    /etc/init.d/openvpn "$1"
    ;;
    *)
    /etc/init.d/openvpn start
    /etc/init.d/php7.0-fpm start
    sleep inf
    ;;
esac
