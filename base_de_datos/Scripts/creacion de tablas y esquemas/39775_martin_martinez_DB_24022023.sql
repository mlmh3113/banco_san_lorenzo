-- CREACION Y USO DEL SCHEMA --
create schema coder_empresa;
use coder_empresa;

-- CREACION DE LA TABLA CLIENTES --
create table if not exists clientes (
dni int auto_increment not null,
nombre varchar(25) not null,
apellido varchar(25) not null,
domicilio varchar(50) not null,
telefono int not null,
usuario varchar(25) not null,
contrasenia varchar(25) not null,
email varchar(255) not null,
fNac date not null,
constraint PK_CLIENTES primary key (dni)
);

-- CREACION DE LA TABLA EMPLEADOS --
create table if not exists empleados (
legajo int auto_increment not null,
dni int not null,
nombre varchar(25) not null,
apellido varchar(25) not null,
domicilio varchar(50) not null,
telefono int not null,
usuario varchar(25) not null,
contrasenia varchar(25) not null,
email varchar(255) not null,
fNac date not null,
fIngreso date not null,
puesto varchar (25) not null,
constraint PK_EMPLEADOS primary key (legajo)
);

-- CREACION DE LA TABLA TARJETAS --
create table if not exists tarjetas(
idTarjeta int auto_increment not null,
tipoTarjeta varchar(25) not null,
constraint PK_TARJETA primary key (idTarjeta)
);

-- CREACION DE TABLA VENTA DE TARJETAS --
create table if not exists ventaTarj(
idVentaTarj int auto_increment not null,
cliente int not null,
tipoTarj int not null,
limite1 int not null,
limite2 int not null,
utilL1 int default 0,
utilL2 int default 0,
dispL1 int default 0,
dispL2 int default 0,
vendedor int not null,
sucursal int not null,
fecha date not null,
constraint PK_VENTATARJ primary key(idVentaTarj)
);


-- CREACION DE LA TABLA SEGUROS --
create table if not exists seguros(
idSeguro int auto_increment not null,
tipoSeguro varchar(25) not null,
precioSeguro int not null,
constraint PK_SEGURO primary key (idSeguro)
);

-- CREACION DE TABLA VENTA SEGUROS--
create table if not exists ventaSeg(
idVentSeg int auto_increment not null,
codSeg int,
cliente int,
vendedor  int,
sucursal int,
fecha date not null,
constraint PK_SEGURO primary key (idVentSeg)
);

-- CREACION DE LA TABLA SUCURSALES --
create table if not exists sucursales(
idSucursal int auto_increment not null,
nombre varchar (64) not null,
direccion varchar(255) not null,
constraint PK_SUCURSAL primary key (idSucursal)
);



-- CREACION DE LA TABLA PRESTAMOS --
create table if not exists prestamos(
idPrestamo int auto_increment not null,
dni int,
monto int,
sucursal int,
vendedor int,
fecha date not null,
constraint PK_PRESTAMO primary key (idPrestamo)
);



-- CREACION DE TABLAS PARA AUDITORIAS --

create table if not exists log_auditoria 
(
id_log int auto_increment,
accion varchar(15),
nom_tabla varchar(50),
usuario varchar(25),
fecha timestamp,
primary key (id_log)
);

create table if not exists log_auditoria_suc
(
id_log int auto_increment,
id_suc_ant int,
nombre_suc_ant varchar(64),
dir_suc_ant varchar(255),
accion varchar(15),
nom_tabla varchar(50),
usuario varchar(25),
fecha date,
primary key (id_log)
);


-- CREACION DE PK Y FK --

alter table prestamos add(
constraint PK_DNI_PRES foreign key (dni)
references clientes(dni),
constraint PK_SUC_PRES foreign key (sucursal)
references sucursales(idSucursal),
constraint PK_VEND_PRES foreign key (vendedor)
references empleados(legajo));


alter table VentaSeg add(
constraint FK_COD_SEG foreign key(codSeg)
references seguros(idSeguro), 
constraint FK_CLI_SEG foreign key(cliente)
references clientes(dni),
constraint FK_VEND_SEG foreign key(vendedor)
references empleados(legajo),
constraint FK_SUC_SEG foreign key (sucursal)
references sucursales(idSucursal)
);

alter table ventaTarj add(
constraint FK_CLI_VT foreign key (cliente)
references clientes(dni), 
constraint FK_TT_VT foreign key (tipoTarj)
references tarjetas(idTarjeta),
constraint FK_VEN_VT foreign key (vendedor)
references empleados(legajo),
constraint FK_SUC_VT foreign key(sucursal)
references sucursales(idSucursal)
);