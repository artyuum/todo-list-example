FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
    gnupg \
    g++ \
    procps \
    openssl \
    git \
    unzip \
    zlib1g-dev \
    libzip-dev \
    libfreetype6-dev \
    libpng-dev \
    libjpeg-dev \
    libicu-dev  \
    libonig-dev \
    libxslt1-dev \
    acl

RUN docker-php-ext-install zip intl gd pdo_mysql

RUN pecl install pcov && docker-php-ext-enable pcov

RUN sed -i 's/www-data:x:33:33/www-data:x:1000:1000/' /etc/passwd && \
    sed -i 's/www-data:x:33:/www-data:x:1000:/' /etc/group

COPY --from=composer:lts /usr/bin/composer /usr/local/bin/composer

RUN chown -R www-data: /var/www/

WORKDIR /usr/src/app

USER www-data