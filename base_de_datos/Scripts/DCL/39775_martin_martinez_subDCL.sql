-- SUBLENGUAJE DCL --

-- CREACION DE LOS USUARIOS --
create user if not exists 'mponce211'@'localhost' identified by 'jarra87';
create user if not exists 'wleon7666'@'localhost' identified by 'zorro3455';

-- ASIGNACION DE PERMISOS --
grant select on coder_empresa.clientes to 'mponce211'@'localhost';
grant select , insert , update on coder_empresa.clientes to 'wleon7666'@'localhost';

