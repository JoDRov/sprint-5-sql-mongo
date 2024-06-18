-- QUERIES TIENDA ------------------------------------------------------------------------------------------------------------------ QUERIES TIENDA

USE tienda;

-- 1. Llista el nom de tots els productes que hi ha en la taula producto.

SELECT nombre FROM producto;

-- 2. Llista els noms i els preus de tots els productes de la taula producto.

SELECT nombre, precio FROM producto;

-- 3. Llista totes les columnes de la taula producto.

SELECT * FROM producto;

-- 4. Llista el nom dels productes, el preu en euros i el preu en dòlars estatunidencs (USD).

SELECT nombre, precio, round(precio * 1.08, 2) AS 'dolares' FROM producto;

-- 5. Llista el nom dels productes, el preu en euros i el preu en dòlars estatunidencs (USD). Utilitza els següents àlies per a les columnes: nom de producto, euros, dòlars.

SELECT nombre AS 'nombre', precio AS 'euros', round(precio * 1.08, 2) AS 'dolares' FROM producto;

-- 6. Llista els noms i els preus de tots els productes de la taula producto, convertint els noms a majúscula.

SELECT UPPER(nombre) AS nombre, precio FROM producto;

-- 7. Llista els noms i els preus de tots els productes de la taula producto, convertint els noms a minúscula.

SELECT LOWER(nombre) AS nombre, precio FROM producto;

-- 8. Llista el nom de tots els fabricants en una columna, i en una altra columna obtingui en majúscules els dos primers caràcters del nom del fabricant.

SELECT nombre, UPPER(LEFT(nombre, 2)) FROM producto;

-- 9. Llista els noms i els preus de tots els productes de la taula producto, arrodonint el valor del preu.

SELECT nombre, ROUND(precio) AS precio_redondeado FROM producto;

-- 10. Llista els noms i els preus de tots els productes de la taula producto, truncant el valor del preu per a mostrar-lo sense cap xifra decimal.

SELECT nombre, TRUNCATE(precio, 0) AS precio_truncado FROM producto;

-- 11. Llista el codi dels fabricants que tenen productes en la taula producto.

SELECT f.codigo FROM fabricante f JOIN producto p ON f.codigo = p.codigo_fabricante;

-- 12. Llista el codi dels fabricants que tenen productes en la taula producto, eliminant els codis que apareixen repetits.

SELECT DISTINCT f.codigo FROM fabricante f JOIN producto p ON f.codigo = p.codigo_fabricante;

-- 13. Llista els noms dels fabricants ordenats de manera ascendent.

SELECT nombre FROM fabricante ORDER BY nombre ASC;

-- 14. Llista els noms dels fabricants ordenats de manera descendent.

SELECT nombre FROM fabricante ORDER BY nombre DESC;

-- 15 Llista els noms dels productes ordenats, en primer lloc, pel nom de manera ascendent i, en segon lloc, pel preu de manera descendent.

SELECT nombre, precio FROM producto ORDER BY nombre ASC, precio DESC;

-- 16. Retorna una llista amb les 5 primeres files de la taula fabricante.

SELECT * FROM fabricante LIMIT 5;

-- 17. Retorna una llista amb 2 files a partir de la quarta fila de la taula fabricante. La quarta fila també s'ha d'incloure en la resposta.

SELECT * FROM fabricante LIMIT 2 OFFSET 3;

-- 18. Llista el nom i el preu del producte més barat. (Utilitza solament les clàusules ORDER BY i LIMIT). NOTA: Aquí no podria usar MIN(preu), necessitaria GROUP BY.

SELECT nombre, precio FROM producto ORDER BY precio ASC LIMIT 1;

-- 19. Llista el nom i el preu del producte més car. (Utilitza solament les clàusules ORDER BY i LIMIT). NOTA: Aquí no podria usar MAX(preu), necessitaria GROUP BY.

SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;

-- 20. Llista el nom de tots els productes del fabricant el codi de fabricant del qual és igual a 2.

SELECT nombre FROM producto WHERE codigo_fabricante = 2;

-- 21. Retorna una llista amb el nom del producte, preu i nom de fabricant de tots els productes de la base de dades.

