create database CAN;
use CAN;
create table Dueno(
dni int not null,
nombre varchar(50) not null,
apellido varchar(50) not null,
telefono bigint not null,
direccion varchar(250) not null,
constraint pk_dni primary key (dni)
);

create table perro(
id_perro int not null 

);
