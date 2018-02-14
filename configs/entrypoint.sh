#!/bin/bash

echo "
Available commands:

- install-full - Full instalation MySQL+App+OpenVPN
- install      - Install only OpenVPN

# Unstable
- reinstall    - Reinstall OpenVPN (Warning! All content of /etc/openvpn will be erased!)
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
    "reinstall")
        rm -R /etc/openvpn/*
        /var/www/html/scripts/install-openvpn.sh
        ;;
    "update")
        /var/www/html/scripts/update.sh
        ;;
    "deinstall")
        /var/www/html/scripts/deinstall.sh
        ;;
    *)
        /etc/init.d/openvpn start
        /etc/init.d/php7.0-fpm start
        sleep inf
        ;;
esac
