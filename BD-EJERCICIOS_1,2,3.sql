-- Bases de datos
-- Tabla: dueno
CREATE TABLE `dueno`(
`dni` INT(11) NOT NULL,
`nombre` VARCHAR(30) NOT NULL,
`apellido` VARCHAR(30) NOT NULL,
`telefono` INT(11) NOT NULL,
`direccion` VARCHAR(30) NOT NULL,
PRIMARY KEY (`dni`)
);

-- Bases de datos
-- Ejercicio 1
-- Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.

CREATE TABLE `perro` (
`id_perro` INT(11) NOT NULL,
`nombre` VARCHAR(11) NOT NULL,
`fecha_nac` DATE NOT NULL,
`sexo` VARCHAR(11) NOT NULL,
`dni_dueno` INT(11) NOT NULL,
PRIMARY KEY (`id_perro`),
FOREIGN KEY (`dni_dueno`) REFERENCES `dueno`(`dni`)
);

-- Bases de datos
-- Tabla: historial
CREATE TABLE `historial` (
`id_historial` INT AUTO_INCREMENT,
`fecha` DATE NOT NULL,
`perro` INT(11) NOT NULL,
`descripcion` VARCHAR(50),
`monto` INT(11) NOT NULL,
PRIMARY KEY (`id_historial`),
FOREIGN KEY(`perro`) REFERENCES `perro`(`id_perro`)
);

-- Bases de datos
-- Ejercicio 2
-- Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

INSERT INTO `dueno` VALUES (28957346,'Juan','Perez',4789689,'Belgrano 101');
INSERT INTO `perro` VALUES (13,'Puppy','2012-12-13','Macho',28957346);

-- Bases de datos
-- Ejercicio 3
-- Borre un animal que ya no va a ser atendido. Para ello consulte antes en el historial, 
-- algún animal que ya no sea atendido desde hace mucho tiempo.

-- Agregamos un dueno (ya contamos con 'Juan Perez' del Ejercicio 2)
INSERT INTO `dueno` VALUES (23546987,'Maria','Mendoza',5469621,'Pueyrredon 811');

-- Agregamos dos perros (ya contamos con 'Puppy' del Ejercicio 2)
INSERT INTO `perro` VALUES (12,'Lennon','2014-04-15','Macho',28957346); -- Juan Perez (Puppy, Lennon)
INSERT INTO `perro` VALUES (8,'Olivia','2011-07-25','Hembra',23546987); -- Maria Mendoza (Olivia)

-- Agregamos los historiales
INSERT INTO `historial` VALUES (1,'2022-03-18',13,'Corte de pelo',1500);
INSERT INTO `historial` VALUES (2,'2020-08-23',8,'Corte de pelo y baño',2500);
INSERT INTO `historial` VALUES (3,'2021-06-30',13,'Corte de uñas y limpieza de oidos',3100);
INSERT INTO `historial` VALUES (4,'2021-02-28',12,'Baño y tratamiento de parasitos',4100);

-- Primero eliminamos de la tabla 'historial' el registro más antiguo
DELETE FROM historial ORDER BY fecha ASC LIMIT 1; 
-- Luego, eliminamos de la tabla 'perro' el registro comparando los 'id'
DELETE FROM perro WHERE NOT EXISTS (SELECT 1 FROM historial WHERE historial.perro = perro.id_perro);