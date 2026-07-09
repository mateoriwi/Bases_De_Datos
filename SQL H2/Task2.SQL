INSERT INTO estudiantes (fecha_nacimiento, ciudad, nombre_completo, correo_electronico, genero, identificacion, carrera, fecha_ingreso) VALUES
('2007-11-09', 'Barranquilla', 'Mateo Hernandez', 'Mateito456@outlook.es', 'M', '1042254423','Política', '2025-06-15'),
('2008-10-31', 'Barranquilla', 'María Hernández', 'maripaulyhm3@gmail.com', 'F', '1042254332', 'Política', '2026-06-15'),
('2005-06-02', 'Bogotá', 'Emmanuel Barboza', 'Manucorreo@gmail.com', 'M', '1042543215', 'Bases de Datos', '2025-01-05'),
('2002-01-11', 'Bucaramanga', 'Felipe Matamoros', 'Felipebs@gmail.com', 'M', '1007889283', 'Enfermería', '2024-01-16'),
('2007-01-21', 'Bogotá', 'Larissa Castillo', 'larisacastillo@gmail.com', 'F', '1004391845', 'Enfermería', '2025-01-05' );

INSERT INTO docentes (nombre_completo, correo_electronico, departamento_academico, anios_experiencia) VALUES
('Abelardo De La Espriella', 'Firmesporlapatria@gmail.com', 'Política', '5'),
('Gustavo Petro', 'comotanmuchachos@gmail.com', 'Bases de Datos', '2'),
('Álvaro Uribe', 'nohayfalsospositivos@gmail.com', 'Enfermería', '2');

INSERT INTO cursos (nombre, codigo, creditos, semestre, id_docente) VALUES
('Politica', 201, 2, 2, 1),
('Bases de Datos', 200, 2, 1, 2),
('Enfermería', 202, 2, 2, 3),
('Discurso Político', 203, 2, 3, 1);