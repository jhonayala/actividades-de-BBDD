create database t_2_tarea_1;
use t_2_tarea_1;
create table cliente(
	NIF char(10) primary key,
	Nombre varchar (30),
	Direccion varchar(45),
	Telefono char (9));

create table modelodormitorio(
	Cod char(5) primary key);

create table montador(
	NIF char(10) primary key,
    Nombre varchar(45),
    Direccion varchar(45),
    Telefono char(9));

create table compra(
	NIF_C char(10),
    Modelo char(5),
    FechaCompra date,
    constraint PK_Compra 
    primary key(NIF_C,Modelo,FechaCompra));

create table monta(
	Modelo char(5),
    NIF_M char(10),
    FechaMontaje date,
    constraint PK_Monta 
    primary key(Modelo,NIF_M,FechaMontaje));
    
-- añadiendo foreign keys
alter table compra add 
constraint FK_NIF_C foreign key (NIF_C)
references cliente(NIF) ;

alter table compra add 
constraint FK_Mod_C foreign key (Modelo)
references modelodormitorio(Cod);

alter table monta add 
constraint FK_NIF_M foreign key (NIF_M)
references montador(NIF);

alter table monta add 
constraint FK_Mod_M foreign key (Modelo)
references Montador(NIF);
-- añadiendo columna a cliente
alter table cliente  add Edad int;

alter table cliente add check ( Edad>=18 and Edad<=99);

-- modificando columna en cliente

alter table cliente modify Direccion varchar(150);


-- creacionde index

create index NombreIndex on cliente(Nombre);

