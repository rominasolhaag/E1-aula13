create database dbDouglas;
use dbDouglas;

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
(12345678, 'Diego', 'Mina', 3512312233, 'sacachispas 23'),
(23456789, 'Rafael','Altamirano', 3598076543, 'belgrano 836'),
(21345678, 'Daniel','Gallardo', 3514565898, 'ladeira any barroso s/n');

insert into perro (id_perro,nombre, fecha_nac,sexo, dni_dueno) values
(1, 'Cholo', '2009-07-04', 'M', 12345678),
(2,'Guacho','2018-11-05', 'M', 23456789),
(3, 'Moia', '2022-01-15', 'f', 21345678)
;
insert into Historial (id_historial,fecha, perro, descripcion, monto) values 
(1,'2021-04-12', 1, 'consulta', 900),
(2,'2021-06-21', 2, 'internacion y vacunacion', 15060),
(3,'2022-07-12', 3, 'consulta y corte de pelo', 1900);


update dueno set domicilio='Libertad 123' where dni =12345678;



