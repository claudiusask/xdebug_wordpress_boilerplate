# check this if 403 Forbidden
FROM wordpress:5-php7.2-apache

RUN pecl install -f xdebug \
  && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini;

# use this if no 403 Forbidden issue
# FROM php:7.2-apache
# RUN pecl install -f xdebug \
# && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini;