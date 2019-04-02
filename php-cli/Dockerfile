FROM php:7.3-zts

RUN apt-get update && \
    apt-get install -y wget zip && \
    apt-get clean
RUN cd /tmp && \
    wget https://github.com/krakjoe/pthreads/archive/master.zip && \
    unzip master.zip && \
    cd pthreads-master && \
    phpize && ./configure && make && make install && docker-php-ext-enable pthreads && \
    cd /tmp rm -rf master.zip pthreads-master
RUN php -m