SELECT p.nombre, p.precio, f.nombre AS nombre_fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo;

-- 22. Retorna una llista amb el nom del producte, preu i nom de fabricant de tots els productes de la base de dades. Ordena el resultat pel nom del fabricant, per ordre alfabètic.

SELECT p.nombre, p.precio, f.nombre AS nombre_fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo ORDER BY nombre_fabricante ASC;

-- 23. Retorna una llista amb el codi del producte, nom del producte, codi del fabricador i nom del fabricador, de tots els productes de la base de dades.

SELECT p.codigo AS codigo_producto, p.nombre AS nombre_producto, f.codigo AS codigo_fabricante, f.nombre AS nombre_fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo;

-- 24. Retorna el nom del producte, el seu preu i el nom del seu fabricant, del producte més barat.

SELECT p.nombre, p.precio, f.nombre AS nombre_fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo ORDER BY precio ASC LIMIT 1;

-- 25. Retorna el nom del producte, el seu preu i el nom del seu fabricant, del producte més car.

SELECT p.nombre, p.precio, f.nombre AS nombre_fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo ORDER BY precio DESC LIMIT 1;

-- 26. Retorna una llista de tots els productes del fabricant Lenovo.

SELECT * FROM producto WHERE codigo_fabricante = 2;

-- 27. Retorna una llista de tots els productes del fabricant Crucial que tinguin un preu major que 200 €.

SELECT * FROM producto WHERE codigo_fabricante = 6 AND precio > 200;

-- 28. Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packard y Seagate. Sense utilitzar l'operador IN.

SELECT * FROM producto WHERE codigo_fabricante = 1 OR codigo_fabricante = 3 OR codigo_fabricante = 5;

-- 29. Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packard y Seagate. Fent servir l'operador IN.

SELECT * FROM producto WHERE codigo_fabricante IN (1, 3, 5);

-- 30. Retorna un llistat amb el nom i el preu de tots els productes dels fabricants el nom dels quals acabi per la vocal e.

SELECT p.nombre, p.precio FROM producto p WHERE p.nombre LIKE ('%e');

SELECT p.nombre, p.precio, f.nombre FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre LIKE ('%e');
-- No sabia muy bien si se referia a una cosa o a otra asi que he hecho las dos

-- 31. Retorna un llistat amb el nom i el preu de tots els productes el nom de fabricant dels quals contingui el caràcter w en el seu nom.

SELECT p.nombre, p.precio, f.nombre AS nombre_fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE p.nombre LIKE ('%w%');

SELECT p.nombre, p.precio, f.nombre AS nombre_fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre LIKE ('%w%');
-- Lo mismo de antes no me ha acabado de quedar claro y lo he hecho de dos maneras 

-- 32. Retorna un llistat amb el nom de producte, preu i nom de fabricant, de tots els productes que tinguin un preu major o igual a 180 €. Ordena el resultat, en primer lloc, pel preu (en ordre descendent) i, en segon lloc, pel nom (en ordre ascendent).

SELECT p.nombre, p.precio, f.nombre AS nombre_fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE p.precio > 180 ORDER BY p.precio DESC, p.nombre ASC;

-- 33. Retorna un llistat amb el codi i el nom de fabricant, solament d'aquells fabricants que tenen productes associats en la base de dades.

SELECT DISTINCT f.codigo, f.nombre AS nombre_fabricante FROM fabricante f JOIN producto p ON f.codigo = p.codigo_fabricante;

-- 34. Retorna un llistat de tots els fabricants que existeixen en la base de dades, juntament amb els productes que té cadascun d'ells. El llistat haurà de mostrar també aquells fabricants que no tenen productes associats.

SELECT * FROM fabricante f LEFT JOIN producto p ON f.codigo = p.codigo_fabricante;

-- 35. Retorna un llistat on només apareguin aquells fabricants que no tenen cap producte associat.

SELECT * FROM fabricante f LEFT JOIN producto p ON f.codigo = p.codigo_fabricante WHERE p.codigo IS NULL;

-- 36. Retorna tots els productes del fabricador Lenovo. (Sense utilitzar INNER JOIN).

