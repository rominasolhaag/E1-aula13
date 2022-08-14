create database baseDeDatos;
show databases;
use baseDeDatos;
CREATE TABLE dueno(
	dni int ,
    nombre varchar (50) ,
    apellido varchar (75) ,
    telefono int ,
    direccion varchar (100),
    PRIMARY KEY (dni)
) ;
ALTER TABLE dueno MODIFY COLUMN dni int auto_increment;
INSERT INTO dueno (nombre, apellido, telefono, direccion) VALUES ("Ari","Yaros","123","pepe 123");
INSERT INTO dueno (nombre, apellido, telefono, direccion) VALUES ("Joni","Bastos","321","urquiza 123");
INSERT INTO dueno (nombre, apellido, telefono, direccion) VALUES ("Ivian","Sarja","124","Roca 321");

CREATE TABLE perro(
	id int not null auto_increment ,
    fecha_nac date not null ,
    sexo varchar (30) not null,
    dni_dueno int not null,
    primary key (id) ,
    foreign key (dni_dueno) references dueno (dni)    
) ;

CREATE TABLE historial (
	id int not null auto_increment,
    fecha date not null,
    descripcion varchar (120) not null,
    monto int not null,
    id_perro int not null,
    primary key (id),
    foreign key (id_perro) references perro (id)
);

insert into perro (fecha_nac,sexo,dni_dueno)
values
	("1998-11-10","macho",1),
    ("2021-10-11","hembra",3),
    ("2017-12-12","hembra",1);
insert into historial (fecha,descripcion,monto,id_perro)
values
	("2021-11-03","Perro lindo, marrón",500,2),
    ("2022-12-12","Perro lindo, marrón",760,2),
    ("2022-08-03","Perro feo, blanco",1200,1),
    ("2022-01-04","Perro peludo, muerde mucho",350,3);

insert into historial (fecha,descripcion,monto,id_perro)
values
    ("2022-07-07","Perro peludo, muerde mucho",950,3);
    insert into historial (fecha,descripcion,monto,id_perro)
values
    ("2022-07-12","Perro peludo, muerde mucho",1050,2);

select sum(monto) from historial WHERE (fecha BETWEEN '2022-07-01' AND '2022-07-31') ;