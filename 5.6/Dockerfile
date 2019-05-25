FROM m9rco/alpine:3.5

LABEL maintainer="m9rco <pushaowei0727@gmail.com>"

RUN apk add -U --no-cache \
    # Packages
    tini \
    php5 \
    php5-apcu \
    php5-bcmath \
    php5-ctype \
    php5-curl \
    php5-dom \
    php5-exif \
    php5-gd \
    php5-iconv \
    php5-intl \
    php5-json \
    php5-mysqli \
    php5-opcache \
    php5-openssl \
    php5-pcntl \
    php5-pdo_mysql \
    php5-pdo_pgsql \
    php5-pdo_sqlite \
    php5-phar \
    php5-posix \
    php5-xml \
    php5-xsl \
    php5-zip \
    php5-zlib \
    php5-fpm \
    php5-mcrypt \
    # Clean up
    && rm -rf /var/cache/apk/*

ADD rootfs /

ENTRYPOINT ["/sbin/tini", "--"]

CMD ["/usr/bin/php-fpm", "-R", "--nodaemonize"]

EXPOSE 9000

WORKDIR /app
