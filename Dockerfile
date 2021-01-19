FROM php:7.4-cli-alpine3.12

RUN apk add --no-cache --virtual git

RUN wget https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/v2.18.0/php-cs-fixer.phar -O php-cs-fixer \
    && chmod a+x php-cs-fixer \
    && mv php-cs-fixer /usr/local/bin/php-cs-fixer

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]