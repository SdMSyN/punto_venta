select * from productos as t1 where t1.id not in (select t2.id from almacenes as t2 WHERE t2.id=14 )

Select * from productos as t1 INNER JOIN almacenes ON almacenes.id=13 where not exists (select * from almacenes as t2 where t2.id = t1.id)

select productos.id
from productos, almacenes
where productos.id = almacenes.producto_id
and almacenes.producto_id is null and almacenes.id=14

