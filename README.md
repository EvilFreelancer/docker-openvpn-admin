# Docker + OpenVPN + Web Admin

## How to start

Install all submodules:

    git submodules init
    git submodules update

Build composition of containers:

    docker-compose build

Generate configs and certificates of your OpenVPN server:

    docker-compose run --rm openvpn ovpn_genconfig -u udp://{vpn_server_address}
    docker-compose run --rm openvpn ovpn_initpki

Replace {vpn_server_address} with your server address, it could be
IP address (10.10.10.2) or domain name (vpn.server.com).

Start the composition of containers:

    docker-composer up -d

## OpenVPN

Generate client certificate:

    docker-compose run --rm openvpn easyrsa build-client-full {client_name} nopass

Generate client config

    docker-compose run --rm openvpn ovpn_getclient {client_name} > certificate.ovpn

# Links

    * https://github.com/Chocobozzz/OpenVPN-Admin
