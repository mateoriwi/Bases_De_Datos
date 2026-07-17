-- Punto 1 --
SELECT estudiantes.nombre_completo, cursos.nombre, inscripciones.calificacion_final
FROM estudiantes 
INNER JOIN inscripciones ON estudiantes.id_estudiante = inscripciones.id_estudiante 
INNER JOIN cursos ON inscripciones.id_curso = cursos.id_curso

-- Punto 2 --
SELECT docentes.nombre_completo, cursos.nombre, docentes.anios_experiencia 
FROM docentes
INNER JOIN cursos ON cursos.id_docente = docentes.id_docente
WHERE anios_experiencia > 5

-- Punto 3 --
SELECT id_curso, curso.nombre,  AVG(calificacion_final) AS promedio_de_la_materia
FROM inscripciones
INNER JOIN curso ON cursos.id_curso = inscripciones.id_curso
GROUP BY inscripciones.id_curso

-- Punto 4 --
SELECT estudiantes.nombre_completo AS nombre_del_estudiante,
COUNT(inscripciones.id_curso) AS total_de_cursos_inscritos
FROM inscripciones
INNER JOIN estudiantes ON inscripciones.id_estudiante = estudiantes.id_estudiante
GROUP BY estudiantes.nombre_completo
HAVING COUNT(inscripciones.id_curso) > 1;

-- Punto 5 -- 
ALTER TABLE estudiantes 
ADD COLUMN estado_academico VARCHAR(20) DEFAULT 'Regular';

-- Punto 6 --

DELETE FROM docentes 
WHERE docentes.id_docente = 1;
SELECT cursos.id_curso, cursos.nombre, cursos.id_docente 
FROM cursos;

-- Punto 7 -- 
SELECT cursos.nombre AS nombre_del_curso, 
COUNT(inscripciones.id_estudiante) AS total_de_estudiantes_inscritos
FROM inscripciones
INNER JOIN cursos ON inscripciones.id_curso = cursos.id_curso
GROUP BY cursos.nombre
HAVING COUNT(inscripciones.id_estudiante) > 2;
