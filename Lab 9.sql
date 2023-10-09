


USE DATABASE_UCB


--------------------------------------CREATE
CREATE TABLE MASCOTA(	
	ID INT NOT NULL PRIMARY KEY, 
	NOMBRE VARCHAR(100) NOT NULL
)
--------------------------------------ALTER
ALTER TABLE MASCOTA
ADD EDAD INT DEFAULT 1 NOT NULL;
--------------------------------------DROP
DROP TABLE MASCOTA;



/*
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);



UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;



DELETE FROM table_name WHERE condition;

*/


select * from mascota
--------------
INSERT INTO MASCOTA (ID, NOMBRE)
VALUES (20, 'Mascota 2')
--------------
UPDATE MASCOTA
SET NOMBRE = 'Mascota New 11'
WHERE ID = 11;
--------------
DELETE FROM MASCOTA WHERE ID = 20;