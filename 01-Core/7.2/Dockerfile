FROM php:7.2-fpm
MAINTAINER cwiegman@ufl.edu

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y \
    libxml2-dev \
    libmagickwand-dev \
    ssmtp \
    mysql-client \
    imagemagick

RUN echo "mailhub=mailcatcher:1025\nUseTLS=NO\nFromLineOverride=YES" > /etc/ssmtp/ssmtp.conf

RUN docker-php-ext-install -j$(nproc) \
    mysqli

RUN pecl install imagick \
    && docker-php-ext-enable imagick

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd

RUN curl -L https://phar.phpunit.de/phpunit.phar > /tmp/phpunit.phar \
    && chmod +x /tmp/phpunit.phar \
    && mv /tmp/phpunit.phar /usr/local/bin/phpunit

ADD php.ini /usr/local/etc/php/php.ini
ADD xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

ADD xdebug-listen-on.sh /usr/local/bin/xlon.sh
RUN chmod +x /usr/local/bin/xlon.sh

ADD xdebug-listen-off.sh /usr/local/bin/xloff.sh
RUN chmod +x /usr/local/bin/xloff.sh

RUN apt-get remove -y build-essential libz-dev
RUN apt-get autoremove -y
RUN apt-get clean

COPY start-container.sh /usr/local/bin/start-container
RUN chmod +x /usr/local/bin/start-container

CMD ["start-container"]
