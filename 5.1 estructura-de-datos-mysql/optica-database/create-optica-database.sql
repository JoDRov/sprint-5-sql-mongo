DROP DATABASE IF EXISTS optica_db;

CREATE DATABASE optica_db;

USE optica_db;

DROP TABLE IF EXISTS info_empresa;

CREATE TABLE info_empresa (
	empresa_id INT NOT NULL AUTO_INCREMENT,
	empresa_nombre VARCHAR (50) NOT NULL UNIQUE,
    calle VARCHAR (50) NOT NULL,
	numero INT NOT NULL,
	piso VARCHAR (50) NOT NULL,
	puerta VARCHAR (50) NOT NULL,
	ciudad VARCHAR (50) NOT NULL,
	codigo_postal INT NOT NULL,
	pais VARCHAR (50) NOT NULL,
	telefono VARCHAR (9) NOT NULL UNIQUE,
	fax VARCHAR (50) NOT NULL UNIQUE,
    PRIMARY KEY (empresa_id)
);

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

DROP TABLE IF EXISTS graduaciones;

CREATE TABLE graduaciones (
	graduacion_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    graduacion_nombre VARCHAR (50) NOT NULL UNIQUE,
    PRIMARY KEY (graduacion_id)
);

DROP TABLE IF EXISTS monturas;

CREATE TABLE monturas (
	montura_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    montura_nombre VARCHAR (50) NOT NULL UNIQUE,
    PRIMARY KEY (montura_id)
);

DROP TABLE IF EXISTS colores;

CREATE TABLE colores (
	color_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    color_nombre VARCHAR (50) NOT NULL UNIQUE,
    PRIMARY KEY (color_id)
);

DROP TABLE IF EXISTS gafas;

CREATE TABLE gafas (
	gafa_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    gafa_nombre VARCHAR (50) NOT NULL,
	marca_id INT NOT NULL,
    graduacion_id_izq INT NOT NULL,
    graduacion_id_der INT NOT NULL,
    montura_id INT NOT NULL,
    color_montura_id INT NOT NULL,
    color_cristal_id INT NOT NULL,
    precio INT NOT NULL,
    FOREIGN KEY (marca_id) REFERENCES marcas(marca_id),
    FOREIGN KEY (graduacion_id_izq) REFERENCES graduaciones(graduacion_id),
    FOREIGN KEY (graduacion_id_der) REFERENCES graduaciones(graduacion_id),
    FOREIGN KEY (color_montura_id) REFERENCES colores(color_id),
    FOREIGN KEY (color_cristal_id) REFERENCES colores(color_id),
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

DROP TABLE IF EXISTS rangos;

CREATE TABLE rangos (
	rango_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    rango_nombre VARCHAR(50),
    PRIMARY KEY (rango_id)
);

DROP TABLE IF EXISTS empleados;

CREATE TABLE empleados (
	empleado_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    rango_id INT NOT NULL,
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
    FOREIGN KEY (rango_id) REFERENCES rangos(rango_id),
	PRIMARY KEY (empleado_id)
);

DROP TABLE IF EXISTS ventas;

CREATE TABLE ventas (
	venta_id INT NOT NULL AUTO_INCREMENT,
    gafa_id INT NOT NULL,
    fecha_venta TIMESTAMP NOT NULL DEFAULT (NOW()),
    cliente_id INT NOT NULL,
    empleado_id INT NOT NULL,
    PRIMARY KEY (venta_id, gafa_id, fecha_venta)
)