SELECT * FROM fabricante f LEFT JOIN producto p ON f.codigo = p.codigo_fabricante WHERE f.codigo = 2;

-- 37. Retorna totes les dades dels productes que tenen el mateix preu que el producte més car del fabricant Lenovo. (Sense usar INNER JOIN).

SELECT * FROM fabricante f LEFT JOIN producto p ON f.codigo = p.codigo_fabricante WHERE f.codigo != 2 AND p.precio = 559 ORDER BY precio  DESC LIMIT 1; -- NOT CORRECT

-- 38. Llista el nom del producte més car del fabricant Lenovo.

SELECT * FROM fabricante f LEFT JOIN producto p ON f.codigo = p.codigo_fabricante WHERE f.codigo = 2 ORDER BY p.precio DESC LIMIT 1;

-- 39. Llista el nom del producte més barat del fabricant Hewlett-Packard.

SELECT * FROM fabricante f LEFT JOIN producto p ON f.codigo = p.codigo_fabricante WHERE f.codigo = 3 ORDER BY p.precio ASC LIMIT 1;

-- 40. Retorna tots els productes de la base de dades que tenen un preu major o igual al producte més car del fabricant Lenovo.

SELECT * FROM producto WHERE precio >= (SELECT MAX(precio) FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Lenovo'));

-- 41. Llesta tots els productes del fabricant Asus que tenen un preu superior al preu mitjà de tots els seus productes.

SELECT * FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Asus') AND precio > (SELECT AVG(precio) FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Asus'));

-- QUERIES UNIVERSITAT ------------------------------------------------------------------------------------------------------------------ QUERIES UNIVERSITAT

USE universidad;

-- 1. Retorna un llistat amb el primer cognom, segon cognom i el nom de tots els/les alumnes. El llistat haurà d'estar ordenat alfabèticament de menor a major pel primer cognom, segon cognom i nom.

SELECT p.apellido1, p.apellido2, p.nombre, p.tipo FROM persona p WHERE p.tipo = 'alumno' ORDER BY apellido1 ASC, apellido2 ASC, nombre ASC;

-- 2. Esbrina el nom i els dos cognoms dels alumnes que no han donat d'alta el seu número de telèfon en la base de dades.

SELECT p.nombre, p.apellido1, p.apellido2, p.telefono, p.tipo FROM persona p WHERE p.tipo = 'alumno' AND p.telefono IS NULL;

-- 3. Retorna el llistat dels alumnes que van néixer en 1999.

SELECT * FROM persona p WHERE p.fecha_nacimiento BETWEEN '1999-01-01' AND '2000-01-01';

-- 4. Retorna el llistat de professors/es que no han donat d'alta el seu número de telèfon en la base de dades i a més el seu NIF acaba en K.

SELECT * FROM persona p WHERE p.tipo = 'profesor' AND p.telefono IS NULL AND p.nif LIKE '%K';

-- 5. Retorna el llistat de les assignatures que s'imparteixen en el primer quadrimestre, en el tercer curs del grau que té l'identificador 7.

SELECT * FROM asignatura WHERE cuatrimestre = 1 AND curso = 3 AND id_grado = 7;

-- 6. Retorna un llistat dels professors/es juntament amb el nom del departament al qual estan vinculats. El llistat ha de retornar quatre columnes, primer cognom, segon cognom, nom i nom del departament. El resultat estarà ordenat alfabèticament de menor a major pels cognoms i el nom.

SELECT p.apellido1, p.apellido2, p.nombre, d.nombre FROM persona p JOIN profesor prf ON p.id = prf.id_profesor JOIN departamento d ON prf.id_departamento = d.id ORDER BY p.apellido1 ASC, p.apellido2 ASC, p.nombre ASC;

-- 7. Retorna un llistat amb el nom de les assignatures, any d'inici i any de fi del curs escolar de l'alumne/a amb NIF 26902806M.

SELECT asig.nombre AS nombre_asignatura, ce.anyo_inicio, ce.anyo_fin FROM alumno_se_matricula_asignatura asm JOIN curso_escolar ce ON asm.id_curso_escolar = ce.id JOIN asignatura asig ON asm.id_asignatura = asig.id JOIN persona p ON asm.id_alumno = p.id WHERE p.nif = '26902806M';

