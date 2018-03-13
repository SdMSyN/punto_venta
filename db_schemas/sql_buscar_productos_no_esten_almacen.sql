select * from productos as t1 where t1.id not in (select t2.id from almacenes as t2 WHERE t2.id=14 )

Select * from productos as t1 INNER JOIN almacenes ON almacenes.id=13 where not exists (select * from almacenes as t2 where t2.id = t1.id)

select productos.id
from productos, almacenes
where productos.id = almacenes.producto_id
and almacenes.producto_id is null and almacenes.id=14

/*SELECT * FROM pedidos
 LEFT JOIN auditoria ON auditoria.num_factura = pedidos.num_factura
 WHERE auditoria.num_factura IS NULL AND (pedidos.id_enpoderde = 36 OR auditoria.id_enpoderde = 36)*/

/*SELECT * FROM productos
LEFT JOIN almacenes ON almacenes.producto_id = productos.id
WHERE almacenes.id IS NULL*/


SELECT * FROM almacenes
LEFT JOIN productos ON productos.id = almacenes.producto_id
WHERE almacenes.id=14

/*
SELECT * FROM productos 
LEFT JOIN almacenes ON almacenes.producto_id=productos.id
WHERE almacenes.id=14
*/

/*SELECT *
FROM   Call
WHERE  NOT EXISTS
  (SELECT *
   FROM   Phone_book
   WHERE  Phone_book.phone_number = Call.phone_number)*/

SELECT *
FROM productos
WHERE NOT EXISTS
  (SELECT *
   FROM almacenes
   WHERE almacenes.producto_id=productos.id)

select * from productos as t1 where t1.id not in (select t2.producto_id from almacenes as t2 WHERE t2.tienda_id=14)

SELECT id, nombre 
FROM productos
WHERE id NOT IN
  (SELECT producto_id 
   FROM almacenes
   WHERE tienda_id=13)