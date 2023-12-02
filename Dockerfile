FROM php:8.2-fpm-alpine
MAINTAINER Shandyrov Askar <shandyrov@gmail.com>

COPY src /src

RUN apk add --no-cache \
        icu-dev icu-libs zlib-dev g++ make automake autoconf libzip-dev \
        freetype-dev \
        libjpeg-turbo-dev \
        libpng-dev \
        libwebp-dev \
        freetype-dev \
        php-gd \
        php-json \ 
        php-openssl \
        php-pdo \
        php-pdo_mysql \
	php-session \
        php-simplexml \
        php-tokenizer \
        php-xml

RUN docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg --with-webp
RUN docker-php-ext-install gd

WORKDIR /src


