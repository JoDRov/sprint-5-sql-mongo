-- Inserting data into clientes table
INSERT INTO clientes (cliente_nombre, cliente_apellido, calle, numero, puerta, codigo_postal, localidad, provincia, numero_telefono) 
VALUES 
('John', 'Doe', 'Main Street', 123, 1, '12345', 'Springfield', 'Anystate', 555123456),
('Jane', 'Smith', 'Oak Avenue', 456, 2, '54321', 'Riverside', 'Anystate', 555987654),
('Alice', 'Johnson', 'Cedar Lane', 789, 3, '67890', 'Hill Valley', 'Anystate', 555246813),
('Maria', 'Garcia', 'Sunrise Avenue', 101, 10, '54321', 'Sunnydale', 'Anystate', 555369258),
('Pedro', 'Martinez', 'Ocean Drive', 555, 20, '98765', 'Seaville', 'Anystate', 555147258);

-- Inserting data into productos table
INSERT INTO productos (descripcion, producto_nombre, producto_imagen, categoria_id, categoria_pizza_id, precio) 
VALUES 
('Pepperoni', 'Pizza Pepperoni', 'pepperoni.jpg', 1, 1, 10),
('Margarita', 'Pizza Margarita', 'margarita.jpg', 1, 2, 8),
('Refresco', 'Coca-Cola', 'cola.jpg', 2, 0, 2),
('Agua', 'Agua Mineral', 'agua.jpg', 2, 0, 1),
('Hamburguesa de Ternera', 'Hamburguesa Clásica', 'classic_burger.jpg', 3, 0, 6),
('Hamburguesa de Pollo', 'Hamburguesa de Pollo', 'chicken_burger.jpg', 3, 0, 6);

-- Inserting data into entregas table
INSERT INTO entregas (entrega_tipo) 
VALUES 
('Domicilio'),
('Recogida en tienda');

-- Inserting data into tiendas table
INSERT INTO tiendas (tienda_nombre, calle, numero, puerta, codigo_postal, localidad, provincia) 
VALUES 
('Bobs Burger', 'Broadway', 19, 4, '13579', 'Metroville', 'Anystate'),
('Freddys' ,'Elm Street', 21, 5, '98765', 'Gotham', 'Anystate'),
('Feast Show', 'Sunset Boulevard', 54, 6, '24680', 'Springfield', 'Anystate');

-- Inserting data into pedidos table
INSERT INTO pedidos (entrega_id, cliente_id, empleado_id, producto_id, cantidad, tienda_id) 
VALUES 
(1, 1, 3, 1, 2, 2),
(1, 1, 2, 3, 2, 2),
(2, 3, 2, 5, 1, 3),
(2, 5, 1, 3, 3, 1);

-- Inserting data into categorias table
INSERT INTO categorias (categoria_nombre) 
VALUES 
('Pizzas'),
('Bebidas'),
('Hamburguesas');

INSERT INTO categorias_pizzas (categoria_pizza_nombre)
VALUES
('Carne'),
('Basica');

-- Inserting data into empleados table
INSERT INTO empleados (empleado_nombre, empleado_apellido, nif, telefono, puesto) 
VALUES 
('Michael', 'Jordan', '12345678A', 555112233, 'Delivery'),
('Jennifer', 'Lopez', '87654321B', 555998877, 'Cashier'),
('Tom', 'Hanks', '98765432C', 555334455, 'Chef');