---
layout: post
title: "Como crear un sitio web con Jekyll en Ubuntu"
date: 2020-11-19
author: Javier Lobo
categories: 
- blog 
- jekyll
img: portada-jekyll.jpeg
thumb: jekyll-thumbs.png
comments: true
---
Seguro que si alguna vez has creado un blog te habrás encontrado con diferentes soluciones de software para poder montarlo. Raro sería si no has acabado utilizando WordPress, Joomla o Drupal. Llegado ese punto te habrás encontrado en más de una ocasión afinando los tiempos de respuesta asociados al acceso al contenido en las bases de datos.

Y es que más rápido que servir una página estática no vamos a encontrar nada. Así que alternativas como asociar un CDN (Content Delivery Network) o la conversión a ficheros estáticos de nuestras webs son una gran alternativa o complemento.

Dentro de la gestión de contenidos mediante plantillas y ficheros estáticos tenemos algunos generadores de contenido como Jekyll.

<!--more-->
# ¿Que es jekyll?
Jekyll es un **generador de páginas estáticas** para la construcción de webs, auque principalmente está enfocado a blogs, puede usarse para cualquier otra cosa que necesitemos para dar a conocer algo construyendo cualquier tipo de página web. Está escrito en Ruby y fue desarrollado por Tom Preston-Werner, cofundador de GitHub.

# ¿Que podemos hacer con Jekyll?
Con Jekyll podemos hacer tantas cosas como la tecnología y la imaginación nos permitan:

* Crear **páginas web**, **entradas post** o **catalogos de productos para una tienda online**.
* Agrupar las entradas o post en **categorias**.
* **Definir etiquetas** para las páginas o las entradas.
* **Asociar un usuario** a cada uno de los contenidos.
* Asignar una **fecha de creación** a cada uno de los contenidos.
* Podemos **personalizar los enlaces permanentes** para cada uno de los contenidos.
* Podemos crear un **buscador de contenidos**.
* **Dejar comentarios** añadiendo una caja de **Disqus**.

# Instalando Jekyll
## Prerequisitos
Para continuar con esta guía deberás tener:
> Un usuario ***no root*** con privilegios sudo y que tengas una distribución Ubuntu, Kubuntu o alguna de sus variantes instalada en la máquina que vayas a utilizar.

Una vez que lo tengas todo preparado estarás listo para instalar Jekyll y sus dependencias.

## Primer paso, instalación de Jekyll
Primero actualizaremos la lista de paquetes y sus dependencias para asegurarnos de tener la versión mas reciente.

    $ sudo apt update && sudo apt upgrade -y

Como siguiente paso instalaremos ***make*** y ***build-essential*** para que las bibliotecas de Jekill se compilen y para que Ruby y sus bibliotecas de desarrollo las utilicen. Utilizamos la bandera **-y**  para confirmar que sí nos gustaría instalar los paquetes y evitar el mensaje de confirmación.

    $ sudo apt -y install ruby-full make build-essential ruby ruby-dev zlib1g-dev

Una vez que haya terminado la descarga e instalación de los paquetes, editaremos nuestro archivo ***.bashrc*** para indicarle al administrador de paquetes de _Ruby_ donde colocar las gemas, en nuestro caso lo haremos en la _carpeta de inicio_ de nuestro usuario.

    $ nano .bashrc

por lo que invocando nuestro editor de código favorito añadiremos las siguientes dos líneas al final del archivo.

    # Ruby exports
    export GEM_HOME=$HOME/gems
    export PATH=$HOME/gems/bin:$PATH

Una vez modificado el archivo activaremos las exportaciones ejecutando lo siguiente:

    $ source ~/.bashrc

Una vez completo usaremos el comando ***gem*** para instalar _Jekyll_ y _Bundler_ que administra las dependencias de las gemas. En este punto deberías hacerte un bocata, ya que tardará un rato.

    $ gem install jekyll bundler

Hasta aquí la parte de descarga, instalación y configuración de Jekyll, el siguiente paso será la configuración del trafico por el firewall.

## Segundo paso, abrir el cortafuegos (firewall)
Comprobemos si el firewall está habilitado. Si es así, nos aseguraremos de que se permita el tráfico a nuestro sitio y que podamos verlo en un navegador web.

    $ sudo ufw status

Si después de ejecutar el comando nos da como respuesta ***inactive*** ejecutaremos los siguientes comandos. La primera añade una regla en el cortafuegos y la segunda permite que se ejecute al arrancar el sistema.

    $ sudo ufw allow OpenSSH
    $ sudo ufw enable

Dependiendo de cómo haya configurado el firewall es posible que tenga otras reglas establecidas o que no tenga ninguna. Dado que en este caso solo se permite el tráfico SSH, necesitaremos abrir el puerto 4000, el puerto predeterminado para el servidor de desarrollo Jekyll.

    $ sudo ufw allow 4000

Si vemos el ***status*** del firewal debería mostrarnos una respuesta como la siguiente.

    To                         Action      From
    --                         ------      ----
    OpenSSH                    ALLOW       Anywhere
    4000                       ALLOW       Anywhere
    OpenSSH (v6)               ALLOW       Anywhere (v6)
    4000 (v6)                  ALLOW       Anywhere (v6)

Ya con el software instalado y el puerto necesario abierto, estamos listos para crear el sitio de desarrollo.

