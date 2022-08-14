create database CAN;
use CAN;

create table Dueno(
dni int not null, 
nombre varchar(50) not null,
apellido varchar (50) not null,
telefono bigint not null,
domicilio varchar (250) not null,
constraint pk_dni primary key (dni)
);

create table perro(
id_perro int not null,
nombre varchar(50) not null,
fecha_nac date not null,
sexo varchar (20),
dni_dueno int,
constraint pk_id_perro primary key (id_perro),
constraint fk_dni_dueno foreign key (dni_dueno) 
		references Dueno (dni)
);
create table Historial(
id_historial int not null,
fecha date not null,
perro int,
descripcion varchar(250),
monto int not null,
constraint pk_id_historial primary key(id_historial),
constraint fk_perro foreign key (perro) 
		references perro(id_perro)
);

insert into Dueno (dni, nombre, apellido, telefono, domicilio) values
(29358139, 'German', 'Cano', 3885407001, 'guemes 836, Cba (cap)'),
(26371737, 'Rafael','Ortega', 3512341236, 'rincon 123, Cba (cap)'),
(23453246, 'Daniel','Gallardo', 3514565898, 'armenia 1423, Cba (cap)');

insert into perro (id_perro,nombre, fecha_nac,sexo, dni_dueno) values
(1, 'pampita', '2019-07-27', 'F', 29358139),
(2,'Hellcat','2008-12-04', 'M', 26371737),
(3, 'tiburonzin', 2020-01-19, 'M', 23453246)
;
insert into Historial (id_historial,fecha, perro, descripcion, monto) values 
(1,12-12-2020, 1, 'vacunacion', 2000),
(2,09-10-2021, 2, 'internacion', 15000),
(3,08-07-2022, 3, 'consulta', 900);



update perro set fecha_nac='2020-01-19' where id_perro =3; 
update Historial set fecha='2020-12-12' where id_historial =1;
update Historial set fecha='2021-10-09' where id_historial =2;
update Historial set fecha='2022-07-08' where id_historial =3; 

-- para hacer la carga de la nueva mascota en historial id_perro tengo que insertar los nuevos valores en la tabla dueno, perro y recien historial
insert into dueno (dni, nombre, apellido, telefono, domicilio)
		values	(10914215, 'Maria', 'Amarfil',2641233123, 'lavalle 1071 s, san juan');
insert into perro (id_perro,nombre, fecha_nac,sexo, dni_dueno) 
		values (10, 'firulai', '2010-10-15', 'M',10914215);
insert into Historial (id_historial,fecha, perro, descripcion, monto) 
		values (10, '2022-08-13', 10,'vacunacion', 2000);
select d.dni, d.nombre, p.id_perro, p.nombre from Dueno d left join perro p on d.dni = dni_dueno;

-- select p.dni_dueno, p.nombre, h.descripcion ,h.monto from perro p left join historial h on p.id_perro=h.perro;
select * from Dueno;
select * from perro;
select * from Historial;
