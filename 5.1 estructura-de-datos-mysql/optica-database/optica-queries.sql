USE optica_db;

-- 1. Llista el total de compres d’un client/a.

SELECT * FROM clientes c JOIN ventas v USING (cliente_id) WHERE c.cliente_id = 3;

-- 2. Llista les diferents ulleres que ha venut un empleat durant un any.

SELECT * FROM gafas g JOIN ventas USING (gafa_id) JOIN empleados e USING (empleado_id) WHERE empleado_id = 1;

-- 3. Llista els diferents proveïdors que han subministrat ulleres venudes amb èxit per l'òptica.

SELECT DISTINCT m.proveedor_id, prv.proveedor_nombre, COUNT(*) AS numero_de_ventas FROM gafas gf JOIN marcas m USING (marca_id) JOIN ventas v USING (gafa_id) JOIN proveedores prv USING (proveedor_id) GROUP BY m.proveedor_id, prv.proveedor_nombre ORDER BY prv.proveedor_id