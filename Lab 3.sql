

use DATABASE_UCB

--Obtener los estudiantes con mayoria de edad
SELECT NOMBRE_COMPLETO, EDAD
FROM ESTUDIANTES
WHERE EDAD > 18

--Obtener los estudiantes con genero femenino
SELECT NOMBRE_COMPLETO, GENERO
FROM ESTUDIANTES
WHERE GENERO = 'F'

--Obtener los estudiantes femeninos con mayoria de edad
SELECT NOMBRE_COMPLETO, GENERO, EDAD
FROM ESTUDIANTES
WHERE 