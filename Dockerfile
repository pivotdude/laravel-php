# Устанавливаем базовый образ
FROM php:8.1

RUN apt-get update && apt-get install -y \
        curl \
        wget \
        git \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libzip-dev \
        unzip \
    && docker-php-ext-install -j$(nproc) mysqli pdo pdo_mysql

# Устанавливаем Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer