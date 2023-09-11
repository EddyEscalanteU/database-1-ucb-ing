


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






CREATE TABLE MATERIA(	
	SIGLA VARCHAR(10) NOT NULL,
	NOMBRE VARCHAR(100) NOT NULL
)


CREATE TABLE PREREQUISITO(	
	ID_PADRE VARCHAR(10) NOT NULL,
	ID_HIJO VARCHAR(10) NOT NULL
)

SELECT * FROM MATERIA
SELECT * FROM PREREQUISITO

INSERT INTO MATERIA VALUES
('INF-100', 'Intro'),
('INF-101', 'Calculo'),
('INF-105', 'Programacion 1'),
('INF-203', 'Base de Datos'),
('INF-205', 'Programacion 2'),
('INF-209', 'Fisica'),
('INF-513', 'IA')


INSERT INTO PREREQUISITO VALUES
('INF-203', 'INF-100'),
('INF-203', 'INF-101'),
('INF-203', 'INF-105'),
('INF-205', 'INF-100'),
('INF-205', 'INF-101'),
('INF-205', 'INF-105'),
('INF-209', 'INF-100'),
('INF-209', 'INF-101'),
('INF-209', 'INF-105'),
('INF-513', 'INF-203'),
('INF-513', 'INF-205'),
('INF-513', 'INF-209')
	


--Visualizar todos los prerequisitos de la materia Base de Datos

select *
from MATERIA 
where SIGLA in (select ID_HIJO
				from MATERIA m, PREREQUISITO p
				where m.SIGLA = p.ID_PADRE and m.NOMBRE = 'Base de Datos')




