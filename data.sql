-- ---------- 1. tablas de catálogo estático ----------
INSERT INTO dias (dia) VALUES
  ('Lunes'), ('Martes'), ('Miércoles'), ('Jueves'),
  ('Viernes'), ('Sábado'), ('Domingo');

INSERT INTO estados (estado) VALUES
  ('Pendiente'), ('Pagado'), ('Cancelado');

INSERT INTO categoria (categoria) VALUES
  ('Matemáticas'), ('Idiomas'), ('Ciencias'), ('Programación'),
  ('Historia'), ('Arte'), ('Música'), ('Economía'),
  ('Física'), ('Química');

-- ---------- 2. usuarios (60) ----------
INSERT INTO usuarios (nombre, email, telefono, fecha_nacimiento) VALUES
 ('Kevin Martínez',        'kevin.martinez@gmail.com',      '50242157810','2001-05-14'),
 ('Ana López',             'ana.lopez98@hotmail.com',       '50248961732','1998-02-28'),
 ('Luis Hernández',        'luis.hdz97@yahoo.com',          '50231245698','1997-09-10'),
 ('María Rodríguez',       'maria.rodri95@outlook.com',     '50255634122','1995-11-23'),
 ('Carlos Sánchez',        'carlos.snz93@gmail.com',        '50232781456','1993-04-03'),
 ('Sofía Gómez',           'sofia.gmz00@gmail.com',         '50244219873','2000-07-19'),
 ('Miguel Ramírez',        'miguel.ram94@hotmail.com',      '50231587964','1994-06-12'),
 ('Daniela Torres',        'daniela.torres98@gmail.com',    '50248763215','1998-12-01'),
 ('Juan Pérez',            'juan.perez91@gmail.com',        '50236547821','1991-01-30'),
 ('Paola Castillo',        'paola.castillo02@gmail.com',    '50257841236','2002-03-08'),
 ('Diego Reyes',           'diego.reyes96@yahoo.com',       '50248963217','1996-08-17'),
 ('Valeria Morales',       'valeria.morales99@gmail.com',   '50245231786','1999-10-05'),
 ('Oscar Méndez',          'oscar.mendez90@outlook.com',    '50236541728','1990-04-17'),
 ('Lucía Ríos',            'lucia.rios01@gmail.com',        '50247896521','2001-06-11'),
 ('Fernando Díaz',         'fernando.diaz94@gmail.com',     '50245678123','1994-09-25'),
 ('Andrea Herrera',        'andrea.herrera97@hotmail.com',  '50242196587','1997-11-09'),
 ('Marcos Ruiz',           'marcos.ruiz95@gmail.com',       '50239874126','1995-08-02'),
 ('Gabriela Cruz',         'gabriela.cruz00@gmail.com',     '50248719654','2000-12-20'),
 ('Ricardo Vázquez',       'ricardo.vazquez92@hotmail.com', '50235678412','1992-05-15'),
 ('Diana Flores',          'diana.flores99@gmail.com',      '50247812369','1999-03-27'),
 ('Sebastián Soto',        'sebastian.soto93@gmail.com',    '50241257896','1993-10-30'),
 ('Camila Maldonado',      'camila.maldo01@gmail.com',      '50248975126','2001-01-22'),
 ('Jorge Castillo',        'jorge.castillo89@gmail.com',    '50236981425','1989-07-19'),
 ('Natalia Pineda',        'natalia.pineda97@hotmail.com',  '50247852631','1997-12-14'),
 ('Pablo León',            'pablo.leon95@yahoo.com',        '50241598723','1995-02-05'),
 ('Regina Salazar',        'regina.salazar02@gmail.com',    '50248791562','2002-11-01'),
 ('Alejandro Gómez',       'ale.gomez94@gmail.com',         '50232657419','1994-08-18'),
 ('Melissa Aguilar',       'mel.aguilar98@outlook.com',     '50247823651','1998-04-09'),
 ('Andrés Cabrera',        'andres.cabrera96@gmail.com',    '50241239785','1996-01-31'),
 ('Karen Duarte',          'karen.duarte00@gmail.com',      '50248965724','2000-09-07'),
 ('Rodrigo Campos',        'rodrigo.campos93@gmail.com',    '50236521487','1993-06-23'),
 ('Patricia Morales',      'patricia.morales99@gmail.com',  '50247815963','1999-12-30'),
 ('Felipe Estrada',        'felipe.estrada94@hotmail.com',  '50241256397','1994-03-12'),
 ('Laura Méndez',          'laura.mendez97@gmail.com',      '50248912765','1997-07-04'),
 ('Guillermo Ortiz',       'g.ortiz95@gmail.com',           '50236597841','1995-10-16'),
 ('Isabel Castillo',       'isabel.castillo98@gmail.com',   '50247891263','1998-05-21'),
 ('Héctor Ramírez',        'hector.ramirez92@yahoo.com',    '50232658741','1992-09-28'),
 ('Claudia Ponce',         'claudia.ponce00@gmail.com',     '50248934765','2000-02-19'),
 ('Julio Cordero',         'julio.cordero93@hotmail.com',   '50236598147','1993-12-03'),
 ('Mónica Velásquez',      'monica.velasquez96@gmail.com',  '50241278965','1996-11-11'),
 ('Adrián Navarro',        'adrian.navarro95@yahoo.com',    '50239851762','1995-01-08'),
 ('Rocío Barrera',         'rocio.barrera99@gmail.com',     '50247836129','1999-04-24'),
 ('Víctor Juárez',         'victor.juarez94@gmail.com',     '50236547982','1994-07-13'),
 ('Cecilia Rojas',         'ceci.rojas98@hotmail.com',      '50242158763','1998-06-06'),
 ('Alberto Lemus',         'alberto.lemus91@gmail.com',     '50237625418','1991-09-02'),
 ('Helena Fuentes',        'helena.fuentes02@gmail.com',    '50248739165','2002-10-28'),
 ('Esteban Salguero',      'esteban.salguero97@gmail.com',  '50248956347','1997-08-29'),
 ('Mariela Pérez',         'mariela.perez95@hotmail.com',   '50236547893','1995-03-17'),
 ('Gustavo Lara',          'gustavo.lara94@gmail.com',      '50239845671','1994-12-22'),
 ('Fiorella Sandoval',     'fiorella.sandoval99@gmail.com', '50247839215','1999-02-10'),
 ('Hugo Rivas',            'hugo.rivas90@outlook.com',      '50236574982','1990-05-05'),
 ('Selena Carrillo',       'selena.carrillo01@gmail.com',   '50248932157','2001-08-14'),
 ('Matías Garay',          'matias.garay96@gmail.com',      '50241297564','1996-04-01'),
 ('Carolina Méndez',       'caro.mendez00@gmail.com',       '50247851296','2000-11-20'),
 ('Leonardo Pacheco',      'leo.pacheco92@hotmail.com',     '50232659841','1992-06-18'),
 ('Bianca Godoy',          'bianca.godoy95@gmail.com',      '50236548729','1995-01-27'),
 ('Óscar Alfaro',          'oscar.alfaro93@gmail.com',      '50239875124','1993-07-09'),
 ('Pamela Molina',         'pamela.molina99@gmail.com',     '50247865139','1999-09-15'),
 ('Mauricio Arévalo',      'mauricio.arevalo94@gmail.com',  '50236579842','1994-11-26'),
 ('Emilia Soto',           'emilia.soto98@hotmail.com',     '50248925731','1998-03-06');

