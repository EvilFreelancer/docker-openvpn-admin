FROM php:7.1-fpm

ARG BUILDDEPS
ARG MODULES

# Install dependecies and clean the cache
RUN apt-get update
RUN apt-get install -y ${BUILDDEPS} --no-install-recommends
RUN rm -rf /var/lib/apt/lists/*

# Build the GD module
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr --with-freetype-dir

# Install modules
RUN docker-php-ext-install ${MODULES}

# Make the mount point clean
RUN rm -rf /var/www/html/*
