create view vw_clientes_seg as
select dni,nombre,apellido,codSeg,fecha 
from clientes 
inner join ventaSeg on clientes.dni = ventaSeg.cliente;

create view vw_cliente_fNac as
select *
from clientes 
where fNac >= "1990-01-01";

create view vw_cliente_pres as
select clientes.dni,nombre,apellido,monto,telefono, clientes.fnac
from clientes 
inner join prestamos on clientes.dni = prestamos.dni 
where monto > 10000 and monto < 30000;


create view vw_clientes_tarj as
select * 
from clientes 
where dni in (select cliente from ventaTarj where limite1 > 20000 );

create view vw_empleados_puesto_fIngreso as
select *
from empleados 
where puesto !="lider" and fIngreso >"2022-01-01";
