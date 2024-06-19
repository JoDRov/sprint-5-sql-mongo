 
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
    PRIMARY KEY (cliente_nombre, cliente_apellido, calle, numero, puerta, codigo_postal, localidad, provincia, numero_telefono)
);

DROP TABLE IF EXISTS productos;

CREATE TABLE productos (
	producto_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    descripcion VARCHAR (50) NOT NULL,
    producto_nombre VARCHAR (50) NOT NULL,
    producto_imagen VARCHAR (50) NOT NULL,
    categoria VARCHAR (50) DEFAULT 0,
    categoria_pizza VARCHAR (50) DEFAULT 0,
    precio INT NOT NULL,
    PRIMARY KEY (producto_nombre, descripcion, producto_imagen, precio)
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

DROP TABLE IF EXISTS pedidos;

CREATE TABLE pedidos (
	pedido_id INT NOT NULL AUTO_INCREMENT,
    cliente_id INT NOT NULL,
    empleado_id INT NOT NULL,
    fecha_pedido TIMESTAMP NOT NULL DEFAULT (NOW()),
    tipo_entrega VARCHAR (50) NOT NULL,
    producto_id INT NOT NULL,
    cantidad INT NOT NULL,
    tienda_id INT NOT NULL,
    precio INT NOT NULL,
    FOREIGN KEY (empleado_id) REFERENCES empleados(empleado_id),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
    FOREIGN KEY (producto_id) REFERENCES productos(producto_id),
    FOREIGN KEY (tienda_id) REFERENCES tiendas(tienda_id),
    PRIMARY KEY (pedido_id, fecha_pedido, tipo_entrega, cantidad, precio)
);

