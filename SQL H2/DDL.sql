CREATE DATABASE gestion_academica_universidad

CREATE TABLE estudiantes (
    id_estudiante SERIAL PRIMARY KEY,
    fecha_nacimiento DATE NOT NULL,
    ciudad VARCHAR(100) NOT NULL,
    nombre_completo VARCHAR(100) NOT NULL,
    correo_electronico VARCHAR(100) NOT NULL,
    genero CHAR(1) CHECK (genero IN ('M', 'F')) NOT NULL,
    identificacion VARCHAR(100) UNIQUE NOT NULL,
    carrera VARCHAR(100) NOT NULL,
    fecha_ingreso DATE NOT NULL
);

CREATE TABLE docentes (
    id_docente SERIAL PRIMARY KEY,
    nombre_completo VARCHAR (50) NOT NULL,
    correo_electronico VARCHAR (100) NOT NULL,
    departamento_academico VARCHAR(50) NOT NULL ,
    anios_experiencia INT CHECK (anios_experiencia >= 0)
);

CREATE TABLE cursos (
    id_curso SERIAL PRIMARY KEY,
    nombre VARCHAR (100) NOT NULL,
    codigo INT UNIQUE NOT NULL,
    creditos INT NOT NULL,
    semestre INT CHECK (semestre BETWEEN 1 AND 10) NOT NULL,
    id_docente INT, 

    CONSTRAINT fk_docente_id FOREIGN KEY (id_docente) REFERENCES docentes(id_docente)
);

CREATE TABLE inscripciones (
    id_inscripcion SERIAL PRIMARY KEY,
    id_estudiante INT,
    id_curso INT,
    fecha_inscripcion DATE, 
    calificacion_final NUMERIC(3,2) CHECK (calificacion_final BETWEEN 0.0 AND 5.0), 

    CONSTRAINT fk_estudiante FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante)
    CONSTRAINT fk_curso FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

