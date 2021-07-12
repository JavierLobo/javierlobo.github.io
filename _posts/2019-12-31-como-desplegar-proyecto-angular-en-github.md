 Cómo desplegar una aplicación Angular en GitHub
Normalmente estamos acostumbrados a usar GitHub como repositorio de código fuente de nuestras aplicaciones ya sean angular o de cualquier otro tipo, y no necesarimente solo aplicaciones.

En la entrada de hoy vamos a ver cómo podemos desplegar una aplicación Angular en GitHub.

En primer lugar crearemos lógicamente la aplicación angular que llamaremos "demo-deploy-angular-app-github"
La aplicación que vamos a desplegar es una aplicación angular con un componente que  muestre un simple "Hola mundo". Lo que realmente nos interesa en la entrada de hoy es ver como podemos desplegar una aplicación y no tanto el contenido o la complejidad de la misma.

Posteriormente necesitamos crear el repositorio en GitHub. En mi caso he creado un repositorio con el mismo nombre de la aplicación, es decir, "demo-deploy-angular-app-github"

Una vez que el repositorio ha sido creado vinculamos nuestro proyecto a GitHub, como en cualquier otro proyecto:

> git remote add origin https://github.com/jorgetrigueros/demo-deploy-angular-app-github.git

 

 Para desplegar una aplicación Angular en GitHub necesitamos instalar angular-cli-ghpages de manera global, por lo que ejecutaramos en nuestra consola la siguiente instrucción:

> npm install -g angular-cli-ghpages 

  Una vez que hemos instalado la librería tenemos que construir el proyecto, es decir, tenemos que ejecutar desde el angular-cli la siguiente instrucción:

> ng build --prod --base-href "https://jorgetrigueros.github.io/demo-deploy-angular-app-github/"

El flag --pro indica que queremos hacer una construcción para producción. El flag --base-href  modifica la etiqueta base (<base href="/">) del index.html con la url establecida.

Después de haberse ejecutado el comando, se nos debería haber creado una carpeta "dist" con una serie de ficheros bundle.js como se ve en la siguiente imagen:

Una vez que hemos creado el proyecto, fnalmente nos queda publicarlo, y esto podemos realizarlo con el siguiente comando de la librería angular-cli-ghpages:

> angular-cli-ghpages --no-silent

Podemos ver las opciones disponibles para ejecutar ese comando en la página web de la librería:

https://www.npmjs.com/package/angular-cli-ghpages

Si todo ha ido bien veremos un mensaje de despliegue correcto, y podemos verificarlo si accedemos a nuestra dirección https://<username>.github.io/<reponame>

En nuestro ejemplo podemos ver el resultado en la dirección https://jorgetrigueros.github.io/demo-deploy-angular-app-github



Fuentes
- http://ngserve.blogspot.com/2018/04/como-desplegar-una-aplicacion-angular.html
- https://www.docdroid.net/RqmQbI2/angular-github-page.pdf
- https://victorroblesweb.es/2016/04/09/como-subir-codigo-a-github/
- 