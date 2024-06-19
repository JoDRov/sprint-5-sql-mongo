DROP DATABASE IF EXISTS optica_db;

CREATE DATABASE optica_db;

USE optica_db;

DROP TABLE IF EXISTS proveedores;

CREATE TABLE proveedores (
	proveedor_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    proveedor_nombre VARCHAR (50) NOT NULL,
	calle VARCHAR (50) NOT NULL,
	numero INT NOT NULL,
	piso VARCHAR (50) NOT NULL,
	puerta VARCHAR (50) NOT NULL,
	ciudad VARCHAR (50) NOT NULL,
	codigo_postal INT NOT NULL,
	pais VARCHAR (50) NOT NULL,
	telefono VARCHAR (9) NOT NULL UNIQUE,
	fax VARCHAR (50) NOT NULL UNIQUE,
	nif VARCHAR (10) NOT NULL UNIQUE,
	PRIMARY KEY (proveedor_id)
);

DROP TABLE IF EXISTS marcas;

CREATE TABLE marcas (
	marca_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    marca_nombre VARCHAR (50) NOT NULL,
    proveedor_id INT NOT NULL,
    FOREIGN KEY (proveedor_id) REFERENCES proveedores(proveedor_id),
    PRIMARY KEY (marca_id)
);

DROP TABLE IF EXISTS gafas;

CREATE TABLE gafas (
	gafa_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    gafa_nombre VARCHAR (50) NOT NULL,
	marca_id INT NOT NULL,
    graduacion_izq DOUBLE NOT NULL,
    graduacion_der DOUBLE NOT NULL,
    tipo_montura VARCHAR (50) NOT NULL,
    color_montura VARCHAR(50) NOT NULL,
    color_cristal VARCHAR(50) NOT NULL,
    precio INT NOT NULL,
    FOREIGN KEY (marca_id) REFERENCES marcas(marca_id),
    PRIMARY KEY (gafa_id)
);

DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes (
	cliente_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    cliente_nombre VARCHAR (50) NOT NULL,
    cliente_apellido VARCHAR (50) NOT NULL,
    calle VARCHAR (50) NOT NULL,
	numero INT NOT NULL,
	piso VARCHAR (50) NOT NULL,
	puerta VARCHAR (50) NOT NULL,
	ciudad VARCHAR (50) NOT NULL,
	codigo_postal INT NOT NULL,
	pais VARCHAR (50) NOT NULL,
    telefono VARCHAR (9) NOT NULL UNIQUE,
    correo_electronico VARCHAR (50) NOT NULL UNIQUE,
    fecha_registro TIMESTAMP NOT NULL DEFAULT (NOW()),
    recomendado_por INT DEFAULT NULL,
    PRIMARY KEY (cliente_id)
);

DROP TABLE IF EXISTS empleados;

CREATE TABLE empleados (
	empleado_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    rango VARCHAR (50) NOT NULL,
    empleado_nombre VARCHAR (50) NOT NULL,
    empleado_apellido VARCHAR (50) NOT NULL,
    calle VARCHAR (50) NOT NULL,
	numero INT NOT NULL,
	piso VARCHAR (50) NOT NULL,
	puerta VARCHAR (50) NOT NULL,
	ciudad VARCHAR (50) NOT NULL,
	codigo_postal INT NOT NULL,
	pais VARCHAR (50) NOT NULL,
    telefono VARCHAR (9) NOT NULL UNIQUE,
    correo_electronico VARCHAR (50) NOT NULL UNIQUE,
	PRIMARY KEY (empleado_id)
);

DROP TABLE IF EXISTS ventas;

CREATE TABLE ventas (
	venta_id INT NOT NULL AUTO_INCREMENT,
    gafa_id INT NOT NULL,
    fecha_venta TIMESTAMP NOT NULL DEFAULT (NOW()),
    cliente_id INT NOT NULL,
    empleado_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
    FOREIGN KEY (empleado_id) REFERENCES empleados(empleado_id),
    FOREIGN KEY (gafa_id) REFERENCES gafas(gafa_id),
    PRIMARY KEY (venta_id, gafa_id, fecha_venta)
)
