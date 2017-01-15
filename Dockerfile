FROM ubuntu
MAINTAINER Christian R. Picone <ch.picone@gmail.com>

RUN apt-get update && apt-get install -y unzip php5.6

ADD https://github.com/clue/php-redis-server/archive/master.zip /php-redis-server.zip
RUN unzip php-redis-server.zip && mv php-redis-server-master php-redis-server
WORKDIR php-redis-server

ADD https://getcomposer.org/composer.phar /php-redis-server/composer.phar
#RUN php composer.phar install

RUN mkdir /jmeter
ADD http://apache.panu.it//jmeter/binaries/apache-jmeter-3.1.tgz /jmeter/apache-jmeter-3.1.tgz
RUN tar -xf /jmeter/apache-jmeter-3.1.tgz

#USER nobody
#EXPOSE 6379
#CMD php bin/redis-server.php
