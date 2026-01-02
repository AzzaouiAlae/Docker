FROM composer:latest

WORKDIR /var/www/html

COPY createLaravel.sh /var/www/

COPY env/.env /var/www/

CMD [ "/var/www/createLaravel.sh" ]
