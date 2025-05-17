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

-- 4 vistas

-- 2 triggers