-- ---------- 3. estudiantes (40 primeros usuarios) ----------
INSERT INTO estudiantes (usuario_id) VALUES
  (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),
  (11),(12),(13),(14),(15),(16),(17),(18),(19),(20),
  (21),(22),(23),(24),(25),(26),(27),(28),(29),(30),
  (31),(32),(33),(34),(35),(36),(37),(38),(39),(40);

-- ---------- 4. tutores (20 usuarios distintos) ----------
INSERT INTO tutor (usuario_id) VALUES
  (41),(42),(43),(44),(45),(46),(47),(48),(49),(50),
  (51),(52),(53),(54),(55),(56),(57),(58),(59),(60);


/* ---------- 5. cursos (15 ejemplos variados) ---------- */
INSERT INTO cursos (categoria_id, nombre_curso, descripcion)
VALUES
  (1,  'Matemáticas básicas',              'Aritmética y razonamiento numérico'),
  (1,  'Álgebra intermedia',               'Ecuaciones, inecuaciones y polinomios'),
  (4,  'Introducción a Python',            'Sintaxis, estructuras y primeros proyectos'),
  (2,  'Inglés conversacional A2-B1',      'Práctica de speaking y listening'),
  (9,  'Física I: Mecánica clásica',       'Movimiento, fuerza y energía'),
  (10, 'Química general',                  'Estructura atómica y enlace químico'),
  (5,  'Historia universal moderna',       'De la Ilustración al siglo XX'),
  (6,  'Arte digital con Photoshop',       'Herramientas básicas y flujo de trabajo'),
  (7,  'Música para principiantes',        'Lectura musical y ritmo'),
  (8,  'Economía 101',                     'Oferta, demanda e indicadores macro'),
  (1,  'Cálculo diferencial',              'Límites, derivadas y aplicaciones'),
  (3,  'Estadística aplicada',             'Probabilidad y análisis de datos'),
  (4,  'Programación en Java',             'POO y colecciones'),
  (5,  'Redacción académica',              'Estructura de ensayos y citación'),
  (8,  'Finanzas personales',              'Ahorro, créditos e inversiones');

