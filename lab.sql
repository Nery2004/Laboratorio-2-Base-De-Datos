-- 3 funciones definidas por el usuario


-- Mostrar tutores con mas 5 de puntaje en resenas
WITH tutores_5_estrellas AS (
    SELECT 
        r.mentoria_id AS tutor_id,
        COUNT(*) AS cantidad_5_estrellas
    FROM resenas r
    WHERE r.calificacion = 5 
    GROUP BY r.mentoria_id
)
SELECT 
	u.id,
    u.nombre,
    u.email,
    u.telefono,
    t5.cantidad_5_estrellas
FROM tutores_5_estrellas t5
JOIN (
    SELECT id, usuario_id 
    FROM tutor
) t ON t5.tutor_id = t.id
JOIN usuarios u ON t.usuario_id = u.id
ORDER BY t5.cantidad_5_estrellas DESC;

-- 2 procedimientos almacenados

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

-- 2 triggers