-- 8. Retorna un llistat amb el nom de tots els departaments que tenen professors/es que imparteixen alguna assignatura en el Grau en Enginyeria Informàtica (Pla 2015).

SELECT DISTINCT d.nombre AS nombre_departamento FROM departamento d JOIN profesor pr ON d.id = pr.id_departamento JOIN asignatura asig ON pr.id_profesor = asig.id_profesor JOIN grado g ON asig.id_grado = g.id WHERE g.id = 4;

-- 9. Retorna un llistat amb tots els alumnes que s'han matriculat en alguna assignatura durant el curs escolar 2018/2019.

SELECT p.nombre AS nombre_alumno, p.apellido1 AS primer_apellido, p.apellido2 AS segundo_apellido, p.nif AS nif_alumno FROM alumno_se_matricula_asignatura asm JOIN curso_escolar ce ON asm.id_curso_escolar = ce.id JOIN persona p ON asm.id_alumno = p.id WHERE ce.anyo_inicio = 2018 AND ce.anyo_fin = 2019;

-- Resol les 6 següents consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN.

-- 1. Retorna un llistat amb els noms de tots els professors/es i els departaments que tenen vinculats. El llistat també ha de mostrar aquells professors/es que no tenen cap departament associat. El llistat ha de retornar quatre columnes, nom del departament, primer cognom, segon cognom i nom del professor/a. El resultat estarà ordenat alfabèticament de menor a major pel nom del departament, cognoms i el nom.

SELECT d.nombre AS nombre_departamento, p.apellido1, p.apellido2, p.nombre, p.tipo FROM persona p LEFT JOIN departamento d USING (id) WHERE tipo = 'profesor' ORDER BY d.nombre ASC, p.apellido1 ASC, p.apellido2 ASC, p.nombre ASC;

-- 2. Retorna un llistat amb els professors/es que no estan associats a un departament.

SELECT * FROM persona p LEFT JOIN departamento d USING (id) WHERE tipo = 'profesor' AND d.nombre IS NULL;

-- 3. Retorna un llistat amb els departaments que no tenen professors/es associats.

SELECT * FROM departamento d LEFT JOIN profesor prf ON d.id = prf.id_departamento WHERE prf.id_profesor IS NULL;

-- 4. Retorna un llistat amb els professors/es que no imparteixen cap assignatura.

SELECT * FROM profesor prf LEFT JOIN persona p ON prf.id_profesor = p.id LEFT JOIN asignatura asi USING (id_profesor) WHERE asi.nombre IS NULL;

-- 5. Retorna un llistat amb les assignatures que no tenen un professor/a assignat.

SELECT * FROM asignatura asi LEFT JOIN profesor prf USING (id_profesor) WHERE prf.id_profesor IS NULL;

-- 6. Retorna un llistat amb tots els departaments que no han impartit assignatures en cap curs escolar.

SELECT * FROM departamento d LEFT JOIN profesor prf ON d.id = prf.id_departamento LEFT JOIN asignatura asi ON prf.id_profesor = asi.id_profesor LEFT JOIN curso_escolar ce ON asi.curso = ce.id WHERE asi.id IS NULL;

-- Consultas resumen

-- 1. Retorna el nombre total d'alumnes que hi ha.

SELECT COUNT(*) FROM persona WHERE tipo = 'alumno';

-- 2. Calcula quants alumnes van néixer en 1999.

SELECT COUNT(*) FROM persona WHERE tipo = 'alumno' AND fecha_nacimiento BETWEEN '1999-01-01' AND '2000-01-01';

-- 3. Calcula quants professors/es hi ha en cada departament. El resultat només ha de mostrar dues columnes, una amb el nom del departament i una altra amb el nombre de professors/es que hi ha en aquest departament. El resultat només ha d'incloure els departaments que tenen professors/es associats i haurà d'estar ordenat de major a menor pel nombre de professors/es.

