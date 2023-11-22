# Prueba LOMI

Prueba Lomi es una aplicación en rails para una prueba técnica en la que se utilizan los modelos y relaciones de rails para crear un sistema de registro y venta de productos.

* Ruby 2.7.4
* Rails 6.1.3
* Realizado en sistema operativo Ubuntu 20.01

Para levantar el proyecto sigue estas instrucciones:

- Copiar el respositorio con el siguiente comando

```bash
git clone https://github.com/lMumen/prueba-lomi.git
```

- Abrir en la terminal la carpeta en la que se encuentra el repositorio

```bash
cd prueba-lomi
```

- Una vez dentro realizar el bundle install

```bash
bundle install
```

- En caso de que nos pida instalar la version de ruby utilizar el siguiente comando, luego volver a realizar bundle

```bash
rvm install 2.7.4
```

- Ahora debemos crear la base de datos utilizando el comando

```bash
rails db:create
```

- Después hay que correr las migraciones utilizando el comando

```bash
rails db:migrate
```

- Después hay que correr el seed utilizando

```bash
rails db:seed
```
- Luego para acceder a la consola de rails utilizar

```bash
rails c
```

- Una vez con consola ya podrás utilizar los diferentes modelos y objetos creados por el seed

Consultas de ejemplo:

- El nombre del último producto del útimo carrito creado
```bash
Cart.last.products.last.name
```

- Todos los carritos de compra que estan pagados
```bash
Cart.payed
```

- Nombre completo del cliente que realizo la última orden de compra
```bash
OrderDetail.last.client.full_name
```
