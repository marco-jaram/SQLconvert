-- Ejercicio unidad 1 Bases de datos basica
-- Aspecto 3: Crea una tabla que permita almacenar la información sobre una automotriz. Incluye el número de campos que consideres pertinentes. 
-- Ingresa 10 registros y realiza las siguientes consultas:

--     Dos consultas empleando Select  junto con la función To_char
--     Dos consultas empleando Select  junto con la función To_date
--     Dos consultas empleando Select  junto con la función To_number

create database if not exists dbautomoviles;
 use dbautomoviles;
 create table if not exists dbautomoviles.producto
 (
id int not null unique auto_increment, 
nombreProducto varchar(50) unique,
marca varchar(40),
origen varchar(40),
fechaIngreso varchar (30),
precio decimal(8,2)
 );
 -- agregando datos
insert into producto  values (0, 'Volkswagen Vento',    'Volkswagen',       'Monterrey',    '20200205',   174.000);
insert into producto  values (0, 'Honda CR-V',          'Honda',            'Mexicali',     '20170802',   285.999);
insert into producto  values (0, 'Toyota RAV4',         'Toyota',           'Sonora',       '20220503',   470.000);
insert into producto  values (0, 'Audi A5',             'Audi',             'EU',           '20210903',   225.000);
insert into producto  values (0, 'Chevrolet Aveo',      'Chevrolet',        'EU',           '20200403',   215.000);
insert into producto  values (0, 'Nissan March',           'Nissan',        'Tijuana',      '20210605',   230.000);
insert into producto  values (0, 'Suzuki Swift',           'Suzuki',        'Mexico',       '20220604',   285.999);
insert into producto  values (0, 'Renault Duster',         'Renault',       'Eu',           '2019-7-4',   265.000);
insert into producto  values (0, 'Mini Cooper',            'Mini',          'EU',           '20190201',   405.999);
insert into producto  values (0, 'Mitsubishi L-200',       'Mitsubishi',    'EU',           '20190503',   569.000);

describe producto;
select * from producto;

-- CONSULTAS 
-- convirtiendo  de char a formato  fecha date
select nombreProducto, 'ingreso: ',cast(fechaIngreso as datetime)  from producto;
select nombreProducto, 'ingreso: ',cast(fechaIngreso as date)  from producto;


-- convirtiendo de fecha a numero
Select nombreProducto, ' su fecha en numero: ', convert(fechaIngreso, decimal) from producto;
Select nombreProducto, ' su fecha en numero: ', convert(fechaIngreso, datetime) from producto;

-- conviertiendo de numero a char
select nombreProducto, 'el costo es ', convert(precio , char) from producto;
select nombreProducto, 'el costo es ', convert(precio , double) from producto;
 
 
 