## Tercer paso, creación del entorno de desarrollo
Bien!! Ahora vamos a crear el sitio donde nuestra web de desarrollo estará alojada, ahí publicaremos todos nuestros artículos para subirlo a git. Esta carpeta puede estar en cualquier lugar donde creas necesario pero para nuestro ejemplo la crearemos en la carpeta ***home*** de nuestro usuario.

    $ cd ~
    $ jekyll new miweb

El comando ***new*** de jekyll ejecuta un comando ***bundle install*** para instalar todas las dependencias que requiere el proyecto, después instala un tema llamado _minima_ para que se vea bonito. Al finalizar nos debería ofrecer una respuesta similar a esta:

    New jekyll site installed in /home/pepito/miweb

Una vez creado el nuevo proyecto con el comando ***new*** deberíamos tener una estructura similar a esta.
> Nota: Puedes utilizar el comando ***tree*** para ver la estructura de archivos y carpetas de tu proyecto pero si no lo tienes instalado, usa el comando ***sudo apt install tree*** para instalarlo.
>
>$ sudo apt install tree

    ├── 404.html
    ├── about.markdown
    ├── _config.yml
    ├── Gemfile
    ├── Gemfile.lock
    ├── index.markdown
    ├── _posts
    │   └── 2020-11-13-welcome-to-jekyll.markdown
    └── _site

Estos son todos los archivos básicos para que el sitio web funcione. Conforme vayas avanzando en la creación de tu web iras creando mas carpetas y documentos que la enriquecerán.

Jekyll se basa en nombres específicos, patrones de nombres y estructuras de directorios para analizar las diferentes fuentes de contenido y ensamblarlas en un sitio estático. Es importante utilizar la estructura existente y seguir las convenciones de nomenclatura de Jekyll al agregar nuevas publicaciones y páginas.

## Cuarto paso, iniciar el servidor web de Jekyll
Jekyll incluye un servidor web bastante ligero diseñado para respaldar el desarrollo del sitio, monitoreando cualquier cambio en los documentos y generando de nuevo el sitio automáticamente.

Para arrancar el servidor deberemos ejecutar el comando ***jekyll serve*** dentro de la carpeta principal de nuestro proyecto y en nuestro navegador favorito pondremos la siguiente dirección web: http://localhost:4000

    $ cd ~/miweb
    $ jekyll serve

Una vez finalizado el arranque del servidor nos ofrecerá una respuesta similar a la de mas abajo, dejando el terminal en espera de cualquier actividad en nuestra web.

    Configuration file: /home/pepito/miweb/_config.yml
                Source: /home/pepito/miweb
        Destination: /home/pepito/miweb/_site
    Incremental build: disabled. Enable with --incremental
        Generating... 
        Jekyll Feed: Generating feed for posts
                        done in 0.875 seconds.
    Auto-regeneration: enabled for '/home/pepito/miweb'
        Server address: http://127.0.0.1:4000/
    Server running... press ctrl-c to stop.

Cuando invocamos el comando ***jekyll seve***, jekyll analiza la configuración que le hemos indicado en el documento __config.yml_ y los archivos de contenido y vuelca el resultado en un nuevo directorio llamado __site_ que se convertirá en nuestra web.

    ├── 404.html
    ├── about.markdown
    ├── _config.yml
    ├── Gemfile
    ├── Gemfile.lock
    ├── index.markdown
    ├── _posts
    │   └── 2020-11-13-welcome-to-jekyll.markdown
    └── _site
        ├── 404.html
        ├── about
        │   └── index.html
        ├── assets
        │   ├── main.css
        │   ├── main.css.map
        │   └── minima-social-icons.svg
        ├── feed.xml
        ├── index.html
        └── jekyll
            └── update
                └── 2020
                    └── 11
                        └── 13
                            └── welcome-to-jekyll.html

Es importante que no realicemos cambios directos en la carpeta __site_, ya que, jekyll regenera la carpeta constantemente y los perderíamos irremediablemente.

Es importante dejar en segundo plano el terminal para que nos muestre información adicional sobre los errores y problemas que pueden surgir durante el desarrollo de nuestra web.

> ***Nota***: Si tu proyecto comienza a ser demasiado grande y tarda lo suficiente como para irte a ver tu serie favoríta mientras tomas un aperitivo y seguir sin cambios cuando la hayas terminado, es el momento de utilizar el parámetro ***--incremental***. Este parámetro puede acelerar la reconstrucción de tu web cada vez que realices un cambio pero para webs sencillas con poco peso no se nota mucho que se diga.

Una vez que todo está funcionando podemos ver nuestra flamante web en el navegador que deseemos, solo hay que poner la dirección web que usamos antes en la barra de navegación y... Tachan!! Magia!!
> [http://127.0.0.1:4000/](http://127.0.0.1:4000/)  
> [http://localhost:4000/](http://localhost:4000/)

![jekyll_home_update](/assets/img/blog/jekyll_home_update.png "Página principal de nuestro proyecto")

# Fuentes:
- [https://jekyllrb.com/](https://jekyllrb.com/)
- [https://es.wikipedia.org/wiki/Jekyll_(computaci%C3%B3n)](https://es.wikipedia.org/wiki/Jekyll_(computaci%C3%B3n))