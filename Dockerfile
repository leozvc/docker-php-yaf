FROM php:5.6-cli
MAINTAINER Leozvc <xxfs91@gmail.com>

LABEL Description="This image is used to start the yaf php framework"

ENV WORK_DATA /data/workdir
ENV PHP_EXT_DIR /usr/src/php/ext

WORKDIR $PHP_EXT_DIR

#install git
RUN apt-get update && apt-get install -y git-core

#compile Yaf
RUN git clone -b php5 https://github.com/laruence/php-yaf 
RUN docker-php-ext-configure php-yaf
RUN docker-php-ext-install php-yaf

#clean up
RUN apt-get clean

#php workdir
RUN mkdir -p $WORK_DATA
WORKDIR $WORK_DATA

ADD index.php ./
 
EXPOSE 80
CMD ["php", "-S", "0.0.0.0:80"]