/* ---------- 6. curso_tutores (60 combinaciones, precios realistas) ---------- */
INSERT INTO curso_tutores (curso_id, tutor_id, precio) VALUES
  -- Matemáticas básicas
  (1,  1, 15.00), (1,  5, 18.00), (1, 12, 16.50), (1, 17, 14.00),
  -- Álgebra intermedia
  (2,  3, 20.00), (2,  6, 19.50), (2, 15, 22.00), (2, 20, 18.75),
  -- Introducción a Python
  (3,  2, 25.00), (3,  7, 23.50), (3, 14, 24.00), (3, 19, 26.00),
  -- Inglés conversacional
  (4,  4, 17.00), (4,  8, 16.50), (4, 13, 18.00), (4, 18, 17.25),
  -- Física I
  (5,  1, 21.00), (5,  9, 22.50), (5, 16, 23.00), (5, 20, 20.75),
  -- Química general
  (6,  3, 24.00), (6, 10, 23.50), (6, 15, 25.00), (6, 17, 22.80),
  -- Historia universal
  (7,  4, 14.00), (7,  8, 15.50), (7, 12, 13.75), (7, 18, 14.25),
  -- Arte digital
  (8,  9, 19.00), (8, 13, 20.00), (8, 16, 18.50), (8, 19, 21.00),
  -- Música
  (9,  2, 18.00), (9,  7, 17.50), (9, 14, 19.00), (9, 20, 18.25),
  -- Economía 101
  (10, 3, 22.00), (10, 10, 23.00), (10, 15, 21.50), (10, 17, 20.90),
  -- Cálculo diferencial
  (11, 1, 24.00), (11,  6, 23.50), (11, 12, 25.00), (11, 18, 22.75),
  -- Estadística aplicada
  (12, 9, 21.00), (12, 13, 20.50), (12, 16, 22.00), (12, 19, 23.00),
  -- Programación en Java
  (13, 2, 26.00), (13,  7, 25.50), (13, 14, 27.00), (13, 20, 24.75),
  -- Redacción académica
  (14, 4, 15.00), (14,  8, 14.50), (14, 15, 16.00), (14, 17, 15.20),
  -- Finanzas personales
  (15, 3, 19.50), (15, 10, 20.00), (15, 16, 18.75), (15, 18, 19.25);

/* ---------- 7. disponibilidad_tutores (≈3 franjas por tutor = 60 filas) ---------- */
INSERT INTO disponibilidad_tutores (tutor_id, dia_id, hora_inicio, hora_fin) VALUES
  -- Tutor 1  (usuario 41)
  (1, 1,'09:00','11:00'), 
  (1, 3,'14:00','16:00'), 
  (1, 5,'09:00','11:00'),
  -- Tutor 2  (usuario 42)
  (2, 2,'10:00','12:00'), 
  (2, 4,'15:00','17:00'), 
  (2, 6,'08:00','10:00'),
  -- Tutor 3  (usuario 43)
  (3, 1,'13:00','15:00'), 
  (3, 3,'18:00','20:00'), 
  (3, 5,'10:00','12:00'),
  -- Tutor 4  (usuario 44)
  (4, 2,'09:00','11:00'), 
  (4, 4,'13:00','15:00'), 
  (4, 6,'16:00','18:00'),
  -- Tutor 5  (usuario 45)
  (5, 1,'08:00','10:00'), 
  (5, 3,'11:00','13:00'), 
  (5, 5,'14:00','16:00'),
  -- Tutor 6  (usuario 46)
  (6, 2,'09:30','11:30'), 
  (6, 4,'15:30','17:30'), 
  (6, 6,'12:00','14:00'),
  -- Tutor 7  (usuario 47)
  (7, 1,'10:00','12:00'), 
  (7, 3,'14:00','16:00'), 
  (7, 5,'18:00','20:00'),
  -- Tutor 8  (usuario 48)
  (8, 2,'08:00','10:00'), 
  (8, 4,'13:00','15:00'), 
  (8, 6,'17:00','19:00'),
  -- Tutor 9  (usuario 49)
  (9, 1,'09:00','11:00'), 
  (9, 3,'16:00','18:00'), 
  (9, 5,'11:00','13:00'),
  -- Tutor 10 (usuario 50)
  (10,2,'10:00','12:00'), 
  (10,4,'15:00','17:00'), 
  (10,6,'09:00','11:00'),
  -- Tutor 11 (usuario 51)
  (11,1,'08:30','10:30'), 
  (11,3,'12:30','14:30'), 
  (11,5,'16:30','18:30'),
  -- Tutor 12 (usuario 52)
  (12,2,'09:00','11:00'), 
  (12,4,'14:00','16:00'), 
  (12,6,'18:00','20:00'),
  -- Tutor 13 (usuario 53)
  (13,1,'13:00','15:00'), 
  (13,3,'17:00','19:00'), 
  (13,5,'09:00','11:00'),
  -- Tutor 14 (usuario 54)
  (14,2,'10:00','12:00'), 
  (14,4,'16:00','18:00'), 
  (14,6,'11:00','13:00'),
  -- Tutor 15 (usuario 55)
  (15,1,'08:00','10:00'), 
  (15,3,'12:00','14:00'), 
  (15,5,'15:00','17:00'),
  -- Tutor 16 (usuario 56)
  (16,2,'09:30','11:30'), 
  (16,4,'14:30','16:30'), 
  (16,6,'18:30','20:30'),
  -- Tutor 17 (usuario 57)
  (17,1,'10:00','12:00'), 
  (17,3,'13:00','15:00'), 
  (17,5,'16:00','18:00'),
  -- Tutor 18 (usuario 58)
  (18,2,'08:00','10:00'), 
  (18,4,'11:00','13:00'), 
  (18,6,'17:00','19:00'),
  -- Tutor 19 (usuario 59)
  (19,1,'09:00','11:00'), 
  (19,3,'14:00','16:00'), 
  (19,5,'19:00','21:00'),
  -- Tutor 20 (usuario 60)
  (20,2,'10:00','12:00'), 
  (20,4,'15:00','17:00'), 
  (20,6,'08:00','10:00');

