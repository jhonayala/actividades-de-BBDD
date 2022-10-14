create database prueba;

use prueba;

create table socios(
	CodSocio char(10) primary key not null,
	Nombre varchar(20),
	Apellidos varchar(30),
	Domicilio varchar(30),
	Poblacion varchar(30),
	CodPostal char(5),
	Provincia varchar(15),
	Telefono char(9),
	Observaciones text,
	sexo char(1));

create table temas (
	IdTema int auto_increment primary key,
	Tema varchar(15));
    
create table peliculas (
	IdPelicula int auto_increment primary key,
	Titulo varchar(40),
	Protagonista varchar(30),
	Secundario varchar(30),
	Director varchar(30),
	Nacionalidad varchar(30),
	IdTema int ,
	Ano int,
	Duracion int ,
	Precio decimal(16,2));

create table alquiler(
	IdAlquiler int auto_increment primary key ,
	CodSocio char(10),
	IdPelicula int,
	FechaAlquiler date,
	FechaDevolucion date ,
	Devuelto boolean);



