-- FUNCIONES --

-- funcion para cargar datos a la tabla clientes --

delimiter $$
create function fn_cargarDatos(p_dni int,p_nombre varchar(25),p_apellido varchar(25),p_domicilio varchar(50),
p_telefono int,p_usuario varchar(25),p_contrasenia varchar(25),p_email varchar(255),p_fNac date)
returns varchar(25)
deterministic
begin
declare resultado varchar(25);
insert into clientes(dni,nombre,apellido,domicilio,telefono,usuario,contrasenia,email,fNac) 
values (p_dni,p_nombre,p_apellido,p_domicilio,p_telefono,p_usuario,p_contrasenia,p_email,p_fNac);

if (select count(dni) from clientes where dni = p_dni) = 1 then set resultado = "datos cargados";
else set resultado = "ocurrio un error";
end if;

return resultado;
end$$
delimiter ;

-- dejo una carga asi no tenes que tipear tanto--
select fn_cargarDatos(9999999,"Andres","Bombergar","la casa",1111111111,"labomba","casla25","cuervo@gmail.com","1984-02-20");

-- CONSULTA DISPONIBLE TARJETA POR DNI --

delimiter $$
create function fn_dispPres(p_dni int)
returns varchar(500)
deterministic
begin
declare resultado varchar(500);
declare disponible1 int;
declare disponible2 int;

set disponible1 = (select dispL1 from ventatarj where cliente=p_dni);
set disponible2 = (select dispL2 from ventatarj where cliente=p_dni);

set resultado =concat("Los disponibles del cliente ", p_dni, " son: limite1: ",disponible1, " limite2: ",disponible2);

return resultado;
end$$
delimiter ;

select fn_dispPres(16008592);


-- calcular total de prestamos por sucursal --

delimiter $$
create function fn_totalPresSuc(p_suc int)
returns int
deterministic
begin
declare resultado int;

set resultado = (select sum(monto) from prestamos where sucursal = p_suc);

return resultado;
end$$
delimiter ;

select fn_totalPresSuc(4);


