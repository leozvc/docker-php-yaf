FROM php:5.6-fpm
WORKDIR /usr/src/php/ext/

#install git
RUN apt-get update && apt-get install -y git-core

#compile Yaf
RUN git clone -b php5 https://github.com/laruence/php-yaf 
RUN docker-php-ext-configure php-yaf
RUN docker-php-ext-install php-yaf

#clean up
RUN apt-get clean
CMD ["php-fpm"]
