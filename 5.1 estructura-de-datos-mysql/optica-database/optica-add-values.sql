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

-- --------------------------------------------------------------------------------------------------------------------- 3. Añadimos gafas

DELETE FROM gafas;

INSERT INTO gafas (gafa_nombre, marca_id, graduacion_izq, graduacion_der, tipo_montura, color_montura, color_cristal, precio)
VALUES
('super_gafa', 7, 1.5, 1.6, 'flotante', 'negro', 'rojo', 1250),
('bat_gafas', 1, 1.74, 1.5, 'pasta', 'rojo', 'azul', 299),
('robinson', 9, 1.5, 1.5, 'flotante', 'azul', 'amarillo', 50),
('cortels', 20, 1.74, 1.67, 'metalica', 'naranja', 'negro', 70),
('rocker', 17, 1.5, 1.59, 'flotante', 'negro', 'naranja', 119),
('zumber_gafas', 15, 1.5, 1.6, 'pasta', 'marron', 'verde', 199);

-- --------------------------------------------------------------------------------------------------------------------- 3. Añadimos clientes

DELETE FROM clientes;

INSERT INTO clientes (cliente_nombre, cliente_apellido, calle, numero, piso, puerta, ciudad, codigo_postal, pais, telefono, correo_electronico)
VALUES 
('Manolo', 'Diaz', 6, 4, 2, 2, 'RoadSpeed', 38210, 'España', 372819465, 'manolin@gmail.com'),
('Carmen', 'Arroyo', 3, 1, 1, 1, 'StrongWill', 27381, 'España', 738261978, 'mencar@gmail.com'),
('Colt', 'McCane', 12, 7, 4, 4, 'SummerVille', 87419, 'España', 874291647, 'wigles@gmail.com'),
('Ander', 'ElRocas', 5, 2, 1, 5, 'Stratholme', 73826, 'España', 283719476, 'andersito_maravillas@gmail.com'),
('Kimimaro', 'Lee', 21, 10, 4, 2, 'Brodway', 64738, 'España', 754832907, 'kimi@gmail.com');

DELETE FROM empleados;

INSERT INTO empleados (rango, empleado_nombre, empleado_apellido, calle, numero, piso, puerta, ciudad, codigo_postal, pais, telefono, correo_electronico)
VALUES 
('vendedor', 'Juanjo', 'Amoros', 'Solsticio', 4, 6, 3, 'Viladecans', 08840, 'España', 743826487, 'Juanjito@gmail.com'),
('vendedor', 'John', 'Salchichon', 'Goro', 8, 7, 5, 'Transels', 08870, 'España', 973212837, 'Junji@gmail.com'),
('vendedor', 'Paula', 'DeMateis', 'Younno', 2, 4, 4, 'Mordor', 08810, 'España', 832746378, 'PauDeMa@gmail.com'),
('vendedor', 'Honimun', 'Shahiri', 'Genova', 5, 3, 1, 'Tornstein', 08880, 'España', 837462127, 'honsha@gmail.com'),
('ceo', 'Bossardo', 'Bossi', 'Cotiry', 7, 7, 2, 'Cornella', 08860, 'España', 384598372, 'Pomulo@gmail.com');

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