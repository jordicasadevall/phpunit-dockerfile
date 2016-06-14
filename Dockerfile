# PHPUnit with MySQL client
#
# VERSION               0.0.1

FROM php:7-cli
MAINTAINER Anton Belonovich <tralick@gmail.com>

RUN apt-get update && apt-get install -y mysql-client libmysqlclient-dev curl git libfreetype6-dev libjpeg62-turbo-dev libmcrypt-dev libpng12-dev
RUN docker-php-ext-install iconv mcrypt zip opcache mysqli pdo_mysql gd

#COMPOSER
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

#PHPUNIT
RUN composer global require phpunit/phpunit:^4.8

ENV PATH /root/.composer/vendor/bin:$PATH

RUN ln -s /root/.composer/vendor/bin/phpunit /usr/bin/phpunit