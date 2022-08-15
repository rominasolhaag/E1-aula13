create database PeluqueriaCanina;
use PeluqueriaCanina;
drop database PeluqueriaCanina;
-- Tabla dueño

CREATE TABLE dueño (
  dni_D INT NOT NULL,
  nombre_D VARCHAR(150) NULL DEFAULT NULL,
  apellido_D VARCHAR(150) NULL DEFAULT NULL,
  telefono_D BIGINT NULL DEFAULT NULL,
  direccion_D VARCHAR(150) NULL DEFAULT NULL,
  PRIMARY KEY (dni_D)
  );
insert into dueño (dni_D,nombre_D,apellido_D ,telefono_D,direccion_D) 
values (36485690,"Marianella","Estevez",4654654,"Paraiso 369"),
(36485691,"Juan","Perez",4654655,"Asado 333"),
(36485692,"Mario","Gomez",4654656,"Av Jose 55"),
(36485693,"Ariel","Supino",4654657,"Av Jose 55"),
(36485694,"Josefina","Ballatore",4654658,"Rio Negro 69"),
(36485695,"Romi","Rodriguez",4654659,"Rivadavia 86"),
(36485696,"Pedro","Hernandez",4654662,"San Martin 44");


-- Tabla perro

CREATE TABLE perro (
  id_p INT NOT NULL,
  nombre_p VARCHAR(150) NULL DEFAULT NULL,
  fechanac_p DATE NULL DEFAULT NULL,
  sexo_p VARCHAR(150) NULL DEFAULT NULL,
  dni_d1 INT NULL DEFAULT NULL,
  PRIMARY KEY (id_p), INDEX fk_fd1 (dni_d1 ASC) VISIBLE,
  CONSTRAINT fk_fd1 FOREIGN KEY (dni_d1) REFERENCES dueño (dni_D)
  );

insert into perro (id_p, nombre_p,fechanac_p,sexo_p, dni_d1) 
values (1,"Puppy","2018-12-05","Macho",36485690),
(2,"Fido","2016-02-03","Macho",36485691),
(3,"Frida","2017-01-14","Hembra",36485692),
(4,"Lennon","2017-05-07","Macho",36485693),
(5,"Olivia","2018-06-21","Hembra",36485694),
(6,"Toto","2019-08-15","Macho",36485695),
(7,"Canela","2020-10-01","Hembra",36485696);
				

-- Tabla historial

CREATE TABLE historial (
  id_h INT NOT NULL,
  fecha_h DATE NULL DEFAULT NULL,
  descripción_h VARCHAR(150) NULL DEFAULT NULL,
  monto_h BIGINT NULL DEFAULT NULL,
  id_p1 INT NULL DEFAULT NULL,
  PRIMARY KEY (id_h), INDEX fk_fp1 (id_p1 ASC) VISIBLE,
  CONSTRAINT fk_fp1 FOREIGN KEY (id_p1) REFERENCES perro (id_p)
  );
insert into historial (id_h,fecha_h,descripción_h,monto_h,id_p1) 
values (1,"2022-12-05","CortePelo",2350,1),
(2,"2022-02-03","Baño",8900,2),
(3,"2020-07-14","Corteuñas",1000,3),
(4,"2022-07-07","Desparasitar",2303,4),
(5,"2019-06-21","Ropa",5694,5),
(6,"2018-08-15","Ropa",695,6),
(7,"2017-10-01","CortePelo",3648,7);

-- CONSULTA SQL ACT 4 
update perro set fechanac_p = '2019-09-02' where id_p = 5