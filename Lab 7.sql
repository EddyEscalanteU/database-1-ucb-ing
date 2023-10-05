
USE DATABASE_UCB


CREATE TABLE VEHICULO(	
	ID INT NOT NULL PRIMARY KEY, 
	MATRICULA VARCHAR(100) NOT NULL,
	MODELO VARCHAR(100) NOT NULL,
	POTENCIA_CV VARCHAR(100) NOT NULL
)

INSERT INTO VEHICULO VALUES (1, 'Matricula 1', 'Modelo 1', 'Potencia 1');
INSERT INTO VEHICULO VALUES (2, 'Matricula 2', 'Modelo 2', 'Potencia 2');

CREATE TABLE TAXI(	
	ID INT NOT NULL PRIMARY KEY, 
	NUMERO_LICENCIA INT NOT NULL,
	ID_VEHICULO INT NOT NULL,
	FOREIGN KEY (ID_VEHICULO) REFERENCES VEHICULO(ID)
)

INSERT INTO TAXI VALUES (51, 123, 1);
INSERT INTO TAXI VALUES (100, 456, 2);

CREATE TABLE AUTOBUS(	
	ID INT NOT NULL PRIMARY KEY, 
	NUMERO_PLAZAS INT NOT NULL,
	ID_VEHICULO INT NOT NULL,
	FOREIGN KEY (ID_VEHICULO) REFERENCES VEHICULO(ID)
)

INSERT INTO AUTOBUS VALUES (77, 20, 2);

--///////////////////////////// Consultas
Select * from VEHICULO
Select * from TAXI
Select * from AUTOBUS
--///////////////////////////////

Select t.ID, v.MATRICULA, v.MODELO, v.POTENCIA_CV, t.NUMERO_LICENCIA 
from TAXI t, VEHICULO v
where t.ID_VEHICULO = v.ID

Select a.ID, v.MATRICULA, v.MODELO, v.POTENCIA_CV, a.NUMERO_PLAZAS
from AUTOBUS a, VEHICULO v
where a.ID_VEHICULO = v.ID