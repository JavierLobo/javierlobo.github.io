---
layout: nopost
title: Instalar maven en windows
image: /image/jekyll-now-theme-screenshot.jpg
subtitle: Each post also has a subtitle
gh-repo: JavierLobo/blog
gh-badge: [star, fork, follow]
tags: [maven, windows, java]
---

# ¿Que es Maven?
asflkasjflfjñlasjsadlfsadlñk
lkjhfkdjhaskljfkjasf

#

#

#

# Configuracion de las variables de entorno

#

# Fuentes



El pasado martes fuimos a una de las charlas que organizó la Universidad de Cantabria («Integración continua en proyectos Java usando Maven, Sonar y Jenkins«) impartida por Rocío Muñoz (@roci_munoz).

Me quedé con el gusanillo de instalar Maven en un equipo Windows (porque en Mac aún no ha habido manera) y parece que lo conseguí, ¡porque funciona! Así que os dejo un pequeño tutorial, por si alguno se anima:

    En primer lugar, es necesario que tengamos instalado el JDK 1.7. en nuestro equipo. Para ello:
        Accedemos a la web de Oracle y buscamos la versión que queramos. He elegido JDK 1.7 y no 1.8 porque el segundo da algunos problemas a la hora de integrar bases de datos.
        Seguimos el asistente hasta el final… ya sabéis: siguiente, siguiente, siguiente…
        Y configuramos las variables de entorno de Windows. Para ello hacemos clic con el botón derecho del ratón sobre Equipo > Propiedades > Configuración avanzada del sistema > pestaña Opciones avanzadas > botón Variables de entorno. Tenemos que añadir las siguientes:
            CLASSPATH: C:\Program Files\Java\jdk1.7.0_79\jre
            JAVA_HOME: C:\Program Files\Java\jdk1.7.0_79
            PATH: … ;C:\Program Files\Java\jdk1.7.0_79\bin; … (en este caso, la variable PATH ya existirá, así que añadimos esa cadena a continuación de lo que haya, separada por 😉
        Si todo está bien, al abrir un terminal (cmd.exe) y escribir «java -version» debería mostrar los datos de la versión instalada.
    Accedemos a la página web de Maven y descargamos la última versión (en mi caso, la 3.3.3): http://maven.apache.org/download.cgi#Installation
    Descomprimimos el archivo en C:/maven, de modo que todos los archivos de Maven se encontrarán en C:/maven/apache-maven-3.3.3
    Configuramos las variables de entorno al igual que lo hicimos en el caso anterior. En este caso añadiríamos:
        M2: %M2_HOME%\bin
        M2_HOME: C:\maven\apache-maven-3.3.3
        PATH: …;C:\maven\apache-maven-3.3.3\bin; …
    Accedemos al terminal y escribirmos «mvn –version«. Aseguraos de que el terminal no estaba abierto cuando cambiasteis las variables de sesión, porque entonces no reconocerá estas variables. Debéis cerrarlo y volverlo a abrir. Si todo está bien os mostrará la versión de Maven instalada.

En cualquier caso, si trabajáis con NetBeans podéis crear un proyecto de tipo Maven. En ese caso, y si Maven no está instalado, hace todo el proceso por nosotros, y solamente tenemos que encargarnos de configurarlo… pero eso ya lo dejo para otro post.