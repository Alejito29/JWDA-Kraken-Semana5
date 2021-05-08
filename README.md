# JWDA-Semana5
Repositorio del grupo conformado por: Angelica Rodriguez, Jorge Barrera, Wilson Gonzalez y Dario Herrera


# Kraken 

Este proyecto contiene el codigo de las pruebas E2E del codigo  GHOST 3.3.0 a traves de Kraken y Gherkins, la url  para las pruebas fue la siguiente http://localhost:2368/

## Comenzando 🚀

_Estas instrucciones te permitirán obtener una copia del proyecto en funcionamiento en tu máquina local para propósitos de desarrollo y pruebas._

Mira **Deployment** para conocer como desplegar el proyecto.


### Pre-requisitos 📋

Para poder ejecutar de manera correcta el proyecto debe tener configurado las siguientes herramientas en su maquina

```
Node,              Version  12.17.0
Cypress,           Version  7.2.0
Chrome,            Version  90.0.4430.93
Git,               Version  2.21.0
Ghost ,            Version  3.3.0
Kraken,            Version  1.0.9  
ADB Android ,      Version  30.0.5-6877874   
ChromeDriver       Version  ChromeDriver 90.0.4430.24
Java               Version  1.8.0_91
Rubby              Version  ruby 2.6.7p197
Android studio     Version  4.1.1
```

### Instalación 🔧

En este caso para ejecutar el proyecto debe haber instalado las herramientas indicadas anteriormente en el paso de **Pre-requisitos**, una vez instaladas debe ejecutar lo siguiente 

Pasos

```
Revisar que se encuentre configurado node de manera correcta, se realiza de la siguiente manera
```

* Abrir la terminal de su equipo, esta guia estara para un sistema operativo Windows, pero si configuro de manera exitosa las herramientas nombradas en  **Pre-requisitos** no deberia haber diferencia.

