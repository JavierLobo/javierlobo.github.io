---
title: "Instalación de Java jdk/jre en Ubuntu"
subtitle: ... or not to be?
date: 2020-11-25
author: Javier Lobo
categories: 
- java
- jre
- jdk
- kubuntu
- ubuntu
- linux
img: java-jvm-jdk.jpg
thumb: jekyll-thumbs.png
layout: nopost
gh-repo: JavierLobo/blog
gh-badge: [star, fork, follow]
comments: true
---
![](../assets/img/blog/java-jvm-jdk.jpg "Portada del articulo de la instalacion de la java jdk en Ubuntu")
En esta guía te mostraré como instalar diversas versiones del jre (Java Runtime Environment) y el jdk (Java Developer Kit) en una distribución de linux como es Ubuntu, Xubuntu u otra similar, tambien te mostraré un par de opciones de como elegír una versión segun necesites o te convenga para desarrollar o utilizar el Java Runtime para la ejecución de software.
<!-- more -->
> La Máquina Virtual de Java (JVM) y java son elementos necesarios para el funcionamiento de las aplicaciones Tomcat, Jetty, Glassfish, Cassandra, Jenkins y por supuesto para desarrollar con Eclipse y NetBeans.
## Instalando los paquetes desde un repositorio
Lo primero que debemos hacer es actualizar nuestro sistema con las ultimas versiones, para eso utilizaremos el comando apt-get y con los parametros update y upgrade.

    $ sudo apt-get update && sudo apt-get upgrade -y

## Desinstalación de las vesiones previas
En algún momento te interesará saber que versión tienes instalada en el sistema para decidir si debes eliminarla o no, por lo que el parametro "-version" nos sacará de dudas.

    $ java -version

Ya puestos manos a la obra eliminaremos cualquier rastro del sdk o del jdk en cualquiera de sus versiones tecleando, o copiando y pegando en la consola, los siguientes comandos.

* comprobamos los paquetes que tenemos instalados en el sistema, si hay alguno lo mostrará.
```
    $ sudo dpkg --list | grep -i jdk
```
* Desinstalamos los paguetes
````
$ sudo apt-get purge openjdk*

$ sudo apt-get purge icedtea-* openjdk-*
````

* Comprobamos que todos los paguetes han sido eliminados.

```
$ sudo dpkg --list | grep -i jdk
```

Una vez que se han eliminado todos los archivos innesesarios, estaremos preparados para la instalación de la versión que necesitemos.

## Instalando OpenJdk 8







Añadimos la dependencia para descargar y mantener actualizada nuestra version del jdk.

    $ sudo add-apt-repository ppa:webupd8team/java  

    $ sudo apt update  

    $ sudo apt-get install openjdk-8-jdk

sudo nano /etc/environment


JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"



## Instalando Java 8


## Instalando Java 9

apt install default-jre
apt install openjdk-11-jre-headless
apt install openjdk-8-jre-headless
apt install openjdk-9-jre-headless

### *- Instalando Java 11*

    $ sudo add-apt-repository ppa:webupd8team/java  

    $ sudo apt update

    $ sudo apt-get install openjdk-8-jdk


## Instalando los paquetes manualmente



## Preparando el directorio “Default”


## Desaciendo cambios
para cuando metes la pata y quieres volver a como estabas antes o algo así

## slfkjasl


## Fuentes
- java 8:
- java 9:
- java 10:
- java 11:


http://www.laurafolgado.es/blog/2015/10/22/instalar-maven-en-windows/
https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-on-ubuntu-18-04