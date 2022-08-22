FROM php:7.2-apache

# Ajout de différents packages.
RUN apt update -y && apt upgrade -y 
RUN apt install -y dnsutils net-tools iputils-ping
RUN apt install -y curl 
RUN apt install vim -y
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli


# Copie des fichiers à implémenter dans le container docker "web".
COPY index.html /var/www/html/index.html
COPY index.php /var/www/b2b/index.php
COPY www.conf /etc/apache2/sites-available/www.conf
COPY b2b.conf /etc/apache2/sites-available/b2b.conf

# SSL
COPY cert.pem /etc/ssl/certs/cert.pem
COPY cert-key.pem /etc/ssl/certs/cert-key.pem

RUN a2enmod ssl
RUN service apache2 start
