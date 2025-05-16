-- Tabla usuarios
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    conteo VARCHAR(100) UNIQUE,
    telefono VARCHAR(100) UNIQUE CHECK (LENGTH(telefono) BETWEEN 8 AND 16),
    facial_positionno TIMESTAMP,
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    actualizado_en TIMESTAMP NULL
);

-- Tabla categoría
CREATE TABLE categoria (
    id SERIAL PRIMARY KEY,
    categoria VARCHAR(100) NOT NULL
);

-- Tabla Cursos
CREATE TABLE cursos (
    id SERIAL PRIMARY KEY,
    categoria_id INT NOT NULL REFERENCES categoria(id),
    nombre_curso VARCHAR(100) NOT NULL,
    descripcion TEXT,
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    actualizado_en TIMESTAMP NULL
);

-- Tabla estudiantes
CREATE TABLE estudiantes (
    id SERIAL PRIMARY KEY,
    usuario_id INT NOT NULL REFERENCES usuarios(id)
);

-- Tabla tutor
CREATE TABLE tutor (
    id SERIAL PRIMARY KEY,
    usuario_id INT NOT NULL REFERENCES usuarios(id)
);

-- Tabla dias
CREATE TABLE dias (
    id SERIAL PRIMARY KEY,
    dia VARCHAR(100) NOT NULL
);

-- Tabla disponibilidad_tutores
CREATE TABLE disponibilidad_tutores (
    id SERIAL PRIMARY KEY,
    tutor_id INT NOT NULL REFERENCES tutor(id),
    dia_id INT NOT NULL REFERENCES dias(id),
    hora_inicio TIME NOT NULL CHECK (hora_inicio < hora_fin),
    hora_fin TIME NOT NULL
);

-- Tabla resenas
CREATE TABLE resenas (
    id SERIAL PRIMARY KEY,
    mentoria_id INT NOT NULL REFERENCES mentoria(id), 
    calificacion INT CHECK (calificacion BETWEEN 1 AND 5),
    comentario TEXT NULL,
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla chats
CREATE TABLE chats (
    id SERIAL PRIMARY KEY,
    estudiante_id INT NOT NULL REFERENCES estudiantes(id),
    tutor_id INT NOT NULL REFERENCES tutor(id),
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    actualizado_en TIMESTAMP NULL
);

-- Tabla curso_tutores
CREATE TABLE curso_tutores (
    id SERIAL PRIMARY KEY,
    curso_id INT NOT NULL REFERENCES cursos(id),
    tutor_id INT NOT NULL REFERENCES tutor(id),
    precio DECIMAL(10,2) NOT NULL CHECK (precio >= 0)
);

-- Tabla mentorias
CREATE TABLE mentorias (
    id SERIAL PRIMARY KEY,
    estudiante_id INT NOT NULL REFERENCES estudiantes(id),
    curso_tutores_id INT NOT NULL REFERENCES curso_tutores(id),
    fecha DATE NOT NULL,
    hora_inicio TIME NOT NULL CHECK (hora_inicio < hora_fin),
    hora_fin TIME NOT NULL
);

-- Tabla estados
CREATE TABLE estados (
    id SERIAL PRIMARY KEY,
    estado VARCHAR(100) NOT NULL
);

-- Tabla Cobro
CREATE TABLE cobro (
    id SERIAL PRIMARY KEY,
    monto_total DECIMAL(10,2) NOT NULL CHECK (monto_total >= 0),
    mentorias_id INT NOT NULL REFERENCES mentorias(id),
    estado_id INT NOT NULL REFERENCES estados(id),
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    actualizado_en TIMESTAMP NULL
);

-- Tabla usuario_chats
CREATE TABLE usuario_chats (
    id SERIAL PRIMARY KEY,
    usuario_id INT NOT NULL REFERENCES usuarios(id),
    chat_id INT NOT NULL REFERENCES chats(id),
    mensaje TEXT NOT NULL,
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);