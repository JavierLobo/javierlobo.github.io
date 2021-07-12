---
layout: nopost
title: Como instalar MariaDB en Ubuntu 18.04 LTS o Server
subtitle: 
image: /image/jekyll-now-theme-screenshot.jpg
gh-repo: JavierLobo/blog
gh-badge: [star, fork, follow]
tags: [MariaDB, Ubuntu, Linux]
comments: true
---

![](../images/portada-mariadb.jpg "Portada del articulo de la instalacion de MongoDB en Ubuntu")

# Que es MariaDB

Bla vla bla

## Indice
----
* Preparando el sistema: Instalacion y primeros pasos.

## Preparando el sistema
## Desinstalando lo instalado 

Primero hay que realizar una copia de la base de datos, si es que la necesitamos.

    mysqldump -u {user} -p {database} > /home/$USER/Documents/backup.sql

To remove any trace of mariadb installed through apt-get:

    sudo service mysql stop
    sudo systemctl stop mysql

    sudo apt-get remove --purge "mysql*"
    sudo apt-get remove --purge "maria*"
    sudo apt-get purge mariadb-*


    sudo apt-get autoremove && sudo apt-get autoclean -y

    sudo rm -rf /var/lib/mysql*
    sudo rm -rf /etc/mysql/

and it is all gone. Including databases and any configuration file.

To check if anything named mysql is gone do a

    sudo updatedb

and a

    locate mysql

It should be fairly empty (maybe some manual pages or a connector). If though you see a my.cnf amongst the results remove that too.


## Instalacion del repositorio de MariaDB

Actualizar el sistema e instalar 

    sudo apt update && sudo apt upgrade -y
    sudo apt-get install mariadb-server

    sudo apt-get install software-properties-common

Para poder instalar MariaDB deberemos instalar la clave publica con la que se firman los paquetes y añadir el repositorio oficial de Ubuntu 18.04

    sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
    sudo add-apt-repository \'deb [arch=amd64,arm64,ppc64el] http://mirror.one.com/mariadb/repo/10.4/ubuntu bionic main'

    sudo apt update && sudo apt upgrade -y
    sudo apt install mariadb-server -y

* Utilizar el comando “mysql_secure_installation“, que nos ayudará a asegurar la instalación:

    sudo mysql_secure_installation


## Configuring MariaDB for Remote Client Access 

    sudo mysql -u root -p

    sudo 

    SELECT User, Host FROM mysql.user WHERE Host <> 'localhost';

    GRANT ALL PRIVILEGES ON *.* TO 'root'@'192.168.1.%' IDENTIFIED BY 'locutus' WITH GRANT OPTION;

## Preparamos la base de datos 

    MariaDB [(none)]> create database clientesDB;

    MariaDB [(none)]> SHOW DATABASES;

    MariaDB [(none)]> select host, user, password from mysql.user;
    
    GRANT USAGE ON clientesDB.* TO 'usercliente'@'192.168.1.%' IDENTIFIED BY 'usercliente';
    GRANT USAGE ON clientesDB.* TO 'usercliente'@'localhost' IDENTIFIED BY 'usercliente';

    GRANT ALL PRIVILEGES ON clientesDB.* TO 'usercliente'@'192.168.1.%' IDENTIFIED BY 'usercliente' WITH GRANT OPTION;
    GRANT ALL PRIVILEGES ON clientesDB.* TO usercliente@localhost;

    select u.User,Db from mysql.user u,mysql.db d where u.User=d.User;

# Fuentes:

- https://askubuntu.com/questions/806107/remove-mariadb-mysql-databases
- https://www.buyprotheme.com/uninstall-mysql-from-ubuntu-and-install-mariadb/

- https://rm-rf.es/usuario-mysql-como-crear-borrar-y-asignar-privilegios/
- https://www.ochobitshacenunbyte.com/2019/03/26/instalar-mariadb-en-ubuntu-18-04/
- https://www.ochobitshacenunbyte.com/2018/11/15/listar-bases-de-datos-y-usuarios-en-mysql-y-mariadb/
- https://mariadb.com/kb/es/drop-user/

https://geekytheory.com/como-permitir-el-acceso-remoto-a-una-base-de-datos-mysql