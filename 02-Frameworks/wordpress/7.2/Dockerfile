FROM chriswiegman/php:7.2
MAINTAINER info@chriswiegman.com

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y \
    less subversion

RUN curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar > wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

RUN apt-get autoremove -y
RUN apt-get clean

RUN mkdir /var/www/.wp-cli && chmod 0777 /var/www/.wp-cli
