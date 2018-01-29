# Docker + OpenVPN + Web Admin

## How to start

Clone the repo and chose the WIP (Work In Progress) branch:

    git clone https://github.com/Chocobozzz/OpenVPN-Admin.git
    cd OpenVPN-Admin
    git checkout feature/refractoring

Copy docker-compose config from example:

    cp docker-compose.yml.dist docker-compose.yml

Now you need prepare your OpenVPN-Admin environment (of `php` service)
and change parameters to which you need:

    nano docker-compose.yml

Install all submodules:

    git submodules init
    git submodules update

Build composition of containers:

    docker-compose build

Now you need install your OpenVPN server:

    docker-compose run app install

You can find all your certs and configurations of OpenVPN inside [openvpn] folder.

Start the composition of containers:

    docker-composer up -d

## OpenVPN tools

Install OpenVPN into the container:

    docker-compose run app install

OpenVPN daemon commands:

    docker-compose run app start
    docker-compose run app stop
    docker-compose run app restart

## About folders

* [configs] - Dockerfile build context, with nginx and PHP configuration files inside
* [database] - root folder of local MySQL database
* [OpenVPN-Admin] - sources of web application
* [openvpn] - folder with all configurations of OpenVPN
* [logs] - a lot of logs of daemons from containers

# RoadMac

* Need to fix bug with iptables and routes

# Links

* https://github.com/Chocobozzz/OpenVPN-Admin
