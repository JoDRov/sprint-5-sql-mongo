 

DROP DATABASE IF EXISTS pizzeria_db;

CREATE DATABASE pizzeria_db;

USE pizzeria_db;

DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes (
	cliente_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    cliente_nombre VARCHAR (50) NOT NULL,
    cliente_apellido VARCHAR (50) NOT NULL,
    calle VARCHAR (50) NOT NULL,
    numero INT NOT NULL,
    puerta INT NOT NULL,
    codigo_postal VARCHAR (50) NOT NULL,
    localidad VARCHAR (50) NOT NULL,
    provincia VARCHAR (50) NOT NULL,
    numero_telefono INT NOT NULL,
    PRIMARY KEY (cliente_id)
);

DROP TABLE IF EXISTS productos;

CREATE TABLE productos (
	producto_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    descripcion VARCHAR (50) NOT NULL,
    producto_nombre VARCHAR (50) NOT NULL,
    producto_imagen VARCHAR (50) NOT NULL,
    categoria_id INT DEFAULT 0,
    categoria_pizza_id INT DEFAULT 0,
    precio INT NOT NULL,
    PRIMARY KEY (producto_nombre, descripcion, producto_imagen, precio)
);

DROP TABLE IF EXISTS entregas;

CREATE TABLE entregas (
	entrega_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    entrega_tipo VARCHAR (50) NOT NULL,
    PRIMARY KEY (entrega_id)
);

DROP TABLE IF EXISTS empleados;

CREATE TABLE empleados (
	empleado_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    empleado_nombre VARCHAR (50) NOT NULL,
    empleado_apellido VARCHAR (50) NOT NULL,
    nif VARCHAR (50) NOT NULL,
    telefono INT NOT NULL,
    puesto VARCHAR (50) NOT NULL,
    PRIMARY KEY (empleado_nombre, empleado_apellido, nif, telefono)
);

DROP TABLE IF EXISTS tiendas;

CREATE TABLE tiendas (
	tienda_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    tienda_nombre VARCHAR (50) NOT NULL,
    calle VARCHAR (50) NOT NULL,
    numero INT NOT NULL,
    puerta INT NOT NULL,
    codigo_postal VARCHAR (50) NOT NULL,
    localidad VARCHAR (50) NOT NULL,
    provincia VARCHAR (50) NOT NULL,
    PRIMARY KEY (calle, numero, puerta, codigo_postal, localidad, provincia)
);

DROP TABLE IF EXISTS pedidos;

CREATE TABLE pedidos (
	pedido_id INT NOT NULL AUTO_INCREMENT,
    cliente_id INT NOT NULL,
    empleado_id INT NOT NULL,
    fecha_pedido TIMESTAMP NOT NULL DEFAULT (NOW()),
    entrega_id INT NOT NULL,
    producto_id INT NOT NULL,
    cantidad INT NOT NULL,
    tienda_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
    FOREIGN KEY (producto_id) REFERENCES productos(producto_id),
    FOREIGN KEY (tienda_id) REFERENCES tiendas(tienda_id),
    PRIMARY KEY (pedido_id, cliente_id, fecha_pedido, entrega_id, cantidad)
);

DROP TABLE IF EXISTS categorias;

CREATE TABLE categorias (
	categoria_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    categoria_nombre VARCHAR (50) NOT NULL,
    PRIMARY KEY (categoria_id)
);

DROP TABLE IF EXISTS categorias_pizzas;

CREATE TABLE categorias_pizzas (
	categoria_pizza_id INT AUTO_INCREMENT UNIQUE,
    categoria_pizza_nombre VARCHAR (50) NOT NULL,
    PRIMARY KEY (categoria_pizza_id)
);


