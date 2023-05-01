-- PROCEDIMIENTOS --

-- BUSCA CLIENTES POR LA PRIMER LETRA DEL NOMBRE ORDENANDO EL RESULTADO POR APELLIDO ASC Y ALMACENA LA CANTIDAD --
delimiter //
create procedure sp_buscar_clientes(in letra char, out cantidad_clientes int)
begin 
select * 
from clientes 
where nombre like concat(letra,'%') order by apellido asc;
select count(*) into cantidad_clientes
from clientes 
where nombre like concat(letra,'%');
end//
delimiter ; 

call sp_buscar_clientes('m',@total);
select @total;



-- INGRESA UNA COMPRA AL LIMITE 1 Y ACTUALIZA LOS VALORES DE DISPONIBLE Y UTILIZADO, SI LA COMPRA SUPERA AL DISPONIBLE NO SE REALIZA LA OPERACION --

delimiter //
create procedure sp_ingresar_compra (in p_monto int,in p_dni int)
begin 
declare disponible int; 
set disponible=(select dispL1 from ventatarj where cliente = p_dni);

if disponible < p_monto then 
select 'disponible insuficiente';
else 
update ventatarj set dispL1= dispL1 - p_monto where cliente = p_dni;
update ventatarj set utilL1= utilL1 + p_monto where cliente = p_dni;
end if;

end//
delimiter ;

call sp_ingresar_compra(1500,16008592);




