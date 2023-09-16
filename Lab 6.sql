


USE DATABASE_UCB



CREATE TABLE PLAN_CUENTAS(	
	COD INT NOT NULL,
	NOMBRE VARCHAR(100) NOT NULL,
	CUENTA_PADRE INT NULL
)


SELECT * FROM PLAN_CUENTAS

INSERT INTO PLAN_CUENTAS VALUES
(16542, 'Caja Corriente', NULL),
(51487, 'Caja Diaria', 16542),
(16813, 'Caja Conbustible', 51487),
(54846, 'Prestamo', 16542),
(21215, 'Credito Vehicular', 16542)


--Visualizar todas las cuentas que dependen de una Caja Corriente
--CONSULTAS ANIDADAS
select *
from PLAN_CUENTAS
where CUENTA_PADRE = (select COD
					  from PLAN_CUENTAS
					  where NOMBRE = 'Caja Corriente')
			  
--Visualizar todas las cuentas que dependen del codigo 16542
select *
from PLAN_CUENTAS
where CUENTA_PADRE = 16542


/*
CREATE TABLE MATERIA(	
	ID INT IDENTITY(1,1) NOT NULL, 
	SIGLA VARCHAR(10) NOT NULL,
	NOMBRE VARCHAR(100) NOT NULL,
	PRIMARY KEY(ID)
)
*/


CREATE TABLE MATERIA(	
	ID INT NOT NULL PRIMARY KEY, 
	SIGLA VARCHAR(10) NOT NULL,
	NOMBRE VARCHAR(100) NOT NULL
)

CREATE TABLE PREREQUISITO(	
	ID_PADRE INT NOT NULL,
	ID_HIJO INT NOT NULL,
	FOREIGN KEY (ID_PADRE) REFERENCES MATERIA(ID),
	FOREIGN KEY (ID_HIJO) REFERENCES MATERIA(ID),
)

SELECT * FROM MATERIA
SELECT * FROM PREREQUISITO


INSERT INTO MATERIA VALUES
(1, 'INF-100', 'Intro'),
(2, 'INF-101', 'Calculo'),
(3, 'INF-105', 'Programacion 1'),
(4, 'INF-203', 'Base de Datos'),
(5, 'INF-205', 'Programacion 2'),
(6, 'INF-209', 'Fisica'),
(7, 'INF-513', 'IA')


INSERT INTO PREREQUISITO VALUES
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 4),
(7, 5),
(7, 6)
	


--Visualizar todos los prerequisitos de la materia Base de Datos

select *
from MATERIA 
where ID in (select ID_HIJO
				from MATERIA m, PREREQUISITO p
				where m.ID = p.ID_PADRE and m.NOMBRE = 'Base de Datos')




