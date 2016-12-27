# PHPUnit with MySQL client
#
# VERSION               0.0.1

FROM php:7-cli
MAINTAINER Anton Belonovich <tralick@gmail.com>

RUN apt-get update && apt-get install -y mysql-client libmysqlclient-dev curl git libfreetype6-dev libjpeg62-turbo-dev libmcrypt-dev libpng12-dev
RUN docker-php-ext-install iconv mcrypt zip opcache mysqli pdo_mysql gd
