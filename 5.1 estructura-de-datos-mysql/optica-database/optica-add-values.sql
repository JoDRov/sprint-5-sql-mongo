-- --------------------------------------------------------------------------------------------------------------------- 1. Añadimos proveedores

DELETE FROM info_empresa;

INSERT INTO info_empresa (empresa_nombre, calle, numero, piso, puerta, ciudad, codigo_postal, pais, telefono, fax)
VALUES
("Cul d'Ampolla", 'Patata', 9, 4, 2, 'Viladecans', 08840, 'España', 372917483, 7683236284693);

-- --------------------------------------------------------------------------------------------------------------------- 1. Añadimos proveedores

DELETE FROM proveedores;

INSERT INTO proveedores (proveedor_nombre, calle, numero, piso, puerta, ciudad, codigo_postal, pais, telefono, fax, nif)
VALUES
('Missandtrendy Sunglasses', 'Patata', 4, 2, 1, 'Ivenwill', 68238, 'España', 738219237, 2817238219029, '219341022T'),
('Pherhaps&CO', 'Tocino', 3, 7, 2, 'Corpenius', 56227, 'España', 721849273, 2318763315241, '893627369G'),
('Cint Water', 'Acuoso', 27, 6, 4, 'Somewhere', 27381, 'España', 632897467, 5753267487351, '823619678P'),
('Prosound', 'Rocoso', 45, 6, 3, 'Ivenwill', 58238, 'España', 837927374, 4783256264894, '832917389Z'),
('Nextround', 'Piruleta', 1, 2, 3, 'Stormwell', 27673, 'España', 836710964, 9627657823763, '738219647T');

-- --------------------------------------------------------------------------------------------------------------------- 2. Añadimos marcas

DELETE FROM marcas;

INSERT INTO marcas (marca_nombre, proveedor_id)
VALUES 
('ray_ban', 1),
('oakley', 1),
('polaroid', 1),
('carrera', 1),
('arnette', 2),
('tous', 2),
('police', 2),
('carolina_herrera', 3),
('vogue', 3),
('persol', 4),
('prada', 4),
('tom_ford', 4),
('adidas', 4),
('dior', 4),
('lacoste', 5),
('hugo_boss', 5),
('timberland', 5),
('munich', 5),
('trend', 5),
('beo', 5);

-- --------------------------------------------------------------------------------------------------------------------- 3. Añadimos graduaciones

DELETE FROM graduaciones;

INSERT INTO graduaciones (graduacion_nombre)
VALUES
('1.5'),
('1.6'),
('1.67'),
('1.74');

-- --------------------------------------------------------------------------------------------------------------------- 4. Añadimos monturas

DELETE FROM monturas;

INSERT INTO monturas (montura_nombre)
VALUES
('flotante'),
('pasta'),
('metalica');

-- --------------------------------------------------------------------------------------------------------------------- 5. Añadimos colores

DELETE FROM colores;

INSERT INTO colores (color_nombre)
VALUES 
('rojo'),
('azul'),
('verde'),
('amarillo'),
('rosa'),
('negro');

-- --------------------------------------------------------------------------------------------------------------------- 5. Añadimos gafas

DELETE FROM gafas;

INSERT INTO gafas (gafa_nombre, marca_id, graduacion_id_izq, graduacion_id_der, montura_id, color_montura_id, color_cristal_id, precio)
VALUES
('super_gafa', '7', 1, 1, 3, 1, 6, 1250),
('bat_gafas', '1', 3, 2, 2, 2, 2, 299),
('robinson', '9', 4, 2, 1, 3, 4, 50),
('cortels', '20', 3, 1, 1, 4, 5, 70),
('rocker', '17', 3, 4, 2, 5, 1, 119),
('zumber_gafas', '15', 1, 4, 3, 6, 2, 199);

DELETE FROM clientes;

INSERT INTO clientes (cliente_nombre, cliente_apellido, calle, numero, piso, puerta, ciudad, codigo_postal, pais, telefono, correo_electronico)
VALUES 
('Manolo', 'Diaz', 6, 4, 2, 2, 'RoadSpeed', 38210, 'España', 372819465, 'manolin@gmail.com'),
('Carmen', 'Arroyo', 3, 1, 1, 1, 'StrongWill', 27381, 'España', 738261978, 'mencar@gmail.com'),
('Colt', 'McCane', 12, 7, 4, 4, 'SummerVille', 87419, 'España', 874291647, 'wigles@gmail.com'),
('Ander', 'ElRocas', 5, 2, 1, 5, 'Stratholme', 73826, 'España', 283719476, 'andersito_maravillas@gmail.com'),
('Kimimaro', 'Lee', 21, 10, 4, 2, 'Brodway', 64738, 'España', 754832907, 'kimi@gmail.com');

DELETE FROM rangos;

INSERT INTO rangos (rango_nombre)
VALUES 
('empleado'),
('superior/entrenador'),
('ceo');

DELETE FROM empleados;

INSERT INTO empleados (rango_id, empleado_nombre, empleado_apellido, calle, numero, piso, puerta, ciudad, codigo_postal, pais, telefono, correo_electronico)
VALUES 
(1, 'Juanjo', 'Amoros', 'Solsticio', 4, 6, 3, 'Viladecans', 08840, 'España', 743826487, 'Juanjito@gmail.com'),
(1, 'John', 'Salchichon', 'Goro', 8, 7, 5, 'Transels', 08870, 'España', 973212837, 'Junji@gmail.com'),
(1, 'Paula', 'DeMateis', 'Younno', 2, 4, 4, 'Mordor', 08810, 'España', 832746378, 'PauDeMa@gmail.com'),
(2, 'Honimun', 'Shahiri', 'Genova', 5, 3, 1, 'Tornstein', 08880, 'España', 837462127, 'honsha@gmail.com'),
(3, 'Bossardo', 'Bossi', 'Cotiry', 7, 7, 2, 'Cornella', 08860, 'España', 384598372, 'Pomulo@gmail.com');

DELETE FROM ventas;

INSERT INTO ventas (gafa_id, cliente_id, empleado_id)
VALUES
(1, 2, 4),
(3, 4, 1),
(4, 5, 1),
(2, 3, 2),
(5, 4, 3),
(3, 2, 1),
(6, 3, 2),
(3, 4, 5);

