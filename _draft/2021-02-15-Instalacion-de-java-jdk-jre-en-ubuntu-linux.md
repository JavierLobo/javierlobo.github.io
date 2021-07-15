---
title: "Instalación de Java en Ubuntu"
subtitle:
date: 2021-02-15
author: Javier Lobo
categories: 
- java
- jre
- jdk
- kubuntu
- ubuntum
- linux
img: java-jvm-jdk.jpg
thumb: thumb-java.png
layout: post
gh-repo: JavierLobo/blog
gh-badge: [star, fork, follow]
comments: true
---
En esta guía te mostraré como instalar diversas versiones del jre (Java Runtime Environment) y el jdk (Java Developer Kit) en una distribución de linux como es Ubuntu, Xubuntu u otra similar, tambien te mostraré un par de opciones de como elegír una versión segun necesites o te convenga para desarrollar o utilizar el Java Runtime para la ejecución de software.
<!--more-->
> La Máquina Virtual de Java (JVM) y java son elementos necesarios para el funcionamiento de las aplicaciones Tomcat, Jetty, Glassfish, Cassandra, Jenkins y por supuesto para desarrollar con Eclipse y NetBeans.

## Actualizando el sistema antes de comenzar
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

```
$ sudo apt-get purge openjdk*
```
```
$ sudo apt-get purge icedtea-* openjdk-*
```
* Comprobamos que todos los paguetes han sido eliminados.

```
$ sudo dpkg --list | grep -i jdk
```

Una vez que se han eliminado todos los archivos innesesarios, estaremos preparados para la instalación de la versión que necesitemos.

## Buscando los paquetes del OpenJdk en el repositorio de Ubuntu
Para buscar los paquetes que necesitamos instalar utilizaremos el parámetro ***search*** en el comando ***apt*** como te muestro abajo.
```
sudo apt search ^openjdk-8
```
Debería mostrar un listado de los paquetes similar a esto.

![](../../assets/img/blog/java-jvm-jdk-listado.png "Portada del articulo de la instalacion de la java jdk en Ubuntu")


```
$ sudo apt-cache search ^openjdk-8
```

![](../../assets/img/blog/java-jvm-jdk-listado-cache.png "Portada del articulo de la instalacion de la java jdk en Ubuntu")

## Distintas versiones de Java JDK y JRE
Ahora ya estamos listos para instalar una version del Jdk o del Jre, por lo que debemos elegir una de las versiones de java con la que trabajaremos, bueno, una o mas de una.
* [OpenJDK 8 y OpenJRE 8][OpenJdkJre8]
* Oracle Java 8 (Jdk / Jre)
* Oracle Java 11
* Oracle Java 15

## Añadiendo las variables de entorno "JAVA_HOME" y "PATH"
Configuración de la ruta de Ubuntu openjdk 8 java_home: Una vez que los pasos anteriores se hayan completado con éxito, debemos configurar las variables de entorno "JAVA_HOME" y "PATH". Ingrese los siguientes comandos para configurar sus variables de entorno. Asegúrese de que sus variables de entorno apunten a una instalación válida de JDK en su Ubuntumachine
## Referencias
En los siguientes enlaces puedes encontrar mas información sobre java.

* [Java SE Downloads][oraclejava]

#### Projecto OpenJdk 8
* [Página principal del proyecto OpenJdk 8][openjdk8proj]
* [Repositorio del proyecto OpenJdk][openjdk8]

#### Oracle Java 8
* [Java Platform Standard Edition 8 Documentation][JavaPSE8Doc]
* [Java SE Development Kit 8 Documentation Download][JavaSEDK8]
* [Java Platform Standard Edition 8 API Specification][JavaPSE9Spec]

[oraclejava]: https://www.oracle.com/java/technologies/javase-downloads.html

[openjdk8proj]: https://openjdk.java.net/projects/jdk8/
[openjdk8]: https://github.com/openjdk/

[JavaPSE8Doc]: https://docs.oracle.com/javase/8/docs/
[JavaSEDK8]: https://www.oracle.com/java/technologies/javase-jdk8-doc-downloads.html
[JavaPSE9Spec]: https://docs.oracle.com/javase/8/docs/api/



[OpenJdkJre8]: http://javierlobo.github.io/blog/Instalacion-de-java-8-en-ubuntu/




https://attacomsian.com/blog/change-default-java-version-ubuntu