/* ---------- 8. mentorias (70 filas)  [estudiante_id corregido 41-70 → 1-30] ---------- */
INSERT INTO mentorias (estudiante_id, curso_tutores_id, fecha, hora_inicio, hora_fin) VALUES
 ( 1,  1, '2025-06-01','09:00','10:00'),
 ( 2,  2, '2025-06-01','14:00','15:00'),
 ( 3,  3, '2025-06-02','09:00','10:00'),
 ( 4,  4, '2025-04-02','14:00','15:00'),
 ( 5,  5, '2025-04-03','10:00','11:00'),
 ( 6,  6, '2025-04-03','15:00','16:00'),
 ( 7,  7, '2025-04-04','10:00','11:00'),
 ( 8,  8, '2025-04-04','16:00','17:00'),
 ( 9,  9, '2025-04-05','10:00','11:00'),
 (10, 10, '2025-04-05','15:00','16:00'),
 (11, 11, '2025-06-06','10:00','11:00'),
 (12, 12, '2025-06-06','16:00','17:00'),
 (13, 13, '2025-06-07','09:00','10:00'),
 (14, 14, '2025-06-07','14:00','15:00'),
 (15, 15, '2025-06-08','09:00','10:00'),
 (16, 16, '2025-04-08','14:00','15:00'),
 (17, 17, '2025-04-09','09:00','10:00'),
 (18, 18, '2025-04-09','15:00','16:00'),
 (19, 19, '2025-04-10','10:00','11:00'),
 (20, 20, '2025-04-10','16:00','17:00'),
 (21, 21, '2025-04-11','13:00','14:00'),
 (22, 22, '2025-06-11','10:00','11:00'),
 (23, 23, '2025-06-12','08:00','09:00'),
 (24, 24, '2025-06-12','14:00','15:00'),
 (25, 25, '2025-06-13','09:00','10:00'),
 (26, 26, '2025-06-13','14:00','15:00'),
 (27, 27, '2025-06-14','10:00','11:00'),
 (28, 28, '2025-04-14','16:00','17:00'),
 (29, 29, '2025-04-15','09:00','10:00'),
 (30, 30, '2025-04-15','11:00','12:00'),
 (31, 31, '2025-04-16','09:00','10:00'),
 (32, 32, '2025-04-16','14:00','15:00'),
 (33, 33, '2025-04-17','10:00','11:00'),
 (34, 34, '2025-04-17','16:00','17:00'),
 (35, 35, '2025-04-18','09:00','10:00'),
 (36, 36, '2025-04-18','14:00','15:00'),
 (37, 37, '2025-04-19','10:00','11:00'),
 (38, 38, '2025-04-19','16:00','17:00'),
 (39, 39, '2025-04-20','09:00','10:00'),
 (40, 40, '2025-04-20','14:00','15:00'),
 ( 1, 41, '2025-04-21','09:00','10:00'),
 ( 2, 42, '2025-06-21','14:00','15:00'),
 ( 3, 43, '2025-06-22','10:00','11:00'),
 ( 4, 44, '2025-06-22','16:00','17:00'),
 ( 5, 45, '2025-06-23','09:00','10:00'),
 ( 6, 46, '2025-06-23','15:00','16:00'),
 ( 7, 47, '2025-06-24','10:00','11:00'),
 ( 8, 48, '2025-04-24','16:00','17:00'),
 ( 9, 49, '2025-04-25','10:00','11:00'),
 (10, 50, '2025-04-25','15:00','16:00'),
 (11, 51, '2025-05-05','09:00','10:00'),
 (12, 52, '2025-05-05','14:00','15:00'),
 (13, 53, '2025-05-06','09:00','10:00'),
 (14, 54, '2025-05-06','14:00','15:00'),
 (15, 55, '2025-05-07','10:00','11:00'),
 (16, 56, '2025-05-07','16:00','17:00'),
 (17, 57, '2025-05-08','09:00','10:00'),
 (18, 58, '2025-05-08','14:00','15:00'),
 (19, 59, '2025-05-09','09:00','10:00'),
 (20, 60, '2025-05-09','14:00','15:00'),
 (21,  1, '2025-05-10','09:00','10:00'),
 (22, 12, '2025-05-10','16:00','17:00'),
 (23, 24, '2025-06-11','09:00','10:00'),
 (24, 33, '2025-06-11','16:00','17:00'),
 (25, 42, '2025-06-12','09:00','10:00'),
 (26, 55, '2025-06-12','14:00','15:00'),
 (27,  8, '2025-06-13','10:00','11:00'),
 (28, 27, '2025-06-13','15:00','16:00'),
 (29, 38, '2025-06-14','10:00','11:00'),
 (30, 49, '2025-06-14','15:00','16:00');

