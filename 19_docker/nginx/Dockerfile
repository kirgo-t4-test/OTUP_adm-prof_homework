FROM alpine

RUN apk update && apk upgrade && apk add nginx gettext && chown -R nginx: /etc/nginx/

COPY default.template /etc/nginx/http.d/default.template

USER nginx

# Формируем конфигурационный файл из шаблона, заполняя переменные окружения PHP_SCRIPT_DIR PHP_SERVER
# PHP_SCRIPT_DIR - путь к скриптам .php в конейтере с php
# PHP_SERVER - адрес контейнера php
CMD envsubst '$PHP_SCRIPT_DIR;$PHP_SERVER' < /etc/nginx/http.d/default.template > /etc/nginx/http.d/default.conf && nginx -g 'daemon off;'