SELECT d.nombre AS nombre_departamento, COUNT(prf.id_profesor) AS numero_de_profesores FROM departamento d JOIN profesor prf ON d.id = prf.id_departamento GROUP BY d.nombre HAVING COUNT(prf.id_profesor) <> 0 ORDER BY numero_de_profesores DESC;

-- 4. Retorna un llistat amb tots els departaments i el nombre de professors/es que hi ha en cadascun d'ells. Tingui en compte que poden existir departaments que no tenen professors/es associats. Aquests departaments també han d'aparèixer en el llistat.

SELECT d.nombre AS nombre_departamento, COUNT(prf.id_profesor) AS numero_de_profesores FROM departamento d LEFT JOIN profesor prf ON d.id = prf.id_departamento GROUP BY d.nombre;

-- 5. Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun. Tingues en compte que poden existir graus que no tenen assignatures associades. Aquests graus també han d'aparèixer en el llistat. El resultat haurà d'estar ordenat de major a menor pel nombre d'assignatures.

SELECT g.nombre AS nombre_grado, COUNT(asi.nombre) AS numero_asignaturas FROM grado g LEFT JOIN asignatura asi ON g.id = asi.id_grado GROUP BY g.nombre ORDER BY numero_asignaturas DESC;

-- 6. Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun, dels graus que tinguin més de 40 assignatures associades.

SELECT g.nombre AS nombre_grado, COUNT(asi.nombre) AS numero_asignaturas FROM grado g JOIN asignatura asi ON g.id = asi.id_grado GROUP BY g.nombre HAVING COUNT(asi.nombre) > 40;

-- 7. Retorna un llistat que mostri el nom dels graus i la suma del nombre total de crèdits que hi ha per a cada tipus d'assignatura. El resultat ha de tenir tres columnes: nom del grau, tipus d'assignatura i la suma dels crèdits de totes les assignatures que hi ha d'aquest tipus.

SELECT g.nombre AS nombre_grado, a.tipo AS tipo_asignatura, SUM(a.creditos) AS total_creditos FROM grado g JOIN asignatura a ON g.id = a.id_grado GROUP BY g.nombre, a.tipo ORDER BY g.nombre, a.tipo;

-- 8. Retorna un llistat que mostri quants alumnes s'han matriculat d'alguna assignatura en cadascun dels cursos escolars. El resultat haurà de mostrar dues columnes, una columna amb l'any d'inici del curs escolar i una altra amb el nombre d'alumnes matriculats.

SELECT ce.anyo_inicio AS anyo_inicio, COUNT(DISTINCT asm.id_alumno) AS numero_estudiantes FROM alumno_se_matricula_asignatura asm JOIN curso_escolar ce ON asm.id_curso_escolar = ce.id GROUP BY ce.anyo_inicio ORDER BY ce.anyo_inicio;

-- 9. Retorna un llistat amb el nombre d'assignatures que imparteix cada professor/a. El llistat ha de tenir en compte aquells professors/es que no imparteixen cap assignatura. El resultat mostrarà cinc columnes: id, nom, primer cognom, segon cognom i nombre d'assignatures. El resultat estarà ordenat de major a menor pel nombre d'assignatures.

SELECT p.id AS id_profesor, p.nombre AS nombre_profesor, p.apellido1 AS primer_apellido, p.apellido2 AS segundo_apellido, COUNT(a.id) AS numero_asignaturas FROM persona p LEFT JOIN profesor pr ON p.id = pr.id_profesor LEFT JOIN asignatura a ON pr.id_profesor = a.id_profesor WHERE p.tipo = 'profesor' GROUP BY p.id, p.nombre, p.apellido1, p.apellido2 ORDER BY numero_asignaturas DESC;

-- 10. Retorna totes les dades de l'alumne/a més jove.

SELECT * FROM persona per WHERE fecha_nacimiento = (SELECT MIN(fecha_nacimiento) FROM persona WHERE tipo = 'alumno');

-- 11. Retorna un llistat amb els professors/es que tenen un departament associat i que no imparteixen cap assignatura.

SELECT * FROM profesor prf JOIN departamento d ON prf.id_departamento = d.id LEFT JOIN asignatura asi USING (id_profesor) WHERE prf.id_departamento IS NOT NULL AND asi.id IS NULL;