/* ---------- 9. cobro (1-70) ---------- */
INSERT INTO cobro (monto_total, mentorias_id, estado_id) VALUES
 (15.00 ,  1, 2),(18.00 ,  2, 2),(16.50 ,  3, 2),(14.00 ,  4, 2),(20.00 ,  5, 2),
 (19.50 ,  6, 2),(22.00 ,  7, 2),(18.75 ,  8, 2),(25.00 ,  9, 2),(23.50 , 10, 2),
 (24.00 , 11, 2),(26.00 , 12, 2),(17.00 , 13, 2),(16.50 , 14, 2),(18.00 , 15, 2),
 (17.25 , 16, 2),(21.00 , 17, 2),(22.50 , 18, 2),(23.00 , 19, 2),(20.75 , 20, 2),
 (24.00 , 21, 2),(23.50 , 22, 2),(25.00 , 23, 2),(22.80 , 24, 2),(14.00 , 25, 2),
 (15.50 , 26, 2),(13.75 , 27, 2),(14.25 , 28, 2),(19.00 , 29, 2),(20.00 , 30, 2),
 (18.50 , 31, 2),(21.00 , 32, 2),(18.00 , 33, 2),(17.50 , 34, 2),(19.00 , 35, 2),
 (18.25 , 36, 2),(22.00 , 37, 2),(23.00 , 38, 2),(21.50 , 39, 2),(20.90 , 40, 2),
 (24.00 , 41, 2),(23.50 , 42, 2),(25.00 , 43, 2),(22.75 , 44, 2),(21.00 , 45, 2),
 (20.50 , 46, 2),(22.00 , 47, 2),(23.00 , 48, 2),(26.00 , 49, 2),(25.50 , 50, 2),
 -- mentorías posteriores, pendiente o cancelado
 (27.00 , 51, 1),(24.75 , 52, 1),(15.00 , 53, 1),(14.50 , 54, 1),
 (16.00 , 55, 1),(15.20 , 56, 1),(19.50 , 57, 1),(20.00 , 58, 1),
 (18.75 , 59, 1),(19.25 , 60, 1),(15.00 , 61, 3),(26.00 , 62, 1),
 (22.80 , 63, 3),(18.00 , 64, 1),(23.50 , 65, 1),(16.00 , 66, 1),
 (18.75 , 67, 1),(13.75 , 68, 1),(23.00 , 69, 1),(26.00 , 70, 1);

/* ---------- 10. resenas (30 mentorías completadas) ---------- */
INSERT INTO resenas (mentoria_id, calificacion, comentario) VALUES
 ( 1,5,'Excelente explicación, muy clara.' ),
 ( 2,4,'Buen ritmo, aunque faltó más práctica.' ),
 ( 3,5,'El tutor resolvió todas mis dudas.' ),
 ( 4,4,'Contenido correcto, pequeña confusión al final.' ),
 ( 5,5,'¡Aprendí más en una hora que en semanas!' ),
 ( 6,3,'Necesito ejemplos extra en la próxima.' ),
 ( 7,5,'Gran dominio del tema y paciencia.' ),
 ( 8,4,'Buena sesión, el audio falló un poco.' ),
 ( 9,5,'Me motivó a seguir aprendiendo.' ),
 (10,4,'Material de apoyo muy útil.' ),
 (11,5,'Explicación paso a paso perfecta.' ),
 (12,4,'Necesitamos repasar un ejercicio difícil.' ),
 (13,5,'Se nota la experiencia del tutor.' ),
 (14,4,'Avanzamos rápido, pero comprendí.' ),
 (15,5,'Métodos interactivos, me encantó.' ),
 (16,4,'Un poco rápido en la teoría.' ),
 (17,5,'Excelente para preparar mi examen.' ),
 (18,4,'Buena práctica, faltó tiempo para preguntas.' ),
 (19,5,'Dominio del laboratorio virtual.' ),
 (20,4,'Ejemplos cotidianos que ayudan mucho.' ),
 (21,5,'Clases dinámicas y amenas.' ),
 (22,4,'Faltó compartir la pantalla al inicio.' ),
 (23,5,'Por fin entendí derivadas.' ),
 (24,4,'El tutor se retrasó 5 min, pero valió la pena.' ),
 (25,5,'Historia contada como un buen relato.' ),
 (26,3,'Algo distraído hoy, pero bien.' ),
 (27,5,'Tips de estudio muy útiles.' ),
 (28,4,'Mejoró mi pronunciación inglesa.' ),
 (29,5,'Photoshop ya no es un misterio.' ),
 (30,4,'Buen repaso de estadística.' );

