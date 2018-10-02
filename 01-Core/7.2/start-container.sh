#!/usr/bin/env bash

sed -i "s/xdebug\.remote_host\=.*/xdebug\.remote_host\=$XDEBUG_HOST/g" /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

php-fpm