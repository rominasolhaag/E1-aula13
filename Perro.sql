create database peluqueriaCanina;
use peluqueriaCanina;
create table dueno(
DNI int not null,
NOMBRE varchar(30) not null,
APELLIDO varchar(30) not null,
TELEFONO int,
DIRECCION varchar(50),
CONSTRAINT PRIMARY KEY pk_dueno (DNI)
);
create table perro(
ID_PERRO int not null auto_increment,
NOMBRE varchar(15),
FECHA_NAC DATE,
SEXO varchar(10),
DNI_dueno int not null,
constraint primary key pk_perro (ID_PERRO),
constraint foreign key fk_dueño1(DNI_dueno) references dueno(DNI)
);
create table historial(
id_historial int not null auto_increment,
Fecha datetime,
Id_Perro1 int not null,
Descripcion varchar(50),
Monto float,
constraint primary key pk_historial (id_historial),
constraint foreign key fk_perro(Id_Perro1) references perro(ID_PERRO)
);
insert into dueno (DNI,NOMBRE,APELLIDO,TELEFONO,DIRECCION)values(28957346,  'Juan',  'Perez', 4789689,  'Belgrano 101');
insert into dueno (DNI,NOMBRE,APELLIDO,TELEFONO,DIRECCION)values(239446,  'Maria',  'Pedron', 123,  'Belgrano 1000');
insert into dueno (DNI,NOMBRE,APELLIDO,TELEFONO,DIRECCION)values(123,  'Lau',  'Lobo', 167,  'Illia 160');
insert into dueno (DNI,NOMBRE,APELLIDO,TELEFONO,DIRECCION)values(12356,  'Pedro',  'Lobo', 455458,  'Buenos Aires 60');
insert into dueno (DNI,NOMBRE,APELLIDO,TELEFONO,DIRECCION)values(235235,  'Pedro',  'Ari', 450950295,  'Rondeau 110');
insert into dueno (DNI,NOMBRE,APELLIDO,TELEFONO,DIRECCION)values(532809,  'Pedro',  'Aleman', 42345,  'Independencia 60');
insert into dueno (DNI,NOMBRE,APELLIDO,TELEFONO,DIRECCION)values(38523456,  'Pedro',  'Hass', 45545,  'Domingo funes 16');
insert into perro (NOMBRE,FECHA_NAC,SEXO,DNI_dueno)values('Puppy','2008-05-12' , 'Macho', 123);
insert into perro (NOMBRE,FECHA_NAC,SEXO,DNI_dueno)values('Juditas','2016-03-12' , 'Macho', 28957346);
insert into perro (NOMBRE,FECHA_NAC,SEXO,DNI_dueno)values('Batu','2005-01-01' , 'Hembra', 239446);
insert into perro (NOMBRE,FECHA_NAC,SEXO,DNI_dueno)values('Luci','2020-05-12' , 'Macho', 12356);
insert into perro (NOMBRE,FECHA_NAC,SEXO,DNI_dueno)values('Fer','2021-03-12' , 'Macho', 532809);
insert into perro (NOMBRE,FECHA_NAC,SEXO,DNI_dueno)values('Pampita','2009-01-01' , 'Hembra', 532809);
insert into historial(Fecha,Id_Perro1,Descripcion,Monto) values('2005-08-12', 4, 'Bravecto 20kg', 6180.00);
insert into historial(Fecha,Id_Perro1,Descripcion,Monto) values('2022-01-29', 4, 'Bravecto 20kg', 76180.00);
insert into historial(Fecha,Id_Perro1,Descripcion,Monto) values('2022-05-01', 1, 'Shampoo', 500.00);


-- Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro
select p.NOMBRE as 'Mascota', d.NOMBRE as 'Dueño' from dueno d join perro p  on p.DNI_dueno = d.DNI where d.NOMBRE = 'Pedro';
