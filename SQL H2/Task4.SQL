-- Punto 1 --
SELECT 
    estudiantes.nombre_completo AS nombre_del_estudiante, 
    ROUND(AVG(inscripciones.calificacion_final), 2) AS promedio_del_estudiante
FROM inscripciones
INNER JOIN estudiantes ON inscripciones.id_estudiante = estudiantes.id_estudiante
GROUP BY estudiantes.nombre_completo
HAVING AVG(inscripciones.calificacion_final) > (
    SELECT AVG(inscripciones.calificacion_final) 
    FROM inscripciones
);

-- Punto 2 --

SELECT DISTINCT 
    estudiantes.carrera AS nombre_de_la_carrera
FROM estudiantes
WHERE EXISTS (
    SELECT 1 
    FROM inscripciones
    INNER JOIN cursos ON inscripciones.id_curso = cursos.id_curso
    WHERE inscripciones.id_estudiante = estudiantes.id_estudiante 
      AND cursos.semestre >= 2
);

-- Punto 3 -- 

SELECT 
    COUNT(inscripciones.id_inscripcion) AS total_inscripciones_procesadas,
    SUM(inscripciones.calificacion_final) AS suma_total_puntos_acumulados,
    MAX(inscripciones.calificacion_final) AS nota_maxima_registrada,
    MIN(inscripciones.calificacion_final) AS nota_minima_registrada,
    ROUND(AVG(inscripciones.calificacion_final), 2) AS promedio_general_universidad
FROM inscripciones;

