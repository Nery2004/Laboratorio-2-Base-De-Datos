-- 3 funciones definidas por el usuario
-- Retorna un escalar
CREATE OR REPLACE FUNCTION promedio_tutor(tutor_id int)
RETURNS numeric AS 
$$
DECLARE
    resultado numeric;
BEGIN
    SELECT AVG(calificacion) INTO resultado FROM resenas r
    JOIN mentorias m ON r.mentoria_id = m.id
    JOIN curso_tutores ct ON m.curso_tutores_id = ct.id
    WHERE ct.tutor_id = promedio_tutor.tutor_id;   
    
    RETURN resultado;
END;
$$ 
LANGUAGE plpgsql;

-- Retorna un conjunto de resultados
CREATE OR REPLACE FUNCTION proximas_mentorias_estudiante(estudiante_id int)
RETURNS TABLE (mentoria_id INT, estudiante VARCHAR, tutor VARCHAR, curso VARCHAR, fecha DATE, hora_inicio TIME, hora_fin TIME) AS
$$
BEGIN
    RETURN QUERY
        SELECT m.id, ue.nombre, ut.nombre, c.nombre_curso, m.fecha, m.hora_fin, m.hora_fin FROM mentorias m
        JOIN curso_tutores ct ON m.curso_tutores_id = ct.id
        JOIN estudiantes e ON proximas_mentorias_estudiante.estudiante_id = e.id
        JOIN tutor t ON ct.tutor_id = t.id
        JOIN cursos c ON ct.curso_id = c.id
        JOIN usuarios ut ON t.usuario_id = ut.id
        JOIN usuarios ue ON e.usuario_id = ue.id
        WHERE m.estudiante_id = proximas_mentorias_estudiante.estudiante_id
        AND m.fecha > CURRENT_DATE;
END;
$$
LANGUAGE plpgsql;

-- Una que utilice múltiples parámetros o logica condicional
CREATE OR REPLACE FUNCTION mostrar_resenas_tutor(el_tutor_id int, calificacion_minima int)
RETURNS TABLE (tutor_id INT, tutor VARCHAR, mentoria_id INT, curso VARCHAR, estudiante_enseñado VARCHAR, calificacion INT, comentario TEXT) AS
$$
BEGIN
    IF calificacion_minima < 1 OR calificacion_minima > 5 THEN
        RAISE EXCEPTION 'La calificacion minima a mostrar debe estar entre 1 y 5';
    END IF;

    RETURN QUERY
    SELECT t.id, ut.nombre, m.id, c.nombre_curso , ue.nombre, r.calificacion, r.comentario FROM mentorias m
    JOIN resenas r ON m.id = r.mentoria_id
    JOIN curso_tutores ct ON m.curso_tutores_id = ct.id
    JOIN cursos c ON ct.curso_id = c.id
    JOIN tutor t ON el_tutor_id = t.id
    JOIN usuarios ut ON t.usuario_id = ut.id
    JOIN estudiantes e ON m.estudiante_id = e.id
    JOIN usuarios ue ON e.usuario_id = ue.id
    WHERE r.calificacion >= calificacion_minima;
END;
$$
LANGUAGE plpgsql;

