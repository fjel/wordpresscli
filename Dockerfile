FROM wordpress:php7.4-fpm-alpine
RUN set -eux; \
    curl -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar; \
    chmod +x /usr/local/bin/wp; \
    # Update less for wp-cli to work properly
    apk --update add less;