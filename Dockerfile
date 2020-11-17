FROM debian as repo

RUN apt update && apt install -y git

WORKDIR /var/www/html

RUN git clone https://github.com/webpwnized/mutillidae.git mutillidae && rm -rf mutillidae/.git

COPY ./.htaccess mutillidae/.htaccess
COPY ./database-config.inc mutillidae/includes/database-config.inc

FROM php:7.4-apache

RUN apt update \
    && apt search libxml \
    && apt install -y curl libcurl4-openssl-dev libxml2-dev libonig-dev \
    && apt clean -y 

RUN docker-php-ext-install curl mbstring xml pdo pdo_mysql mysqli

COPY --from=repo /var/www/html/mutillidae /var/www/html/mutillidae
