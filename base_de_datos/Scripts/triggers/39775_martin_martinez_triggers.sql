-- TRIGGERS --


-- GENERA UN REGISTRO POR CADA INGRESO A LA TABLA CLIENTES --
Delimiter //
create trigger trg_registro_carga after insert on clientes  
for each row 
begin
insert into log_auditoria (accion,nom_tabla,usuario,fecha) 
values ('insert','cliente',current_user(),current_timestamp());
end//
delimiter ;


-- GENERA UN REGISTRO POR CADA MODIFICACION A LA TABLA SUCURSALES --
delimiter //
create trigger trg_update_suc before update on sucursales
for each row 
begin
insert into log_auditoria_suc (id_suc_ant,nombre_suc_ant,dir_suc_ant,accion,nom_tabla,usuario,fecha)
values(old.idSucursal,old.nombre,old.direccion,'update','sucursales',current_user(),current_timestamp());
end//
delimiter ;


