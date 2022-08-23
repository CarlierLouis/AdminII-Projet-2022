#Image ubuntu officielle
FROM ubuntu:latest

#Installation de bind9 et d'outils nécessaires pour le débugging
RUN apt update && apt upgrade -y && apt install bind9 bind9utils dnsutils net-tools -y

#Copie des fichiers à implémenter
COPY named.conf /etc/bind

COPY mes-b3.ephec-ti.be /etc/bind

#Exposition des ports 53 tcp et udp de l'image
EXPOSE 53/udp
EXPOSE 53/tcp

#Commande réalisé au démarage du conteneur
CMD ["named","-g"]
