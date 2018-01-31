#!/bin/bash

echo "
Available commands:

- install-full - Full instalation MySQL+App+OpenVPN
- install      - Install only OpenVPN
- stop|start   - Stop or start OpenVPN daemon
- restart      - Restart OpenVPN

# Unstable
- deinstall    - Remove application and whole settings
- update       - Renew the database from migrations

If command is not set, openvpn and php-fpm daemons will be started.
"

case "$1" in
    "install-full")
        /var/www/html/scripts/install.sh
        ;;
    "install")
        /var/www/html/scripts/install-openvpn.sh
        ;;
    "update")
        /var/www/html/scripts/update.sh
        ;;
    "deinstall")
        /var/www/html/scripts/deinstall.sh
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
