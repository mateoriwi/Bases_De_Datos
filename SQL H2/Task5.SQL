CREATE VIEW vista_historial_academico AS
SELECT 
    estudiantes.nombre_completo AS nombre_estudiante,
    cursos.nombre AS nombre_curso,
    docentes.nombre_completo AS nombre_docente,
    cursos.semestre AS semestre_del_curso,
    inscripciones.calificacion_final AS calificacion_final
FROM inscripciones
INNER JOIN estudiantes ON inscripciones.id_estudiante = estudiantes.id_estudiante
INNER JOIN cursos ON inscripciones.id_curso = cursos.id_curso
LEFT JOIN docentes ON cursos.id_docente = docentes.id_docente; 
