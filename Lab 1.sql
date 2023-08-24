
--Asi se escribe un comentario en SQL

--Crear una base de datos
create database DATABASE_UCB

--Utilizar la base de datos
use DATABASE_UCB

--Crear las tablas de información (entidades)
create table ESTUDIANTES (
	ID					INT IDENTITY(1, 1),
	NOMBRE_COMPLETO		VARCHAR(200) NOT NULL,
	CARNET				INT NOT NULL,
	GENERO				VARCHAR(20) NOT NULL,
	EDAD				INT NOT NULL
);
--Insertar datos a la tabla ESTUDIANTES
INSERT INTO ESTUDIANTES (NOMBRE_COMPLETO, CARNET, GENERO, EDAD) 
VALUES ('Juan Perez', 7854933, 'Masculino', 99);


-- Insertar 10 tuplas en la tabla ESTUDIANTES
INSERT INTO ESTUDIANTES (NOMBRE_COMPLETO, CARNET, GENERO, EDAD)
VALUES
(
    'Juan Pérez García',
    123456789,
    'M',
    25
),
(
    'María Sánchez López',
    987654321,
    'F',
    20
),
(
    'José González Fernández',
    321456789,
    'M',
    19
),
(
    'Pedro Rodríguez Gómez',
    789456123,
    'M',
    21
),
(
    'Ana Martínez Pérez',
    543216789,
    'F',
    22
),
(
    'Luis Fernández García',
    963214578,
    'M',
    23
),
(
    'Carmen López Sánchez',
    789543216,
    'F',
    24
),
(
    'David González Fernández',
    654321789,
    'M',
    25
),
(
    'Laura García Pérez',
    987543216,
    'F',
    26
);



--MANIPULAR UNA BASE DE DATOS

SELECT *
FROM ESTUDIANTES
WHERE EDAD < 20