/* ---------- 11. chats (20 pares) ---------- */
INSERT INTO chats (estudiante_id, tutor_id) VALUES
  ( 1, 1), ( 2, 5), ( 3,12), ( 4,17), ( 5, 3),
  ( 6, 6), ( 7,15), ( 8,20), ( 9, 2), (10, 7),
  (11,14), (12,19), (13, 4), (14, 8), (15,13),
  (16,18), (17, 1), (18, 9), (19,16), (20,20),
  (21,  2), (22,  6), (23, 11), (24, 14), (25,  3),
  (26,  8), (27, 12), (28, 16), (29,  4), (30,  9),
  (31, 13), (32, 18), (33,  5), (34, 15), (35,  7),
  (36, 10), (37, 17), (38, 19), (39,  1), (40, 20);

/* ---------- 12. usuario_chats (6 mensajes por chat = 120) ---------- */
INSERT INTO usuario_chats (usuario_id, chat_id, mensaje) VALUES
 -- Chat 1
 ( 1,1,'¡Hola profe! ¿Listo para la sesión de mañana?'),
 (41,1,'¡Hola Kevin! Claro, revisa el material que envié.'),
 ( 1,1,'Perfecto, ya lo descargué.'),
 (41,1,'Cualquier duda me avisas por aquí.'),
 ( 1,1,'Gracias, nos vemos.'),
 (41,1,'Nos vemos, ¡ánimo!'),
 -- Chat 2
 ( 2,2,'Buenas tardes, tengo problemas con el ejercicio 3.'),
 (45,2,'Hola Ana, envíame una foto y lo revisamos.'),
 ( 2,2,'Aquí te la mando.'),
 (45,2,'Ya la vi, el error está en el segundo paso.'),
 ( 2,2,'¡Entendido!'),
 (45,2,'Excelente, sigue practicando.'),
 -- Chat 3
 ( 3,3,'Profe, ¿podemos adelantar 15 minutos?'),
 (52,3,'Claro, no hay problema.'),
 ( 3,3,'¡Gracias!'),
 (52,3,'Recuerda instalar la última versión de Python.'),
 ( 3,3,'Ya la tengo lista.'),
 (52,3,'Perfecto, hasta luego.'),
 -- Chat 4
 ( 4,4,'Hola, ¿puede mandarme las notas de hoy?'),
 (57,4,'Hola, te las envío en un momento.'),
 ( 4,4,'Gracias.'),
 (57,4,'Revisa también el video que grabé.'),
 ( 4,4,'Lo haré.'),
 (57,4,'Cualquier duda me dices.'),
 -- Chat 5
 ( 5,5,'Buenas noches, avancé en los problemas.'),
 (43,5,'Excelente, ¿alguno te costó más?'),
 ( 5,5,'El 7 me confundió.'),
 (43,5,'Lo vemos mañana paso a paso.'),
 ( 5,5,'Gracias.'),
 (43,5,'De nada.'),
 -- Chat 6
 ( 6,6,'Hola, ¿la sesión sigue en pie?'),
 (46,6,'Sí, a las 15:00 como acordamos.'),
 ( 6,6,'Genial.'),
 (46,6,'Repasa álgebra antes.'),
 ( 6,6,'Lo haré.'),
 (46,6,'Nos vemos.'),
 -- Chat 7
 ( 7,7,'¡Profe! Pasé el examen gracias a usted.'),
 (55,7,'¡Felicidades! Me alegra mucho.'),
 ( 7,7,'Podemos seguir con la siguiente unidad.'),
 (55,7,'Claro, agendemos.'),
 ( 7,7,'Martes le parece.'),
 (55,7,'Perfecto.'),
 -- Chat 8
 ( 8,8,'Buenas, subí mi ensayo para revisión.'),
 (60,8,'Lo reviso hoy en la noche.'),
 ( 8,8,'Gracias.'),
 (60,8,'Te dejo comentarios en el documento.'),
 ( 8,8,'Pendiente entonces.'),
 (60,8,'Saludos.'),
 -- Chat 9
 ( 9,9,'Hola, el laboratorio estuvo genial.'),
 (42,9,'Me alegra, próxima semana vemos cinemática.'),
 ( 9,9,'¿Necesito material extra?'),
 (42,9,'Solo la guía que subí.'),
 ( 9,9,'Ok, gracias.'),
 (42,9,'Nos vemos.'),
 -- Chat 10
 (10,10,'Profesor, la app no compila.'),
 (47,10,'¿Qué error te da?'),
 (10,10,'NullPointer en la línea 42.'),
 (47,10,'Revisa si inicializaste la lista.'),
 (10,10,'Cierto, gracias.'),
 (47,10,'A la orden.'),
 -- Chat 11
 (11,11,'¡Hola! ¿Podemos posponer 30 min?'),
 (54,11,'Claro, no hay problema.'),
 (11,11,'Gracias.'),
 (54,11,'Aprovecha para repasar.'),
 (11,11,'Lo haré.'),
 (54,11,'Nos vemos.'),
 -- Chat 12
 (12,12,'Profe, envié tarea por correo.'),
 (59,12,'Recibido, la reviso.'),
 (12,12,'Perfecto.'),
 (59,12,'Buen avance hasta ahora.'),
 (12,12,'Gracias.'),
 (59,12,'Sigue así.'),
 -- Chat 13
 (13,13,'Hola, ¿puede recomendarme fuentes?'),
 (44,13,'Sí, te mando una lista.'),
 (13,13,'Mil gracias.'),
 (44,13,'Con gusto.'),
 (13,13,'Las revisaré.'),
 (44,13,'Avísame dudas.'),
 -- Chat 14
 (14,14,'Buenas, ¿vemos gramática hoy?'),
 (48,14,'Sí, enfocaremos condicionales.'),
 (14,14,'Genial.'),
 (48,14,'Trae ejemplos propios.'),
 (14,14,'Perfecto.'),
 (48,14,'Hasta pronto.'),
 -- Chat 15
 (15,15,'Hola, envié el proyecto.'),
 (53,15,'Lo reviso y te digo.'),
 (15,15,'Gracias.'),
 (53,15,'Muy buen código.'),
 (15,15,'¡Qué bien!'),
 (53,15,'Solo ajusta comentarios.'),
 -- Chat 16
 (16,16,'Profe, quedé en duda del tema.'),
 (58,16,'Te comparto un video explicativo.'),
 (16,16,'Gracias.'),
 (58,16,'Cualquier cosa me avisas.'),
 (16,16,'Lo veré.'),
 (58,16,'Perfecto.'),
 -- Chat 17
 (17,17,'¡Saqué 95 en el test!'),
 (41,17,'¡Excelente trabajo!'),
 (17,17,'Gracias por la guía.'),
 (41,17,'La práctica da frutos.'),
 (17,17,'Seguimos igual horario.'),
 (41,17,'Sí.'),
 -- Chat 18
 (18,18,'Hola, subí mis bocetos.'),
 (49,18,'Los reviso ahora.'),
 (18,18,'Ok.'),
 (49,18,'Buen uso de perspectiva.'),
 (18,18,'Gracias.'),
 (49,18,'Añade contraste.'),
 -- Chat 19
 (19,19,'Buenas, no entendí la tarea 4.'),
 (56,19,'Hagamos pantalla compartida mañana.'),
 (19,19,'Perfecto.'),
 (56,19,'Te mando enlace.'),
 (19,19,'Listo, gracias.'),
 (56,19,'Nos vemos.'),
 -- Chat 20
 (20,20,'Profe, ¿cuál será el tema siguiente?'),
 (60,20,'Introducción a estadísticas.'),
 (20,20,'Genial, me preparo.'),
 (60,20,'Te paso un pdf.'),
 (20,20,'Gracias.'),
 (60,20,'A estudiar.'),
 -- Chat 21
 (21,21,'Hola profesor, ¿repasamos mañana la lección?'),
 (42,21,'Hola Sebastián, claro; mañana a las 10.'),
 (21,21,'Perfecto, revisaré el material.'),
 (42,21,'Te mando las diapositivas en un rato.'),
 (21,21,'Gracias, las espero.'),
 (42,21,'Nos vemos mañana.'),
