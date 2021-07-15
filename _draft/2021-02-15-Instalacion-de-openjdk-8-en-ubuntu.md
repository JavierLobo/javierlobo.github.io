---
title: "Instalación de OpenJdk 8 en Ubuntu"
subtitle:
date: 2021-02-15
author: Javier Lobo
categories: 
- java
- jre
- jdk
- kubuntu
- ubuntu
- linux
img: java-openjdk.png
thumb: thumb-Openjdk.png
layout: post
gh-repo: JavierLobo/blog
gh-badge: [star, fork, follow]
main-post: /Instalacion-de-java-jdk-jre-en-ubuntu-linux
comments: true
---
OpenJDK es el resultado de los esfuerzos realizados por la empresa denominada Sun Microsystems. Esta implementación se encuentra catalogada dentro de la licencia GPL de GNU con una excepción de enlaces, por lo que algunos de los componentes de los folders de clases y sitios web de Java se ultiman de los términos de la licencia para poder ser considerados dentro de la versión estipulada como GNU.
<!--more-->

## Instalación en Ubuntu o en sus deribados
Para instalar OpenJDK 8 Java Development Kit (JDK) usaremos el siguiente comando.
```
sudo apt-get install openjdk-8-jdk
```
Para instalar el paquete sin cabeza OpenJDK 8 JDK, podemos usar el siguiente comando.
```
sudo apt-get install openjdk-8-jdk-headless
```
Instalar OpenJDK 8 Java Runtime Environment (JRE) podemos usar el siguiente comando.
```
sudo apt-get install openjdk-8-jre
```
Para instalar el paquete OpenJDK 8 JRE Headless podemos usar el siguiente comando.
```
sudo apt-get install openjdk-8-jre-headless
```
## Referencias
En los siguientes enlaces puedes encontrar mas información sobre java.
* [Página principal del proyecto OpenJdk 8][openjdk8proj]
* [Repositorio del proyecto OpenJdk][openjdk8]
* [Documentación de Java OpenJdk 8][openjdk8doc]

<!-- Enlaces de la página-->
[openjdk8proj]: https://openjdk.java.net/projects/jdk8/
[openjdk8]: https://github.com/openjdk/
[openjdk8doc]: https://devdocs.io/openjdk~8/