---
layout: nopost
title: Como instalar y configurar OpenSSH en Ubuntu y no morir en el intento
subtitle: 
image: /image/jekyll-now-theme-screenshot.jpg
gh-repo: JavierLobo/blog
gh-badge: [star, fork, follow]
tags: [OpenSSH, Ubuntu, Linux]
comments: true
---
[![OpenSSH](../images/portada-openssh.gif "Portada del artículo de OpenSSH")](#)

# Como instalar y configurar OpenSSH en Ubuntu y no morir en el intento
En este tutorial vamos a ver como instalar y configurar la conexión SSH en Ubuntu sin que nos explote el Pc ni nada parecido. Deduzco que los pasos que te mostraré en este artículo no cambiarán mucho a lo largo del tiempo, si es así, házmelo saber en los comentarios para poder actualizarlo.

## ¿Que es OpenSSH?
Por OpenSSH (Open Secure Shell) es el conjunto de programas que utilizaremos para abrir una sesión de forma cifrada y segura en un servidor local o remoto a través de internet o una red local.

![](../images/ssh.jpg "Dibujo de como se conecta una sesión a través de OpenSSH") 

## Preparando el sistema
Como paso previo a cualquier instalación, deberemos actualizar el sistema con los nuevos paquetes que se hayan podido publicar en los repositorios. Para eso escribiremos en el terminal lo siguiente:

    $ sudo apt update && sudo apt upgrade -y

Al finalizar la actualización es conveniente limpiar los paquetes que ya no se utilicen, aunque esto es opcional a mí me gusta tener el sistema limpito.

    $ sudo apt autoremove

Una vez que ha terminado de actualizar el sistema, vamos al lio. 

## Instalar OpenSSH en Ubuntu
Lo primero que debemos decidir es que vamos a instalar, el servidor, el cliente o ambos. Supongamos que estamos instalando un servidor en internet y nos interesa conectarnos remotamente, pues instalaremos en ese servidor OpenSSH Server y si ya lo tenemos instalado nos mostrará el mensaje de que OpenSSH ya está en su versión más reciente.

    $ sudo apt-get install openssh-server

Si decides instalar el cliente de OpenSSH deberas instalar el siguiente comando.

    $ sudo apt-get install openssh-client

## Configurar OpenSSH en Ubuntu
El archivo de configuración que debemos modificar es el siguiente '/etc/ssh/sshd_config', en él realizaremos los siguientes cambios si los vemos necesarios. Usa el editor de texto con el que te sientas mas cómodo, 'vi', 'nano' u otro.

    $ sudo nano /etc/ssh/sshd_config

Busca la palabra 'port' para asignarle un puerto distinto al que viene por defecto. Puedes darle cualquier número que desees.

        Port 1234

## Conectando a nuestro servidor
Una vez terminada la configuración en el servidor, deberemos comprobar que todo funciona como esperamos. Introduciremos el siguiente comando, sea en windows o en linux, y responderemos a la pregunta que nos haga con 'yes'. Al comando 'ssh' le acompañan el parámetro '-p' que identifica al puerto y el parámetro 'root@86.54.54.12' que está dividido por el usuario en el equipo al que te vas a conectar y el servidor, al conectarte te pedirá la clave.

    $ ssh -p 1234 root@86.54.54.12

## Algunos problemas que 
###  


## Fuentes:
- https://www.openssh.com/manual.html

- https://es.wikipedia.org/wiki/OpenSSH

- https://www.sololinux.es/instalar-configurar-openssh-ubuntu/
