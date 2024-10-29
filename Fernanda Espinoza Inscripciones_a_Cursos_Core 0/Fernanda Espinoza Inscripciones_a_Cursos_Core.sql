INSERT INTO estudiantes (nombre, edad) VALUES
('Cande', 27),
('Bastian', 23),
('Alfredo', 29),
('Zafiro', 19),
('Camilo', 23);

INSERT INTO cursos (nombre, duracion) VALUES -- la duracion es en minutos por si acaso jeje--
('Ingles', 60),
('Historia', 40),
('Lenguaje', 40),
('JAVA Y MYSQL JAJA XD', 50);


INSERT INTO inscripciones (estudiantes_id, cursos_id) VALUES
(1, 4),  
(2, 4),  
(3, 4),  
(4, 3),  
(5, 4),  
(5, 1);

SELECT e.*, c.*
FROM estudiantes e
LEFT JOIN inscripciones i ON e.id = i.estudiantes_id
LEFT JOIN cursos c ON i.cursos_id = c.id;



SELECT e.*
FROM estudiantes e
JOIN inscripciones i ON e.id = i.estudiantes_id
JOIN cursos c ON i.cursos_id = c.id
WHERE c.nombre = 'Ingles';  



SELECT c.*
FROM cursos c
JOIN inscripciones i ON c.id = i.cursos_id
JOIN estudiantes e ON i.estudiantes_id = e.id
WHERE e.nombre = 'Cande';  

SELECT c.nombre, COUNT(i.estudiantes_id) AS num_estudiantes
FROM cursos c
LEFT JOIN inscripciones i ON c.id = i.cursos_id
GROUP BY c.id, c.nombre;


SELECT e.*
FROM estudiantes e
LEFT JOIN inscripciones i ON e.id = i.estudiantes_id
WHERE i.estudiantes_id IS NULL;

