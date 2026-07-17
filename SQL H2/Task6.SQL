
CREATE ROLE revisor_academico;


GRANT SELECT ON vista_historial_academico TO revisor_academico;


REVOKE INSERT, UPDATE, DELETE ON inscripciones FROM revisor_academico;


BEGIN;


UPDATE inscripciones 
SET calificacion_final = 98.00 
WHERE inscripciones.id_inscripcion = 1;


SAVEPOINT punto_control_uno;


UPDATE inscripciones 
SET calificacion_final = 10.00 
WHERE inscripciones.id_inscripcion = 2;


ROLLBACK TO SAVEPOINT punto_control_uno;


COMMIT;
