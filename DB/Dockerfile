# Image mysql offcielle
FROM mysql:8.0.30-debian

# Installation des outils
RUN apt update && apt-get upgrade -y
RUN apt-get install vim -y

# Définition du working directory
WORKDIR /etc/

# Copie du fichier sql de création de la db et des tables nécessaires
COPY db.sql /etc/db/db.sql
