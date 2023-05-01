-- INSERCION --

insert into clientes (dni,nombre,apellido,domicilio,telefono,usuario,contrasenia,email,fNac)
values 
(31263026,"Martin","Martinez","Donato Alvarez 956",1164946486,"mart1161","mono1234","mlmh3113@hotmail.com","1984-10-31"),
(16008592,"Adriana","Frias","El zorzal 4536",1124773484,"frias2712","river3113","friasa@gmail.com","1961-12-27"),
(33876095,"Diego","Gomez","Sanabria 21",1198674532,"dgomez4567","mono123","dgomez@hotmail.com","1985-06-05"),
(23776487,"Carina","Gonzalez","Platanos 786",1134559234,"cgonzalez9954","pato9854","cgonzalez@gmail.com","1988-09-12"),
(45895612,"Yamila","Salinas","Montero 12",1123997765,"ysalinas4598","gallo98","ysalinas@gmail.com","1990-02-05"),
(40129845,"Veronica","Correa","Sauce 66",1188746539,"vcorrea9811","coco98","vcorrea@gmail.com","1991-03-23"),
(39887561,"Lionel","Irrera","Corrientes 45",1144875693,"lirrera1244","loro123","lirrera@gmail.com","1989-07-30"),
(31458776,"Sergio","Centurion","Salta 476",1120986733,"scenturion3466","perro453","scenturion@gmail.com","1985-09-25"),
(29887650,"Matias","Romero","Raguzzi 198",1178564923,"mromero8812","gato6734","mromero@gmail.com","1982-01-28"),
(42909654,"Dante","Romero","Raguzzi 198",1138776464,"dromero6645","pollo7844","dromero@gmail.com","1995-07-18"),
(30765888,"Ricardo","Frias","Garay 2712",1144989876,"rfrias9999","oso8944","rfrias@gmail.com","1984-08-01"),
(24887887,"Silvana","Gonzalez","Orion 5555",1177564436,"sgonzalez8843","foca123","sgonzalez@gmail.com","1985-12-12"),
(42876556,"Delfina","Romero","Calle 198 984",1155667734,"dromero2727","sapo8954","dromero@gmail.com","1996-02-12"),
(32998998,"Gonzalo","Correa","Salta 32",1133998998,"gcorrea3337","rana983","gcorrea@gmail.com","1987-11-23"),
(45999768,"Tomas","Nunez","Rivadavia 34",1187555565,"tnunez4533","raton4333","tnunez@gmail.com","1988-12-05")
;

insert into empleados (dni,nombre,apellido,domicilio,telefono,usuario,contrasenia,email,fNac,fIngreso,puesto)
values
(31899743,"Daniel","Rodriguez","moreno 456",11516996,"drodriguez7775","casa123","drodriguez@gmail.com","1985-01-01","2020-10-31","lider"),
(35476256,"Ruth","Pereira","varela 2398",11397845,"rpereira6565","auto123","rpereira@gmail.com","1980-12-23","2021-12-14","lider"),
(27604265,"Cristian","Ramirez","Sauco 88",118887873,"cramirez7775","play7844","cramirez@gmail.com","1980-11-21","2020-04-12","lider"),
(45421237,"Lara","Mataloni","palestina 45",119987764,"lmataloni9393","boton123","lmataloni@gmail.com","1986-09-09","2020-10-07","lider"),
(27092284,"Ariel","Martinez","asuncion 56",1198567734,"amartinez0987","rata097","amartinez@gmail.com","1985-09-08","2021-11-06","lider"),
(34154020,"Walter","Leon","calle 820 4555",1166734456,"wleon7666","zorro3455","wleon@hotmail.com","1990-12-01","2022-12-05","oficial de negocios"),
(38078000,"Sandra","Ramirez","Paraguay 34",1123443344,"sramirez987","hilo34","sramirez@gmail.com","1986-02-23","2020-01-04","oficial de negocios"),
(32122557,"Isabel","Danone","salto 78",1198897645,"idnone855","sol875","idanone@gmail.com","1992-03-24","2022-01-12","oficial de negocios"),
(28495634,"Sebastian","Fernandez","calle 898 855",1132458866,"sfernandez877","luna876","sfernandez@gmail.com","1984-02-02","2023-01-20","oficial de negocios"),
(31500229,"Nicolas","Soto","Pasco 453",1156783344,"nsoto122","maso4488","nsoto@gmail.com","1989-03-09","2023-02-05","oficial de negocios"),
(26995702,"Mara","Ponce","Lima 7866",1199775533,"mponce211","jarra87","mponce@gmail.com","1980-12-01","2020-06-27","ventas"),
(28895797,"Juan","Estigarribia","Jardin 21",1159873367,"jestigarribia65","negro98","jestigarribia@gmail.com","1988-05-04","2022-06-02","ventas"),
(28553661,"Miguel","Gugliota","Varela 66",1187664490,"mgugliota89","azul99","mgugliota@gmail.com","1988-01-22","2021-05-10","ventas"),
(32240725,"Andrea","Acosta","solis 888",1122897756,"aacosta743","marron45","aacosta@gmail.com","1994-02-01","2021-10-31","ventas"),
(26579185,"Ramiro","Sanchez","calle 56 99",1189896634,"rsanchez777","amarillo90","rsanchez@gmail.com","1993-10-11","2022-11-01","ventas")
;


