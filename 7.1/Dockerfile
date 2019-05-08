FROM m9rco/alpine:3.8

LABEL maintainer="m9rco <pushaowei0727@gmail.com>"
ENV TIME_ZONE PRC


# ------------------------- 设置时区
RUN apk add --no-cache -U tzdata \
    && ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime \
    && echo "${TIME_ZONE}" > /etc/timezone


# ------------------------- 镜像源转到中国科技大学
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
      && apk update

RUN apk add -U \
	# Packages
    tini \
    php7 \
    php7-dev \
    php7-common \
    php7-apcu \
    php7-bcmath \
    php7-xmlwriter \
    php7-ctype \
    php7-curl \
    php7-exif \
    php7-iconv \
    php7-intl \
    php7-json \
    php7-mbstring \
    php7-opcache \
    php7-openssl \
    php7-pcntl \
    php7-pdo \
    php7-mysqlnd \
    php7-pdo_mysql \
    php7-pdo_pgsql \
    php7-pdo_sqlite \
    php7-gd \
    php7-phar \
    php7-posix \
    php7-session \
    php7-xml \
    php7-simplexml \
    php7-mcrypt \
    php7-xsl \
    php7-zip \
    php7-zlib \
    php7-dom \
    php7-redis \
    php7-fpm \
    php7-tokenizer \
	# Clean up
    && ln -sf /usr/bin/php-fpm7  /usr/bin/php-php-fpm \
    && ln -sf /usr/bin/php-config7  /usr/bin/php-config \
    && ln -sf /usr/bin/phpize7 /usr/bin/phpize \
    && ln -sf /usr/bin/php7 /usr/bin/php \
    && rm -rf /var/cache/apk/*

COPY rootfs /

ENTRYPOINT ["/sbin/tini", "--"]

CMD ["/usr/sbin/php-fpm7", "-R", "--nodaemonize"]

EXPOSE 9000

WORKDIR /app
