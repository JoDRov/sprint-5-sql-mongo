-- INFO CATEGORIAS PIZZAS

SELECT 
	producto_id,
    descripcion,
    producto_nombre,
    producto_imagen,
    categoria_id,
    categoria_pizza_nombre AS tipo_pizza,
    precio
FROM productos
JOIN categorias_pizzas USING (categoria_pizza_id)
ORDER BY producto_id;

-- INFO PEDIDOS

SELECT 
	pedido_id,
    cliente_id,
    c.cliente_nombre,
    c.cliente_apellido,
    fecha_pedido,
    e.entrega_tipo,
    p.producto_id,
    p.producto_nombre,
    cantidad,
    p.precio AS precio_unidad,
    p.precio * cantidad AS precio_total,
    tienda_id,
    t.tienda_nombre
FROM pedidos
JOIN entregas e USING (entrega_id)
JOIN clientes c USING (cliente_id)
JOIN productos p USING (producto_id)
JOIN tiendas t USING (tienda_id);