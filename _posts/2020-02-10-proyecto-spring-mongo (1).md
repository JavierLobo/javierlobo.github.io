---
layout: nopost
title: Spring Cloud Netflix con Mongo
subtitle: Proyecto de recopilación de conocimientos.
image: ../images/portada-mongo-spring.jpg
gh-repo: JavierLobo/gescoches
gh-badge: [star, fork, follow]
tags: [MongoDB, Spring, Boot, Netflix, java, ejemplo]
comments: true
---
![](../images/portada-mongo-spring.jpg "Proyecto de Spring Cloud Netflix con Mongo") 

El proyecto está destinado a cubrir los conocimientos de java con el framework Spring Cloud Netflix atacando una base de datos no relacional, MongoDB.

# Proyecto de recopilación de conocimientos. Spring Cloud Netflix con Mongo 


GitHub: https://github.com/JavierLobo/gescoches

## **Lista de cambios**

**31/01/2020**
- Microservicio "EurekaServer":
    - Creación del servicio para el registro de los microservicios. Es posible acceder a la página de registro
- Microservicio "ConfigServer":
    - Creación del repositorio "JavierLobo/gescoches" en github para compartir las configuraciones entre los servicios implicados.
    - Creación del archivo "servicesdata.properties" para almacenar la configuracion para los microservicios.
- Microservicio "Gestion":
    - Creación del servicio "Gestión" para la gestión de los coches, el cual está compuesto por las capas rest, logica y de persistencia, cada una en un proyecto independiente.
    - Creación del CRUD con las siguienes peticiones:
        - "/coche/guardar": Guarda un documento enviado a traves de un json en la base de datos documental, devolviendo un json de respuesta con el registro guardado y su estado.
        - "/coche/obtener/{Object_Id}": La petición devuelve un json con el documento solicitado a traves del "Object_Id" y el resultado de la operación.
        - "/coche/eliminar/{Object_Id}": La petición elimina un documento de la base de datos que coincida con el "Object_Id" que le enviamos, como respuesta devuelve el documento eliminado y el resultado de la operación.
