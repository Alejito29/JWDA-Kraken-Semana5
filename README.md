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
Chromium           Version  92.0.4499.0
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
Ubicarse en la carpeta donde realizo la instalacion de bundle install, una ves ubicado en la carpeta de proyectos debera ejecutar el siguiente comando bundle exec kraken-mobile run, en este caso si realizo las configuraciones de una manera correcta debera empezar a ejecutarse los test, en caso contrario debera revisar alguna de los pasos de instalacion 

```

![Test](https://user-images.githubusercontent.com/78820446/117548877-e8f63100-affc-11eb-8b66-73b9c4db6e8f.PNG)

* Resultado del index.html en la carpeta **JWDA-Kraken-Semana5\proyecto\reports\efcae4d5c418c58304d74bd3f8f17a5015496a2f5deddddaea015a17398442f3\index.html**

![Captura](https://user-images.githubusercontent.com/78820446/117548984-86e9fb80-affd-11eb-9de3-854affc1cdec.PNG)


### Analice las pruebas end-to-end 🔩

En este caso para el analizis de las pruebas ejecutadas unicamente debe evidenciar los resultados de la consola y ver los resultados en la carpeta **JWDA-Kraken-Semana5\proyecto\reports**



## Construido con 🛠️

_Menciona las herramientas que utilizaste para crear tu proyecto_

* [Node 12.17.0](https://nodejs.org/es/download/releases/) - Node
* [Cypress](https://www.cypress.io/) - Cypress
* [Android studio](https://developer.android.com/studio) - Android
* [Chromium](https://www.chromium.org/getting-involved/download-chromium) - Chromium
* [JAVA](https://www.java.com/es/download/ie_manual.jsp) - Java
* [Kraken](https://github.com/TheSoftwareDesignLab/KrakenMobile/archive/refs/tags/1.0.9.zip.) - Kraken
* [Chrome](https://www.google.com/intl/es/chrome/?brand=UUXU&gclid=CjwKCAjw7diEBhB-EiwAskVi10CI0gLPlO0E3zn_0-3gOnt60O2j_i2Jr_gHLJIEkfyP0JssFBki4hoC4sYQAvD_BwE&gclsrc=aw.ds) - Chrome
* [Javascript](https://developer.mozilla.org/es/docs/Web/JavaScript) - Javascript
* [Git](https://git-scm.com/downloads) - Git
* [Ghost](https://github.com/TryGhost/Ghost/tree/3.3.0) - Ghost

## Autores ✒️

_Autor_

* **Wilson Alejandro Gonzalez Gaitan** - *Trabajo Inicial* - [Alejito29](https://github.com/Alejito29)
* **Dario Fernando Herrera Gonzalez** - *Trabajo Inicial* - [dherrera54](https://github.com/dherrera54)
* **Angelica Maria Rodriguez Torres** - *Trabajo Inicial* - [angelicamariarodriguez](https://github.com/angelicamariarodriguez9)
* **Jorge Ivan Barrera Rea** - *Trabajo Inicial* - [ivanbrij](https://github.com/ivanbrij)

## Imagenes ✒️

Muestra las imagenes tomadas por la herramienta


# Imagenes  de la funcionalidad Login

![2a3b7e25556eb2bb5336fdd3](https://user-images.githubusercontent.com/78820446/117549054-f06a0a00-affd-11eb-97df-868e8dc226ad.png)

![1463f112e97f62838d9a9ed7](https://user-images.githubusercontent.com/78820446/117549055-f233cd80-affd-11eb-9197-8660b3ab1990.png)

![50166cce397356b2812bd5e4](https://user-images.githubusercontent.com/78820446/117549059-f7911800-affd-11eb-91ce-a39cde91315c.png)

![b36af3b6507ed4dc1d99c40b](https://user-images.githubusercontent.com/78820446/117549060-fb249f00-affd-11eb-8459-820d6d74440e.png)

![d82204966f5c675510098863](https://user-images.githubusercontent.com/78820446/117549063-fd86f900-affd-11eb-91eb-fc6471a44c97.png)



# Video de la funcionalidad Manage General Settings



# Vide de la funcionalidad Manage Pages


![90bda705c066fdd40b51f11c](https://user-images.githubusercontent.com/78820446/117549087-1f807b80-affe-11eb-9ee4-884b14c4bad2.png)

![94ee8aef4c6b15fd14c8df3a](https://user-images.githubusercontent.com/78820446/117549090-227b6c00-affe-11eb-9cad-348df0088718.png)

![0639f3a9dc7b465ddc0eed71](https://user-images.githubusercontent.com/78820446/117549093-24ddc600-affe-11eb-8275-bcc653cf579a.png)

![5142df91ef7c667b6c00b849](https://user-images.githubusercontent.com/78820446/117549098-2909e380-affe-11eb-96b6-bedaffdae2aa.png)

![8462c47998cce801f78dda22](https://user-images.githubusercontent.com/78820446/117549102-2c04d400-affe-11eb-9d94-f154e70be02c.png)

![a215ab78840fda95440e958b](https://user-images.githubusercontent.com/78820446/117549105-2effc480-affe-11eb-8040-0d5a48b0eff9.png)

![a70789ec58cb6c26348888ef](https://user-images.githubusercontent.com/78820446/117549110-31fab500-affe-11eb-9fb1-fb2844f2c204.png)

![bcb48b2bff7043d2826ea43e](https://user-images.githubusercontent.com/78820446/117549113-345d0f00-affe-11eb-8330-e92424ef0281.png)

![c2c049a289aea53b47764639](https://user-images.githubusercontent.com/78820446/117549116-37f09600-affe-11eb-81aa-b795cff433cd.png)

![d28f8370c91dc19456cfd52d](https://user-images.githubusercontent.com/78820446/117549121-3c1cb380-affe-11eb-9724-ab58996594b7.png)

![dd32beba3477e1f682b7e8be](https://user-images.githubusercontent.com/78820446/117549124-3f17a400-affe-11eb-948c-6d4cf96e055c.png)

![ebc4f4ff97277282856bb878](https://user-images.githubusercontent.com/78820446/117549130-42129480-affe-11eb-9659-eacf2247819e.png)


# Video de la funcionalidad Create Posts





# Video de la funcionalidad Manage Tags




## Licencia 📄

Este proyecto está bajo la Licencia (Copyleft) - mira el archivo [LICENSE.md](LICENSE.md) para detalles

