
drop table personas

CREATE TABLE PERSONAS (
 ID INT IDENTITY(1,1) NOT NULL,
 NOMBRE VARCHAR(50) NOT NULL UNIQUE,
 TELEFONO VARCHAR(10) NOT NULL,
 EDAD INT NOT NULL,
 PRIMARY KEY (ID)
  );
 
INSERT INTO PERSONAS (NOMBRE, TELEFONO, EDAD) 
VALUES ('John Smith', '555-1234', 25),('Emily Johnson', '555-5678', 32),
('Michael Gavis', '555-9876', 45),
('Sarah Wilson', '555-2345', 28),
('David Brown', '555-4567', 37),
('Jessica Taylor', '555-6789', 29),
('Christopher Anderson', '555-3456', 33),
('Amanda Martinez', '555-7890', 26),
('Daniel Thompson', '555-9012', 41),
('Olivia Garcia', '555-1122', 35),
('Matthew Hernandez', '555-3344', 27),
('Sophia Lewis', '555-5506', 38),
('Andrew Wright', '555-7788', 42),
('Emma Hall', '555-9710', 31),
('James Young', '555-2211', 29),
('Abigail Clark', '555-4433', 36),
('Joseph Rodriguez', '555-6655', 39),
('Mia Lee', '555-8877', 34),
('Benjamin Walker', '555-0088', 30),
('Elizabeth Scott', '555-2200', 43),
('Alexander Green', '555-4422', 26),
('Sofia Adams', '555-6644', 40),
('William Baker', '555-8866', 33),
('Charlotte King', '555-0022', 27),
('Ethan Allen', '555-3394', 44),
('Amelia Hill', '555-5566', 25),
('Daniel Thomas', '555-7088', 35),
('Harper Johnson', '555-9900', 38),
('Michael Davis', '555-2111', 29),
('Evelyn Martinez', '555-4333', 41),
('Jacob Taylor', '555-6555', 32),
('Mia Anderson', '555-8777', 37),
('Sophia White', '555-0999', 30),
('Andrew Smith', '555-3322', 45),
('Oliver Harris', '555-5544', 28),
('Isabella Wilson', '555-7766', 42),
('Elijah Thompson', '555-9988', 31),
('Emma Johnson', '555-2200', 46),
('Lucas Clark', '555-4422', 29),
('Ava Davis', '555-6644', 34),
('Logan Baker', '555-8866', 39),
('Charlotte Taylor', '555-0022', 32),
('Mason Adams', '555-2244', 47),
('Amelia Thomas', '555-4466', 27),
('Matthew Wright', '555-6688', 43),
('Isabella Turner', '555-8800', 33),
('Liam Walker', '555-0011', 28),
('Sophia Foster', '555-2233', 45),
('Benjamin Powell', '555-4455', 30),
('Ella Myers', '555-6677', 44),
('James Cox', '555-8899', 34),
('Madison Bell', '555-0033', 29),
('Noah Kelly', '555-2255', 46),
('Avery Patterson', '555-4477', 31),
('Isabella White', '555-6699', 42),
('Carter Reed', '555-8822', 35),
('Scarlett Cook', '555-0044', 30),
('Jackson Phillips', '555-2266', 47),
('Lily Morris', '555-4488', 33),
('Henry Peterson', '555-6600', 28),
('Grace Jones', '555-8822', 36),
('Wyatt Parker', '555-0055', 43),
('Victoria Roberts', '555-2277', 31),
('Sebastian Stewart', '555-4400', 48),
('Elena Hayes', '555-6622', 34),
('David Turner', '555-8844', 37),
('Ashley Price', '555-0077', 32),
('Gabriel Ramirez', '555-2299', 49),
('Natalie Marshall', '555-4411', 35),
('Jackson Allen', '555-6633', 38),
('Leah Hernandez', '555-8856', 33),
('Sophie Brown', '555-4477', 36),
('Daniel Simpson', '555-6699', 31),
('Madison Reed', '555-8822', 39),
('Benjamin Foster', '555-0044', 34),
('Ella Peterson', '555-2266', 37),
('Jack Phillips', '555-4488', 32),
('Emily Morris', '555-6600', 40),
('Oliver Price', '555-8822', 35),
('Ava Roberts', '555-0055', 41),
('Logan Stewart', '555-2277', 33),
('Charlotte Hayes', '555-4400', 38),
('Lucas Turner', '555-6622', 42),
('Emma Ramirez', '555-8844', 36),
('Liam Marshall', '555-0077', 43),
('Mia Allen', '555-2299', 34),
('Oliver Wilson', '555-4411', 39),
('Sophia Davis', '555-6633', 44),
('Jacob Hernandez', '555-8855', 35),
('Isabella King', '555-0088', 40),
('James Taylor', '555-3300', 36),
('Avery Anderson', '555-5522', 45),
('Charlotte Walker', '555-7744', 37),
('Mason Martinez', '555-9966', 41),
('Olivia Johnson', '555-1188', 38),
('Sebastian Clark', '555-3322', 46),
('Evelyn Adams', '555-5544', 39),
('William Nelson', '555-7766', 42),
('Amelia Baker', '555-9900', 40),
('Logan White', '555-3311', 47);



select count( distinct TELEFONO) 
from PERSONAS


select TELEFONO
from personas 
group by TELEFONO
having count(*) > 1



select  top 50 *
from PERSONAS

drop table PERSONAS_UNO

CREATE TABLE PERSONAS_UNO (
 ID INT NOT NULL,
 NOMBRE VARCHAR(50) NOT NULL UNIQUE,
 TELEFONO VARCHAR(10) NOT NULL,
 EDAD INT NOT NULL,
 PRIMARY KEY (ID)
);

insert into PERSONAS_UNO 
select top 50 *
from PERSONAS



CREATE TABLE PERSONAS_DOS (
 ID INT NOT NULL,
 NOMBRE VARCHAR(50) NOT NULL UNIQUE,
 TELEFONO VARCHAR(10) NOT NULL,
 EDAD INT NOT NULL,
 PRIMARY KEY (ID)
);


insert into PERSONAS_DOS 
select TOP 50 *
from PERSONAS
ORDER BY ID DESC



SELECT * FROM PERSONAS_UNO

SELECT * FROM PERSONAS_DOS

--------------producto cartesiano
select *
from PERSONAS_UNO, PERSONAS_DOS
--------------diferencia (A-B) + intersección
SELECT *
FROM PERSONAS_UNO A
LEFT JOIN PERSONAS_DOS B
ON A.TELEFONO = B.TELEFONO
--------------intersección (one)
SELECT *
FROM PERSONAS_UNO A
inner join PERSONAS_DOS B
on A.TELEFONO = B.TELEFONO
--------------intersección (two)
SELECT * 
FROM PERSONAS_UNO A, PERSONAS_DOS B 
WHERE A.TELEFONO = B.TELEFONO
--------------diferencia (B-A) + intersección
select *
from PERSONAS_UNO A
right join PERSONAS_DOS B 
on A.TELEFONO = B.TELEFONO