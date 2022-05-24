create database Ejercicio_2;
Use Ejercicio_2;

create table Consultorios(
Cod_Numero int not null primary key,
Cons_Nombre varchar (50) not null
);

Insert into Consultorios values (1, 'Consultorio Divina Salud');
Insert into Consultorios values (2, 'Consultorio Bienestar Total');
Insert into Consultorios values (3, 'Consultorio Legión Médica');
Insert into Consultorios values (4, 'Consultorio Cuidado Total');
Insert into Consultorios values (5, 'Consultorio La Salud primero');

Select * from Consultorios;

Create table Medicos(
Med_Identificacion int not null primary key,
Med_Nombres varchar (50) not null,
Med_Apellidos varchar (50) not null
);

Insert into Medicos values (14534785, 'Daniel Alejandro', 'Torres Acosta');
Insert into Medicos values (73458121, 'Nicolay', 'Barrero');
Insert into Medicos values (74451265, 'Evelyn Dayan', 'Cante Garzon');
Insert into Medicos values (12563485, 'Katherine', 'Delgado Orjuela');
insert into Medicos values (79458125, 'Maria Fernanda', 'Aguilar Ramirez');

Select * from Medicos;

create table Pacientes(
Pac_Identificacion int not null primary key,
Pac_Nombres varchar (50) not null,
Pac_Apellidos varchar (50) not null,
Pac_FechaNacimiento Date not null,
Pac_Sexo enum ('M','F') not null
);

Insert into Pacientes values (1452365784, 'Yeremit Andrey', 'Rodriguez Cordoba', '2002-02-14', 'M');
Insert into Pacientes values (5648724631, 'Brandon Yair', 'Puentes Rojas', '2003/10/08', 'M');
Insert into Pacientes values (1014523687, 'Luisa', 'Hernandez Chavez', '2001/08/25', 'F');
Insert into Pacientes values (1025632678, 'Jenny Marcela', 'Rubiano Carvajal', '2002/02/06', 'F');
Insert into Pacientes values (1205436824, 'Laura Catalina', 'Gomez Reyes', '2001/09/21', 'F');

select * from Pacientes;


create table Citas(
Cit_Numero int not null primary Key,
Cit_Fecha Date Not null,
Cit_Hora time not null,
Cit_Paciente int not null,
Cit_Medico int not null,
Cit_Consultorio int not null,
Cit_Estado Varchar (20) not null,
Cit_Observaciones varchar (50) not null,
foreign key (Cit_Paciente) references Pacientes (Pac_Identificacion),
foreign key (Cit_Medico) references Medicos (Med_Identificacion),
foreign key (Cit_Consultorio) references Consultorios (Cod_Numero)
);

insert into Citas values (1, '2022/02/15', '18:46', 1452365784, 14534785, 1, 'Activa', 'Ninguna');
insert into Citas values (2, '2022/03/15', '13:20', 5648724631, 73458121 , 2, 'Activa', 'Ninguna');
insert into Citas values (3, '2022/04/08', '08:30', 1014523687, 74451265, 3,'En Espera','Ninguna');
insert into Citas values (4, '2022/05/12', '14:23', 1025632678, 12563485, 4,'Activa','Ninguna');
insert into Citas values (5, '2022/06/23', '12:00', 1205436824, 79458125, 5,'En espera','Ninguna');

select * from Citas;

create table Tratamientos(
Tra_Numero int not null primary key,
Tra_FechaAsignada date not null,
Tra_Descripcion varchar (50) not null,
Tra_FechaInicio date not null,
Tra_FechaFin date not null,
Tra_Observaciones varchar (50),
Tra_Paciente int not null,
foreign key (Tra_Paciente) references Pacientes (Pac_Identificacion)
);

insert into Tratamientos values (1, '2022/04/22', 'Alergias', '2022/05/01','2022/07/30', 'Ninguna', '1452365784');
insert into Tratamientos values (2, '2022/05/03', 'Distrofia Corneal', '2022/05/30', '2022/08/01', 'Ninguna', '5648724631');
insert into Tratamientos values (3, '2022/05/03', 'Sequedad Ocular', '2022/05/22', '2022/07/24', 'Ninguna', '1014523687');
insert into Tratamientos values (4, '2022/05/30', 'Glaucoma', '2022/05/30', '2022/07/20', 'Ninguna', '1025632678');
insert into Tratamientos values (5, '2022/05/03', 'Orzuelos ', '2022/05/24', '2022/06/22', 'Ninguna', '1205436824');

select *from Tratamientos;

drop database Ejercicio_2;




