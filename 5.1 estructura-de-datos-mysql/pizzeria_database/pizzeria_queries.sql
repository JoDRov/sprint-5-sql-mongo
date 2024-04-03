-- 1. Llista quants productes de tipus “Begudes”. s'han venut en una determinada localitat.

SELECT * FROM productos pr JOIN categorias USING (categoria_id) JOIN pedidos pe USING (producto_id) WHERE categoria_id = 2;

-- 2. Llista quantes comandes ha efectuat un determinat empleat/da.

SELECT e.empleado_id, e.empleado_nombre, e.empleado_apellido, e.nif, e.telefono, e.puesto, COUNT(*) AS pedidos_efectuados FROM pedidos P JOIN empleados e USING (empleado_id) WHERE empleado_id = 2 GROUP BY empleado_id