-- Chat 22
 (22,22,'Buenas, no entiendo la tarea de álgebra.'),
 (46,22,'Hola Camila, envíame el ejercicio que te cuesta.'),
 (22,22,'Te lo paso por foto.'),
 (46,22,'Veo que te faltó factorizar.'),
 (22,22,'¡Ah, cierto! Gracias.'),
 (46,22,'Practica y mañana lo revisamos.'),
-- Chat 23
 (23,23,'Profe, subí mis notas al drive.'),
 (51,23,'Gracias Jorge, las reviso hoy.'),
 (23,23,'Quedo pendiente.'),
 (51,23,'Buen trabajo hasta ahora, sigue así.'),
 (23,23,'Genial, nos vemos en clase.'),
 (51,23,'Hasta luego.'),
-- Chat 24
 (24,24,'Hola, ¿podemos adelantar la clase de inglés?'),
 (54,24,'Claro Natalia, te parece a las 4 pm?'),
 (24,24,'Perfecto.'),
 (54,24,'Te enviaré ejercicios de listening.'),
 (24,24,'Los haré antes de la sesión.'),
 (54,24,'Excelente.'),
-- Chat 25
 (25,25,'Buen día, tengo dudas de química.'),
 (43,25,'Hola Pablo, dispara la primera duda.'),
 (25,25,'¿Por qué el enlace iónico es tan fuerte?'),
 (43,25,'Porque la atracción electrostática es directa y fuerte.'),
 (25,25,'Entendido, gracias.'),
 (43,25,'Luego hacemos ejercicios.'),
-- Chat 26
 (26,26,'Profe, ¿revisó mi ensayo de historia?'),
 (48,26,'Hola Regina, sí, muy buen enfoque.'),
 (26,26,'Genial, corrijo los detalles.'),
 (48,26,'Agrega bibliografía al final.'),
 (26,26,'Lo haré, gracias.'),
 (48,26,'Ánimo.'),
