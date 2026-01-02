#!/bin/sh

composer --ignore-platform-reqs create-project  --prefer-dist laravel/laravel .
mv /var/www/.env /var/www/html/.env