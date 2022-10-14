create database if not exists t_2_tarea_2;
use t_2_tarea_2;
create table cliente(
	CodCliente int auto_increment primary key,
	DNI char(10) unique key,
	Nombre varchar (30) not null,
	Direccion varchar(45),
	Telefono char (9));
create table reserva(
	Numero int auto_increment primary key,
	FechaInicio date ,
	FechaFin date,
	PrecioTotal Decimal(16,2),
	CodCliente int);
create table coche(
	Matricula char (6) primary key ,
	Marca varchar(30) not null,
    Modelo varchar(30) not null,
    Color varchar (20),
    PrecioHora decimal(10,2));

create table avala(
	Avalado int primary key,
    Avalador int );

create table incluye(
	Numero int ,
	Matricula char(6),
    litrosGas decimal(16,2),
    constraint Pk_Inc primary key(Numero,Matricula));
    
    alter table reserva
    add constraint FK_Res_CodCli 
    foreign key (CodCliente) 
    references cliente(CodCliente);
    
    alter table incluye
    add constraint FK_Inc_Num 
    foreign key(Numero) 
    references reserva(Numero),
    
    add constraint FK_Inc_Mat 
    foreign key (Matricula) 
    references coche(Matricula);
    
    alter table avala 
    add constraint FK_Av_Avdo 
    foreign key(avalado)
    references cliente(CodCliente),
    
	add constraint FK_Av_Avdor
    foreign key(avalador)
    references cliente(CodCliente);
    
    
