-- Punto 1 --
SELECT inscripciones.id_estudiante, cursos.nombre
FROM inscripciones
INNER JOIN cursos ON inscripciones.id_curso = cursos.id_curso;

-- Punto 2 --
SELECT estudiantes.nombre_completo, cursos.nombre, inscripciones.calificacion_final
FROM estudiantes 
INNER JOIN inscripciones ON estudiantes.id_estudiante = inscripciones.id_estudiante 
INNER JOIN cursos ON inscripciones.id_curso = cursos.id_curso

-- Punto 3 --
SELECT docentes.nombre_completo, cursos.nombre, docentes.anios_experiencia 
FROM docentes
INNER JOIN cursos ON cursos.id_docente = docentes.id_docente
WHERE anios_experiencia > 5

-- Punto 4 --
SELECT id_curso, curso.nombre,  AVG(calificacion_final) AS promedio_de_la_materia
FROM inscripciones
INNER JOIN curso ON curso.id_curso = inscripciones.id_curso
GROUP BY id_curso