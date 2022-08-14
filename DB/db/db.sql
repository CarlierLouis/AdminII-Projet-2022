CREATE DATABASE wt_db;

CREATE USER admin IDENTIFIED WITH mysql_native_password BY 'Password123#@!';

GRANT ALL PRIVILEGES ON wt_db.* TO 'admin';

CREATE TABLE jouets (id INTEGER NOT NULL AUTO_INCREMENT, nom varchar(40) NOT NULL, prix INTEGER NOT NULL, CONSTRAINT pk_jouets PRIMARY KEY(id));

INSERT INTO jouets (nom, prix)
VALUE ('toupie', 5), ('train', 20), ('yo-yo', 4);