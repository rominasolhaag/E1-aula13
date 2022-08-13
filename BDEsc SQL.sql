create database Escuela;
use Escuela;

-- Tabla carrera 
create table carrera(
clave_c int,
nom_c varchar (50),
durac_c float,
constraint pk_cc primary key (clave_c)
);
-- Tabla Materia
create table materia(
clave_m int,
nom_m varchar (50),
cred_m float,
constraint pk_cm primary key (clave_m)
);

-- Tabla Profesor
create table profesor(
clave_p int,
nom_p varchar(100),
dir_p varchar(150),
tel_p bigint,
hora_p datetime,
constraint pk_cp primary key (clave_p)
);

/*Tabla Alumno 
(Con una clave foranea)*/
create table alumno(
matr_alu int,
nom_alu varchar (150),
edad_alu int,
sem_alu int,
gen_alu varchar (50),
clave_c1 int,
constraint pk_calu primary key (matr_alu),
constraint fk_fc1 foreign key (clave_c1) references carrera (clave_c)
);
-- Alumno-Profesor
create table alu_pro(
matr_alu1 int,
clave_p1 int,
constraint fk_fcalu1 foreign key (matr_alu1) references alumno (matr_alu),
constraint fk_fcp1 foreign key (clave_p1) references profesor (clave_p)
);
-- Alumno-Materia
create table alu_mat(
matr_alu2 int,
clave_m1 int,
constraint fk_fcalu2 foreign key (matr_alu2) references alumno (matr_alu),
constraint fk_fcm1 foreign key (clave_m1) references materia (clave_m)
);
-- Materia-Profesor
create table mat_pro(
clave_m2 int,
clave_p2 int,
constraint fk_fcm2 foreign key (clave_m2) references materia (clave_m),
constraint fk_fcp2 foreign key (clave_p2) references profesor (clave_p)
);