FROM ubuntu:15.04

MAINTAINER Antonio Manuel Hernández Sánchez

RUN echo "INSTALLING PHALCON"; \
apt-get update && apt-get install -y python-software-properties software-properties-common ; \
apt-add-repository -y ppa:phalcon/stable; \
apt-get update && apt-get install -y php5-phalcon php5-cli

RUN echo "INSTALLING COMPOSER";apt-get install -y curl; \
curl -sS https://getcomposer.org/installer | php;mv composer.phar /usr/local/bin/composer

RUN echo "INSTALLING MYSQL";apt-get install -y mysql-server-5.6
