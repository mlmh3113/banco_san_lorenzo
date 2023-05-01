-- SENTENCIAS DE LENGUAJE TCL --

set @@autocommit = 0;
set @@foreign_key_checks = 0;

start transaction;
delete from empleados where dni = 38078000;
delete from empleados where dni = 31899743;
delete from empleados where dni = 35476256;
delete from empleados where dni = 27604265;
rollback;
commit;

start transaction;
insert into prestamos (dni,monto,sucursal,vendedor,fecha)
values
(24887887,26000,1,6,"2024-03-23"),
(29887650,45000,1,8,"2024-03-23"),
(30765888,150000,5,8,"2024-03-23"),
(31263026,200000,12,10,"2024-03-23");
savepoint sp1;
insert into prestamos (dni,monto,sucursal,vendedor,fecha)
values
(31458776,55000,11,6,"2024-03-23"),
(32998998,63000,9,9,"2024-03-23"),
(33876095,10000,4,10,"2024-03-23"),
(39887561,2000,3,11,"2024-03-23");
savepoint sp2;
rollback to sp1;
release savepoint sp1;
commit;