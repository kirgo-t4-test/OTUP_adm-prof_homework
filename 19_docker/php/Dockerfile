FROM alpine

ENV PHP_SCRIPT_SOURCE="/root/phpscripts/"

RUN apk update && apk upgrade && apk add php7 php7-fpm && \
sed -i 's/listen = 127.0.0.1:9000/listen = 0.0.0.0:9000/' /etc/php7/php-fpm.d/www.conf && \
mkdir $PHP_SCRIPT_SOURCE

COPY index.php ${PHP_SCRIPT_SOURCE}index.php

# Сначала копируем скрипты php в папку, определенную в переменной окружения PHP_SCRIPT_DIR
CMD [[ ! -z $PHP_SCRIPT_DIR ]] && mkdir -p $PHP_SCRIPT_DIR && cp -r ${PHP_SCRIPT_SOURCE}* $PHP_SCRIPT_DIR && php-fpm7 -F -R 