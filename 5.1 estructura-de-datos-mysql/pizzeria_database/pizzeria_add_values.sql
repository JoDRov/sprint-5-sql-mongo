INSERT INTO clientes (cliente_nombre, cliente_apellido, calle, numero, puerta, codigo_postal, localidad, provincia, numero_telefono) 
VALUES 
('John', 'Doe', 'Main Street', 123, 1, '12345', 'Springfield', 'Anystate', 555123456),
('Jane', 'Smith', 'Oak Avenue', 456, 2, '54321', 'Riverside', 'Anystate', 555987654),
('Alice', 'Johnson', 'Cedar Lane', 789, 3, '67890', 'Hill Valley', 'Anystate', 555246813),
('Maria', 'Garcia', 'Sunrise Avenue', 101, 10, '54321', 'Sunnydale', 'Anystate', 555369258),
('Pedro', 'Martinez', 'Ocean Drive', 555, 20, '98765', 'Seaville', 'Anystate', 555147258);

INSERT INTO productos (descripcion, producto_nombre, producto_imagen, categoria, categoria_pizza, precio) 
VALUES 
('Pepperoni', 'Pizza Pepperoni', 'pepperoni.jpg', 'pizzas', 'carne', 10),
('Margarita', 'Pizza Margarita', 'margarita.jpg', 'pizzas', 'basica', 8),
('Refresco', 'Coca-Cola', 'cola.jpg', 'bebidas', 'no pizza', 2),
('Agua', 'Agua Mineral', 'agua.jpg', 'bebidas', 'no pizza', 1),
('Hamburguesa de Ternera', 'Hamburguesa Clásica', 'classic_burger.jpg', 'hamburguesas', 'no pizza', 6),
('Hamburguesa de Pollo', 'Hamburguesa de Pollo', 'chicken_burger.jpg', 'hamburguesas', 'no pizza', 6);

INSERT INTO tiendas (tienda_nombre, calle, numero, puerta, codigo_postal, localidad, provincia) 
VALUES 
('Bobs Burger', 'Broadway', 19, 4, '13579', 'Metroville', 'Anystate'),
('Freddys' ,'Elm Street', 21, 5, '98765', 'Gotham', 'Anystate'),
('Feast Show', 'Sunset Boulevard', 54, 6, '24680', 'Springfield', 'Anystate');

INSERT INTO empleados (empleado_nombre, empleado_apellido, nif, telefono, puesto) 
VALUES 
('Michael', 'Jordan', '12345678A', 555112233, 'Delivery'),
('Jennifer', 'Lopez', '87654321B', 555998877, 'Cashier'),
('Tom', 'Hanks', '98765432C', 555334455, 'Chef');

INSERT INTO pedidos (tipo_entrega, cliente_id, empleado_id, producto_id, cantidad, tienda_id, precio) 
VALUES 
('Recogida en tienda', 1, 3, 1, 2, 2, 3),
('Recogida en tienda', 1, 2, 3, 2, 2, 7),
('Domicilio', 3, 2, 5, 1, 3, 5),
('Recogida en tienda', 5, 1, 3, 3, 1, 4);

