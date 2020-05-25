FROM php:7.3-apache
RUN apt-get update 
RUN apt-get install -y git
RUN docker-php-ext-install pdo 
RUN docker-php-ext-install pdo_mysql 
RUN docker-php-ext-install mysqli
RUN a2enmod rewrite
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php --install-dir=. --filename=composer
RUN mv composer /usr/local/bin/
RUN curl -L https://github.com/docker/compose/releases/download/1.8.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose
RUN apt-get update
RUN apt-get remove docker docker-engine docker.io
RUN apt install docker.io
RUN systemctl start docker
RUN systemctl enable docker
COPY src/. /var/www/html/