insert into seguros (tipoSeguro,precioSeguro)
values
("Desempleo",300),
("Hogar",500),
("Mascota",250),
("Bolso Protegido","450"),
("Ayuda Medica","700")
;


insert into sucursales (direccion,nombre)
values 
("Correa 24","Lomas"),
("Donato Alvarez 956","Quilmes"),
("Alcorta 566","Banfield"),
("Raguzzi 198","Ezeiza"),
("De Andrea 98","Temperley"),
("El Zorzal 4536","Florencio Varela"),
("Corrientes 4556","Abasto"),
("Lacroze 874","Lacroze"),
("Florida 44","Florida"),
("Laprida 63","Boedo"),
("9 de Julio 34","Lanus"),
("25 de septiembre 23","Urquiza"),
("Neuquen 45","Martelli"),
("Allipi 789","San Jose"),
("Santa Ana 89","Bernal")
;

insert into tarjetas(tipoTarjeta)
values
("Visa"),
("Mastecard"),
("Regional")
;

insert into ventaseg(codSeg,cliente,vendedor,sucursal,fecha) 
values
(1,31263026,2,4,"2024-02-24"),
(3,16008592,6,5,"2024-02-24"),
(5,29887650,7,15,"2024-02-24"),
(4,30765888,10,6,"2024-02-24"),
(2,42909654,15,12,"2024-02-24")
;

insert into ventatarj(cliente,tipoTarj,limite1,limite2,utilL1,utilL2,dispL1,dispL2,vendedor,sucursal,fecha)
values
(16008592,2,15000,45000,5000,20000,10000,25000,12,4,"2024-02-24"),
(45895612,1,6000,30000,2000,30000,4000,0,1,6,"2024-02-24"),
(45999768,2,25000,75000,20000,60000,5000,15000,2,8,"2024-02-24"),
(24887887,3,60000,145000,45000,100000,15000,45000,6,12,"2024-02-24"),
(23776487,2,80000,245000,20000,200000,60000,45000,10,15,"2024-02-24")
;

insert into prestamos(dni,monto,sucursal,vendedor,fecha)
values
(24887887,12000,4,5,"2024-02-24"),
(29887650,22000,12,6,"2024-02-24"),
(42876556,32000,10,9,"2024-02-24"),
(45895612,60000,11,10,"2024-02-24"),
(31458776,6000,2,5,"2024-02-24"),
(23776487,12000,4,7,"2024-02-24"),
(45895612,12000,2,8,"2024-02-24"),
(16008592,12000,10,5,"2024-02-24"),
(30765888,12000,4,10,"2024-02-24")
;