-- EXTRA: Mostrar tutores con mas 5 de puntaje en resenas
CREATE OR REPLACE FUNCTION obtener_tutores_5_estrellas()
RETURNS TABLE (
    tutor_id INTEGER,
    nombre TEXT,
    email TEXT,
    telefono TEXT,
    cantidad_5_estrellas INTEGER
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        u.id AS tutor_id,
        u.nombre::TEXT,
        u.email::TEXT,
        u.telefono::TEXT,
        COUNT(r.calificacion)::INTEGER AS cantidad_5_estrellas
    FROM resenas r
    JOIN tutor t ON r.mentoria_id = t.id
    JOIN usuarios u ON t.usuario_id = u.id
    WHERE r.calificacion = 5
    GROUP BY u.id, u.nombre, u.email, u.telefono
    ORDER BY cantidad_5_estrellas DESC;
END;
$$ LANGUAGE plpgsql;

-- 2 procedimientos almacenados
-- Uno para inserciones complejas:
CREATE OR REPLACE PROCEDURE crear_mentoria(
    IN mi_estudiante_id INT,
    IN mi_tutor_id INT,
    IN mi_curso_id INT,
    IN mi_fecha DATE,
    IN mi_hora_inicio TIME,
    IN mi_hora_fin TIME
)
LANGUAGE plpgsql
AS
$$
DECLARE
    m_curso_tutores_id INT;
    m_precio NUMERIC;
    m_mentoria_id INT;
BEGIN
    -- Aqui validamos si existe tanto el usuario, como el tutor para impartir la mentoria
    IF NOT EXISTS (
        SELECT 1 FROM estudiantes
        WHERE id = mi_estudiante_id
    ) THEN
        RAISE EXCEPTION 'El estudiante de ID % no existe en la db', mi_estudiante_id;
    END IF;

    IF NOT EXISTS (
        SELECT 1 FROM tutor
        WHERE id = mi_tutor_id
    ) THEN
        RAISE EXCEPTION 'El tutor de ID % no existe en la db', mi_tutor_id;
    END IF;

    -- Miramos si el tutor da ese curso y de ese modo conseguimos el precio tambien
    SELECT ct.id, ct.precio INTO m_curso_tutores_id, m_precio FROM curso_tutores ct
    WHERE ct.curso_id = mi_curso_id
    AND ct.tutor_id = mi_tutor_id; 

    IF m_curso_tutores_id IS NULL THEN
        RAISE EXCEPTION 'El tutor % no da el curso de %', mi_tutor_id, mi_curso_id;
    END IF;

    -- Miramos si no se sobrelapan los horarios tanto del tutor como del estudiante
    IF EXISTS (
        SELECT 1 FROM mentorias m
        WHERE m.curso_tutores_id = m_curso_tutores_id
        AND m.fecha = mi_fecha
        AND (mi_hora_inicio, mi_hora_fin) OVERLAPS (m.hora_inicio, m.hora_fin)
    ) THEN
        RAISE EXCEPTION 'El tutor tiene ocupado ese horario';
    END IF;
    
    IF EXISTS (
        SELECT 1 FROM mentorias m
        WHERE m.estudiante_id = mi_estudiante_id
        AND m.fecha = mi_fecha
        AND (mi_hora_inicio, mi_hora_fin) OVERLAPS (m.hora_inicio, m.hora_fin)
    ) THEN
        RAISE EXCEPTION 'El estudiante tiene ocupado ese horario';
    END IF;

    -- Se inserta la mentoria
    INSERT INTO mentorias (estudiante_id, curso_tutores_id, fecha, hora_inicio, hora_fin) VALUES
    (mi_estudiante_id, m_curso_tutores_id, mi_fecha, mi_hora_inicio, mi_hora_fin)
    RETURNING id INTO m_mentoria_id;

    -- Se crea de una vez un cobro sobre dicha mentoria y se marca como pendiente
    INSERT INTO cobro (monto_total, mentorias_id, estado_id) VALUES
    (m_precio, m_mentoria_id, 1);
END;
$$;

--Uno para actualización:
CREATE OR REPLACE PROCEDURE gestionar_usuario(
    p_id INT,
    p_operacion VARCHAR,
    p_nombre VARCHAR DEFAULT NULL,
    p_email VARCHAR DEFAULT NULL,
    p_telefono VARCHAR DEFAULT NULL
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Verificar existencia del usuario
    IF NOT EXISTS (SELECT 1 FROM usuarios WHERE id = p_id) THEN
        RAISE EXCEPTION 'El usuario con ID % no existe.', p_id;
    END IF;

    IF p_operacion = 'actualizar' THEN
        -- Actualización del usuario
        UPDATE usuarios
        SET
            nombre = COALESCE(p_nombre, nombre),
            email = COALESCE(p_email, email),
            telefono = COALESCE(p_telefono, telefono),
            actualizado_en = CURRENT_TIMESTAMP
        WHERE id = p_id;
    ELSE
        RAISE EXCEPTION 'Operación no válida: %. Use "actualizar" ', p_operacion;
    END IF;
END;
$$;

--Pste es un ejemplo para actualizar:
CALL gestionar_usuario(
    p_id := 1, --<<--- cambiar al que tu queres
    p_operacion := 'actualizar', --<<--- cambiar al que tu queres
    p_nombre := 'Gabriel Busto', --<<--- cambiar al que tu queres
    p_email := '21073128931e1231@email.com', --<<--- cambiar al que tu queres
    p_telefono := '53212312'--<<--- cambiar al que tu queres
);
-- 4 vistas
-- Una vista simple: 
CREATE OR REPLACE VIEW mentorias_resumen AS
SELECT m.id, ue.nombre AS estudiante, ut.nombre AS tutor, c.nombre_curso AS curso, m.fecha, m.hora_inicio, m.hora_fin, 
co.monto_total AS precio, es.estado AS estado_de_pago FROM mentorias m
JOIN estudiantes e ON m.estudiante_id = e.id
JOIN usuarios ue ON e.usuario_id = ue.id
JOIN curso_tutores ct ON m.curso_tutores_id = ct.id
JOIN tutor t ON ct.tutor_id = t.id
JOIN usuarios ut ON t.usuario_id = ut.id
JOIN cursos c ON ct.curso_id = c.id
JOIN cobro co ON m.id = co.mentorias_id
JOIN estados es ON co.estado_id = es.id;

-- Una vista con JOIN y GROUP BY:
CREATE OR REPLACE VIEW mentorias_por_curso AS 
SELECT c.id, c.nombre_curso AS curso, COUNT(m.id) AS mentorias_totales FROM mentorias m
JOIN curso_tutores ct ON m.curso_tutores_id = ct.id
JOIN cursos c ON ct.curso_id = c.id
GROUP BY c.id, c.nombre_curso
ORDER BY mentorias_totales DESC;

--Vista con CASE: vista_mentorias_estado
CREATE OR REPLACE VIEW vista_mentorias_estado AS
SELECT
    m.id AS mentoria_id,
    u.nombre AS estudiante,
    c.nombre_curso,
    cb.monto_total,
    CASE 
        WHEN e.estado = 'Pagado' THEN 'Pago realizado'
        WHEN e.estado = 'Pendiente' THEN 'En espera de pago'
        ELSE 'No se puede'
    END AS estado_pago
FROM mentorias m
JOIN estudiantes ON m.estudiante_id = estudiantes.id
JOIN usuarios u ON estudiantes.usuario_id = u.id
JOIN curso_tutores ct ON m.curso_tutores_id = ct.id
JOIN cursos c ON ct.curso_id = c.id
JOIN cobro cb ON cb.mentorias_id = m.id
JOIN estados e ON cb.estado_id = e.id;

--Vista con COALESCE: vista_usuarios_contacto
CREATE OR REPLACE VIEW vista_usuarios_contacto AS
SELECT
    id AS usuario_id,
    nombre,
    email,
    telefono,
    COALESCE(email, telefono, 'Sin contacto') AS medio_contacto_preferido
FROM usuarios;

-- 2 triggers
-- De tipo BEFORE: 
CREATE OR REPLACE FUNCTION validar_resena()
RETURNS TRIGGER
LANGUAGE plpgsql AS
$$
DECLARE
    estudiante_resenando_id INT;
    fecha_mentoria DATE;
    hora_fin_mentoria TIME;
BEGIN
    SELECT estudiante_id, fecha, hora_fin INTO estudiante_resenando_id, fecha_mentoria, hora_fin_mentoria FROM mentorias
    WHERE id = NEW.mentoria_id;

    -- Vemos que la mentoria que se esta reseñando exista
    IF estudiante_resenando_id IS NULL THEN 
        RAISE EXCEPTION 'La mentoria de ID % no existe', NEW.mentoria_id;
    END IF;

    -- Hay que asegurar que la fecha y hora ya hayan pasado, porque no tendria sentido reseñar algo que no ha sucedido (aunque hay gente que erroneamente lo hace)
    IF (fecha_mentoria > CURRENT_DATE)
    OR (fecha_mentoria = CURRENT_DATE AND hora_fin_mentoria > CURRENT_TIME) THEN
        RAISE EXCEPTION 'No se puede reseñar una mentoria que aun no se ha dado';
    END IF;

    RETURN NEW;
END;
$$;

CREATE TRIGGER resena_insert_before
BEFORE INSERT ON resenas
FOR EACH ROW EXECUTE FUNCTION validar_resena();

-- De tipo AFTER: 
CREATE OR REPLACE FUNCTION actualizar_fecha_mentoria()
RETURNS TRIGGER AS $$
BEGIN
	-- Actualiza la mentoria correspondiente a la nueva reseña
    UPDATE mentorias
    SET actualizado_en = CURRENT_TIMESTAMP
    WHERE id = NEW.mentoria_id;

    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizar_mentoria
AFTER INSERT ON resenas -- Se activa DESPUÉS (AFTER) de insertar una fila en la tabla 'resenas'.
FOR EACH ROW
EXECUTE FUNCTION actualizar_fecha_mentoria();