![Terminal](https://user-images.githubusercontent.com/78820446/117479939-8cc0dd80-af26-11eb-85a5-b3559aa18ac5.PNG)


* Ejecutar el comando node -v en la terminal, si aparece la version  esto indicaria que se encuentre instalado de manera correcta, en caso contrario debera revisar la instalacion de node en su maquina 

![Node ](https://user-images.githubusercontent.com/78820446/117480756-9eef4b80-af27-11eb-98bd-cb7756ef43ac.PNG)


El siguiente paso 

```
Revisar que se encuentre configurado cypress de manera correcta, se realiza de la siguiente manera
```

* Abrir la terminal de su equipo, puede ser la misma que abrio en el paso anterior para verificar  la instalacion de node

![Terminal](https://user-images.githubusercontent.com/78820446/117479939-8cc0dd80-af26-11eb-85a5-b3559aa18ac5.PNG)

* Ahora ejecutar el siguiente comando **Cypress -v**, en caso que no aparesca las versiones en cada campo deberia revisar la instalacion del cypress

![Cypress version](https://user-images.githubusercontent.com/78820446/117480168-dd383b00-af26-11eb-84f1-c3ef654e1a8a.PNG)


El siguiente paso 

```
Revisar que tenga instalado git en su maquina, se realiza de la siguiente manera
```

* Abrir la terminal de su equipo, puede ser la misma que abrio en el paso anterior para verificar  la instalacion de node

![Terminal](https://user-images.githubusercontent.com/78820446/117479939-8cc0dd80-af26-11eb-85a5-b3559aa18ac5.PNG)

* Ahora ejecutar el siguiente comando **git --version**, en caso que no aparesca la version debera revisar la instalacion de git

![git](https://user-images.githubusercontent.com/78820446/117470240-351d7480-af1c-11eb-9032-03f81b674975.PNG)



El siguiente paso

```
Revisar que tenga instalado ruby de manera correcta
```

* Sobre la terminal ejecutada debe ejecutar el siguiente comando **ruby -v**, en caso que no aparesca la version debera revisar la instalacion de **ruby**

![ruby](https://user-images.githubusercontent.com/78820446/117545809-028f7c80-afed-11eb-9e57-9ce0ac6c87d5.PNG)



El siguiente paso

```
Revisar que tenga instalado java  y configurado 
```

* Sobre la terminal ejecutada debe ejecutar el siguiente comando **java  -version** en caso que no aparesca la version deberia revisar la instalacion 

![Java](https://user-images.githubusercontent.com/78820446/117546069-2ef7c880-afee-11eb-9eda-64cd2bdd8a10.PNG)

* Si se reconoce el comando **java -version** debera configurar las siguientes variables de entorno en el computador 

  - JAVA_HOME Ingresar la ruta donde se encuentra instalado su JDK 

![JAVA ENTORNO](https://user-images.githubusercontent.com/78820446/117546738-80558700-aff1-11eb-85c4-91102e2994dd.PNG)

  - Adicional agregar las siguientes variables de entorno en la opcion de **path**:  **%JAVA_HOME%\bin** 

![JAVA ENTORNO](https://user-images.githubusercontent.com/78820446/117546768-b72b9d00-aff1-11eb-9bc9-324525a90433.PNG)




El siguiente paso

```
Revisar que tenga configurado adb de manera correcta y se reconozca el comando por la terminal 

```

* Sobre la terminal ejecutada debe ejecutar el siguiente comando **adb --version** en caso que no aparesca la version deberia revisar la instalacion 


![ab](https://user-images.githubusercontent.com/78820446/117546179-cc52fc80-afee-11eb-9788-d93a68e83aa5.PNG)

* Si se encuentra configurado el **adb** de manera correcta deberan configurar las siguientes variables de entorno adicionales para el correcto funcionamiento

  - ANDROID_HOME
  
![Android  sdk](https://user-images.githubusercontent.com/78820446/117546292-54d19d00-afef-11eb-93b4-9197aa4e9880.PNG)

![SDK configuracion](https://user-images.githubusercontent.com/78820446/117546341-93675780-afef-11eb-959a-6c230f0e6253.PNG)

  - Adicional agregar las siguientes variables de entorno en la opcion de **path**:  **%ANDROID_HOME%\tools** **%ANDROID_HOME%\tools\bin** **C:\Users\wilso\AppData\Local\Android\Sdk\platform-tools poner la ruta de su SDK** 

![entorno](https://user-images.githubusercontent.com/78820446/117546536-7da66200-aff0-11eb-804c-8101510b99b9.png)

El siguiente paso 



```
Revisar que tenga instalado Ghost 3.3.0 de manera correcta, ya registrado un usuario e ingresando de manera correcta
```

* Sobre la carpeta que tiene configurado Ghost 3.3.0 debe ejecutar el siguiente comando **ghost start**, en caso de no salir de la siguiente manera tiene un error en la instalacion de Ghost 3.3.0 que debera revisar 

![ghost start](https://user-images.githubusercontent.com/78820446/117476511-a102db80-af22-11eb-91c7-78b66cf5dc65.PNG)

* En caso de ser la primera vez en Ghost 3.3.0 debera registrarse y evidenciar que ingresa a la pantalla del home de Ghost, en caso que no ingrese a la pantalla, tiene algo mal configurado que debera revisar.

![Ghost](https://user-images.githubusercontent.com/78820446/117479495-060c0080-af26-11eb-9845-2cf9a2e9ed23.PNG)



El siguiente paso 


```
Clonar el repositorio a traves de git siguiendo los siguientes pasos 
```

* Crear una carpeta vacia en cualquier ubicacion de su equipo, es importante que no contenga espacios en blanco 
 
* Abrir la terminal y ubicarse en la ruta donde se encuentra creada la carpeta a traves de la terminal 


* Clonar el repositorio a traves del siguiente commando  **git clone https://github.com/angelicamariarodriguez/JWDA-Semana5**

![git](https://user-images.githubusercontent.com/78820446/117548460-c7944580-affa-11eb-87bd-e5e574837e68.PNG)




El siguiente paso 


```
Dirigirse a  la carpeta clonada con la terminal del paso anterior 
```

* Sobre la carpeta creada en el paso anterior y el proyecto clonado, debe ejecutarse el siguiente comando **cd JWDA-Kraken-Semana5\proyecto**

![cd](https://user-images.githubusercontent.com/78820446/117548561-47221480-affb-11eb-8e16-2f6824ba9f5c.PNG)


* Sobre la carpeta **proyecto** ejecutar **bundle install** no debe salir ningun error en el proceso de instalacion, en caso de salir algun error debe revisar la instalacion de kraken 

![bundle install](https://user-images.githubusercontent.com/78820446/117548609-83ee0b80-affb-11eb-9156-42676e71ce9f.PNG)




## Funcionalidades y estrategias 🚗

Este proyecto está probando las siguientes funcionalidades:

1. Manage Pages:
    - Iniciar sesión en Ghost ir a post, filtar unicamente por la opcion de concepto
    - Iniciar sesión en Ghost ir a post, filtar unicamente por concepto y autor ghost
    - Iniciar sesión en Ghost ir a post, filtar unicamente por concepto, autor y tag
    - Iniciar sesión en Ghost ir a post, filtar unicamente por concepto, autor,  tag y publicacion reciente
3. Manage General Settings:
    - Iniciar sesión en Ghost ir a configuraciones generales y editar el título y la descripción del sitio.
    - Iniciar sesión en Ghost ir a configuraciones generales y editar la zona horaria del sitio.
    - Iniciar sesión en Ghost ir a configuraciones generales y poner el sitio como privado.
    - Iniciar sesión en Ghost ir a configuraciones generales y poner el sitio como público.
4. Manage Login:
    - Login con usuario y contraseña incorrectos
    - Login con usuario y contraseña correctos
    - Login con usuario correcto y contraseña incorrecta
    - Login con usuario incorrecto y contraseña correcta
 4. Create Posts:
    - Creación de post usando el botón "+" desde home
    - Creación de post usando el botón "New post" desde listado de posts
    - Creación de post con estado published usando el botón "New Post" desde listado de post
    - Creación de post con estado scheduled usando el botón "New Post" desde listado de post
 5. Manage Tags:

# Ejecutando las pruebas ⚙️

Para ejecutar unicamente debe  hacer lo siguiente:

```
Ubicarse en la carpeta donde realizo la instalación de las node modules
```

![npm install ](https://user-images.githubusercontent.com/78820446/117474290-68fa9900-af20-11eb-891f-1ef3f9145f92.PNG)


Posteriormente debe editar el siguente archivo, este archivo se encuentra dentro de la carpeta principal:

```
costant-page.js
```
En el archivo costant-page.js en la carpeta page-objects editar las siguientes variables: 

1. Remplace los valore de **USER** y **password**, por su usuario y contraseña que registró en Ghost, ejemplo:

    **static USER = 'arodriguezt9509@gmail.com';
    **static PASSWORD = '********';

2. Asegurese que la url sea la siguiente: 
    **static BASE_URL = 'http://localhost:2368/'**

3. Asegurese de tener la vista del sitio como pública. Para esto debe ir a "General Settings" en Ghost y en la sección "Advanced Settings" debe tener deshabilitada la opción de "Make this site private", como se observa a continuación.

![image](https://user-images.githubusercontent.com/78829003/117516478-d75e4c00-af5e-11eb-8002-3ff61f2e25d6.png)

Por ultimo ya habiendo configurado los archivos y cambiado los datos por su  maquina unicamente queda ejecutar el siguiente comando:. 

```
cypress run --headless

```

Este comando empezara a ejecutar los test, deberan salir exitosos   en la consola 


### Analice las pruebas end-to-end 🔩

En este caso para el analizis de las pruebas ejecutadas unicamente debe evidenciar los resultados de la consola y videos.


## Construido con 🛠️

_Menciona las herramientas que utilizaste para crear tu proyecto_

* [Node 12.17.0](https://nodejs.org/es/download/releases/) - Node
* [Cypress](https://www.cypress.io/) - Cypress
* [Javascript](https://developer.mozilla.org/es/docs/Web/JavaScript) - Javascript

## Autores ✒️

_Autor_

* **Wilson Alejandro Gonzalez Gaitan** - *Trabajo Inicial* - [Alejito29](https://github.com/Alejito29)
* **Dario Fernando Herrera Gonzalez** - *Trabajo Inicial* - [dherrera54](https://github.com/dherrera54)
* **Angelica Maria Rodriguez Torres** - *Trabajo Inicial* - [angelicamariarodriguez](https://github.com/angelicamariarodriguez9)
* **Jorge Ivan Barrera Rea** - *Trabajo Inicial* - [ivanbrij](https://github.com/ivanbrij)

## Video ✒️

Muestra de los videos funcionando


# Video de la funcionalidad Manage Login 


https://user-images.githubusercontent.com/78820446/117517823-ef37cf00-af62-11eb-93b7-c67e00850680.mp4




# Video de la funcionalidad Manage General Settings

https://user-images.githubusercontent.com/78829003/117502637-68282e00-af45-11eb-9f1f-b89172229c92.mp4

# Vide de la funcionalidad Manage Pages


https://user-images.githubusercontent.com/78820446/117517836-f7900a00-af62-11eb-9524-9d9ecc34c33d.mp4



# Video de la funcionalidad Create Posts


https://user-images.githubusercontent.com/78746286/117514980-c1e72300-af5a-11eb-91f8-559ae5ecd82a.mp4


# Video de la funcionalidad Manage Tags




## Licencia 📄

Este proyecto está bajo la Licencia (Copyleft) - mira el archivo [LICENSE.md](LICENSE.md) para detalles

