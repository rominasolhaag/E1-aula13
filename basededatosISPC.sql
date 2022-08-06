create database ISPC;
use ISPC;

create table integrantes(
id int auto_increment not null,
nombre varchar (50) not null,
apellido varchar (50) not null,
domicilio varchar(250),
telefono bigint (150),
email varchar (150),
github varchar(100),
linkedin varchar (100),
primary key (id)
);

create table materias(
id_mat int auto_increment not null,
nombre_materia varchar(100) not null,
nota_materia float not null,
constraint pk_mat primary key (id_mat),
constraint fk_mat_integrantes foreign key (id_mat) references integrantes (id) 
);
create table roles_team(
id_rol int auto_increment not null
);
create table roles_integrantes(
id_rol int auto_increment not null,
nomrbre_rol varchar(50),
constraint primary key (id_rol),
constraint fk_rol_integrante foreign key (id_rol)
	references integrantes (id)
);
alter table roles_integrantes change nomrbre_rol nombre_rol varchar(50);

create table proyecto(
id_proy int auto_increment null,
nombre_p varchar(150) not null,
constraint primary key (id_proy)
);
alter table proyecto change id_proy id_proy int auto_increment not null;
create table rol_proyecto(
rol_integrante1 int,
id_proy1 int,
constraint fk_rol_integrante1 foreign key (rol_integrante1)
		references roles_integrantes (id_rol),
constraint fk_id_proy1 foreign key (id_proy1)
		references proyecto (id_proy)
);
-- se carga la TABLA INTEGRANTES -- 
insert into integrantes (nombre, apellido, domicilio, telefono, email, github, linkedin) values ('German Gustavo', 'Cano','Guemes 836, dpto 11, CBA', 3885407001 ,'germangustavocano@gmail.com','?', '?');
insert into integrantes (nombre, apellido, domicilio, telefono, email, github, linkedin) values ('Douglas Adegmar', 'Pereira Dias','Rancagua 1623, dpto 5, CBA', 3516060966, 'diasdouglas2012@gmail.com','?','?');
insert into integrantes (nombre, apellido, domicilio, telefono, email, github, linkedin) values ('Romina Sol', 'Haag','Domingo Funes 484, Guemes, CBA', 3512037631,'rominasolhaag@gmail.com','?','?');
-- MOSTAR LA TABLA INTEGRANTES
select * from integrantes;
-- se carga la TABLA MATERIAS -- 
insert into materias (nombre_materia, nota_materia) values ('BASE DE DATOS', 100);
-- MOSTAR LA TABLA INTEGRANTES
select * from materias;
-- se carga la TABLA PROYECTO -- 
insert into proyecto (nombre_p) values ('BASE DE DATOS INTEGRANTES EQUIPO 1');
select * from proyecto;

insert into roles_integrantes (nomrbre_rol) values ('Scrum Master');
insert into roles_integrantes (nomrbre_rol) values ('Front End');
insert into roles_integrantes (nomrbre_rol) values ('Back End');
insert into roles_integrantes (nomrbre_rol) values ('QA');
insert into roles_integrantes (nomrbre_rol) values ('PO');
insert into roles_integrantes (nomrbre_rol) values ('Customers team');

select * from roles_integrantes

update integrantes set github='GERGUSCANO' where id =1;
update integrantes set github='Romina-Sol-Haag', linkedin='Romina Sol Haag' where id =3;