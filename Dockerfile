FROM ubuntu:16.04
MAINTAINER Christian R. Picone <ch.picone@gmail.com>

RUN apt-get install software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update && apt-get install -y --allow-unauthenticated unzip php5.6

RUN mkdir /jmeter
ADD http://apache.panu.it//jmeter/binaries/apache-jmeter-3.1.tgz /jmeter/apache-jmeter-3.1.tgz
RUN tar -xf /jmeter/apache-jmeter-3.1.tgz

ADD https://github.com/clue/php-redis-server/archive/master.zip /php-redis-server.zip
RUN unzip php-redis-server.zip && mv php-redis-server-master php-redis-server
WORKDIR php-redis-server

ADD https://getcomposer.org/composer.phar /php-redis-server/composer.phar
RUN php composer.phar install

USER nobody
EXPOSE 1974
CMD php bin/redis-server.php
