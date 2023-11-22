# README

Prueba Lomi es una aplicacion en rails para una prueba tecnica en la que se utilizan los modelos y relaciones de rails para crear un sistema de registro y venta de productos.

* Ruby 2.7.4
* Rails 6.1.3
* Realizado en sistema operativo Ubuntu 20.01

Para levantar el proyecto sigue estas instrucciones:

- Copiar el respositorio con el siguiente comando
  $ git clone https://github.com/lMumen/prueba-lomi.git

- Abrir en la terminal la carpeta en la que se encuentra el repositorio

- Una vez dentro realizar el bundle install
  $ bundle install

- En caso de que nos pida cambiar la version de ruby utilizar el siguiente comando
  $ rvm install 2.7.4

- Despues hay que correr las migraciones utilizando el comando
  $ rails db:migrate

- Puede que nos indique que no tenemos la base de datos creada, en tal caso correr el siguiente comando y luego volver a correr el comando de arriba para realizar la migracion
  $ createdb prueba_lomi_development

- Despues hay que correr el seed utilizando
  $ rails db:seed

- Luego para acceder a la consola de rails utilizar
  $ rails c

- Una ves con consola ya podras utilizar los diferentes modelos y objetos creados por el seed