-- Chat 27
 (27,27,'Hola, instalé Python pero tengo error.'),
 (52,27,'Hola Alejandro, ¿qué error te sale?'),
 (27,27,'No reconoce “pip”.'),
 (52,27,'Añade Python al PATH y reinicia la terminal.'),
 (27,27,'Listo, funcionó.'),
 (52,27,'Perfecto, seguimos adelante.'),
-- Chat 28
 (28,28,'Profe, ¿puedo cambiar la hora de la clase?'),
 (56,28,'Hola Melissa, ¿a qué hora prefieres?'),
 (28,28,'¿6 pm le va?'),
 (56,28,'Sí, reagendado.'),
 (28,28,'¡Gracias!'),
 (56,28,'Nos vemos.'),
-- Chat 29
 (29,29,'Buenas, envié la presentación para revisión.'),
 (44,29,'La reviso y te doy feedback.'),
 (29,29,'Gracias.'),
 (44,29,'Primera impresión: buen diseño.'),
 (29,29,'Me alegra.'),
 (44,29,'Pulimos detalles mañana.'),
-- Chat 30
 (30,30,'Hola, tengo problemas con la tarea de física.'),
 (49,30,'¿En qué parte te trabaste?'),
 (30,30,'En el cálculo de aceleración.'),
 (49,30,'Usa la fórmula v² = v₀² + 2·a·d.'),
 (30,30,'Ah, cierto.'),
 (49,30,'Haz un ejemplo y me cuentas.'),
-- Chat 31
 (31,31,'Profe, terminé el proyecto de arte digital.'),
 (53,31,'Rodrigo, lo reviso en breve.'),
 (31,31,'Espero comentarios.'),
 (53,31,'Buen uso de texturas; ajusta iluminación.'),
 (31,31,'Lo haré.'),
 (53,31,'Excelente.'),
-- Chat 32
 (32,32,'Hola, ¿puede enviarme ejercicios extra?'),
 (58,32,'Claro Patricia, te mando un PDF.'),
 (32,32,'Gracias.'),
 (58,32,'Practícalos antes de la sesión.'),
 (32,32,'De acuerdo.'),
 (58,32,'Nos vemos.'),
-- Chat 33
 (33,33,'Profe, salí mal en el quiz.'),
 (45,33,'No te preocupes, repasemos juntos.'),
 (33,33,'Gracias, necesito reforzar.'),
 (45,33,'Empecemos con los temas básicos.'),
 (33,33,'Ok, haré un resumen.'),
 (45,33,'Muy bien.'),
-- Chat 34
 (34,34,'¡Hola! ¿Leyó mi análisis económico?'),
 (55,34,'Sí, buen enfoque en oferta y demanda.'),
 (34,34,'¿Añado gráficas?'),
 (55,34,'Sí, eso lo hará más claro.'),
 (34,34,'De acuerdo.'),
 (55,34,'Avísame cuando las tengas.'),
-- Chat 35
 (35,35,'Hola, ¿puede revisar mi código Java?'),
 (47,35,'Envíamelo por GitHub.'),
 (35,35,'Ya lo compartí.'),
 (47,35,'Veo algunos warnings, los comentamos.'),
 (35,35,'Gracias por la ayuda.'),
 (47,35,'Para eso estamos.'),
-- Chat 36
 (36,36,'Profe, ¿se pospone la clase?'),
 (50,36,'Hola Isabel, sí, la movemos a mañana.'),
 (36,36,'Perfecto.'),
 (50,36,'Te envío nueva invitación.'),
 (36,36,'Recibida.'),
 (50,36,'Nos vemos.'),
-- Chat 37
 (37,37,'Buenas, terminé los ejercicios de cálculo.'),
 (57,37,'Excelente Héctor, los reviso.'),
 (37,37,'Hay unos que no entiendo.'),
 (57,37,'Márcalos y los vemos.'),
 (37,37,'Hecho.'),
 (57,37,'Perfecto.'),
-- Chat 38
 (38,38,'Hola, necesito ejemplos de química orgánica.'),
 (59,38,'Te preparo unos para esta tarde.'),
 (38,38,'Gracias.'),
 (59,38,'Incluyen reacciones típicas.'),
 (38,38,'Genial.'),
 (59,38,'Nos vemos.'),
-- Chat 39
 (39,39,'Profe, la clase fue muy útil.'),
 (41,39,'Me alegra, sigue practicando.'),
 (39,39,'¿Me recomienda ejercicios?'),
 (41,39,'Te envío una lista ahora.'),
 (39,39,'Gracias.'),
 (41,39,'A seguir aprendiendo.'),
-- Chat 40
 (40,40,'Hola, ¿cuándo revisamos mi avance?'),
 (60,40,'Mañana a las 5 pm, ¿te parece?'),
 (40,40,'Sí, perfecto.'),
 (60,40,'Trae tus apuntes de estadística.'),
 (40,40,'Los llevaré.'),
 (60,40,'Nos vemos mañana.');