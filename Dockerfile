FROM ghcr.io/sw-in-containers/php-fpm:main as build

COPY ./install.sh ./

USER root
RUN chmod +x ./install.sh && \
    ./install.sh && \
    mv composer.phar /usr/local/bin/composer

USER shopware
