-- INFO PROVEEDORES 

SELECT *
FROM proveedores;

-- INFO GAFAS

SELECT 
	gafa_id, 
	gafa_nombre, 
    mar.marca_nombre AS marca, 
    grad_izq.graduacion_nombre AS graduacion_izquierda, 
    grad_der.graduacion_nombre AS graduacion_derecha,
    mont.montura_nombre AS montura,
    col_mont.color_nombre AS color_montura,
    col_cris.color_nombre AS color_cristal,
    precio
FROM gafas
JOIN marcas mar 
	USING (marca_id)
JOIN graduaciones grad_izq
	ON graduacion_id_izq = grad_izq.graduacion_id
JOIN graduaciones grad_der
	ON graduacion_id_der = grad_der.graduacion_id
JOIN monturas mont 
	USING (montura_id)
JOIN colores col_mont
	ON color_montura_id = col_mont.color_id
JOIN colores col_cris
	ON color_cristal_id = col_cris.color_id;
    
-- INFO CLIENTES 

SELECT *
FROM clientes;

-- INFO ARTICULOS VENDIDOS Y SUS VENDEDORES

SELECT 
	venta_id,
    gafa_nombre,
    fecha_venta,
    cliente_id,
    cliente_nombre,
    cliente_apellido,
    empleado_id AS vendedor_id,
    empleado_nombre AS vendedor_nombre, 
    empleado_apellido AS vendedor_apellido
FROM optica_db.ventas
JOIN gafas USING (gafa_id)
JOIN clientes USING (cliente_id)
JOIN empleados USING (empleado_id)
    