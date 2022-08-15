FROM mysql:8.0.30-debian

RUN apt update && apt-get upgrade -y
RUN apt-get install vim -y

WORKDIR /etc/

COPY db.sql /etc/db/db.sql