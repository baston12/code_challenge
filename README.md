# CODE CHALLENGE

Esta aplicación permite cargar las ventas a través de una archivo .tab

El archivo debe de estar conformado por lo siguiente:

  Encabezado (primera línea):
   - comprador
   - descripción del ítem
   - precio del ítem
   - total de ítems 
   - dirección de vendedor
   - vendedor
   Además separados por tabs

   Filas:
   Los datos deben de corresponder el orden del encabezado y separados por tabs.

## Requisitos

Este proyecto requiere de lo siguiente:

* Ruby version: 2.6.6
* Rails 5.2.x o superior
* Mysql
* Node js 12.19
* Yarn 1.22.5

## Intalación

Una vez que se tenga instalado lo necesario para ejecutar proyectos en rails se relizará la ejecución del proyecto.

* Clonar proyecto

  Descargue el proyecto de forma local.
  ```bash
  git clone https://github.com/baston12/code_challenge.git
  ```

* Cargar gemas

  Para cargar las gemas del gemfile use el siguiente comando

  ```bash
  bundle install
  ```

* Configuración de base de datos

   - Para confirgurar la base de datos, vaya al archivo database.example.yml el cual se encuentra en la carpeta config.

   - Cambie el nombre para que queda como database.yml.

   - Dentro del archivo se debera de colocar el usuario y contraseña de concexión al MYSQL designado por ustedes.

* Creación de Base de datos

  Ejecuta los siguiente comandos para crear la base de datos y cargar las tablas de esta.

  En producción
  ```bash
  RAILS_ENV=production rake db:create db:migrate
  ```
  En desarrollo
  ```bash
  rake db:create db:migrate
  ```

* Compilacion de Assets

  Se compilan los assets en producción utilizando el comando:

   ```bash
  RAILS_ENV=production rake assets:precompile
  ```

* Ejecutar proyecto

  Los pasos descritos anteriormente y cargardo lo necesario, para ejecutar el proyecto se usa el comando para producción:

  ```bash
  rails s -e 'production'
  ```
  y para desarrollo 

  ```bash
  rails s
  ```