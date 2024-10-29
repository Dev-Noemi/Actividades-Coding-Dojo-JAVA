INSERT INTO clientes (nombre, direccion, telefono) VALUES
('Cande', 'Calle Argclientestelefonoentina 991', '5649876432'),
('Alfredo', 'Pasaje  Nuevo Mexico 775', '56787456323'),
('Karla', 'Pasaje UBB 356', '56965332288'),
('Catalina', 'Psj Los Sakuras 133', '56987657799'),
('Sebastian', 'Villa Serafim 556', '5694648230');

INSERT INTO pedidos (clientes_id_clientes, fecha, total) VALUES
(1, '2024-10-01', 50.00),
(1, '2024-10-05', 30.00),
(2, '2024-10-02', 60.00),
(3, '2024-10-03', 50.00),
(3, '2024-10-04', 75.00),
(4, '2024-10-01', 60.00),
(5, '2024-10-06', 60.00),
(1, '2024-10-07', 25.00),
(2, '2024-10-08', 40.00),
(3, '2024-10-09', 70.00);


SELECT c.*, p.*
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.clientes_id_clientes;


SELECT c.id, c.nombre, SUM(p.total) AS total_pedidos
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.clientes_id_clientes
GROUP BY c.id, c.nombre;


DELETE FROM pedidos WHERE clientes_id_clientes = 1;  
DELETE FROM clientes WHERE id = 1; 


SELECT c.id, c.nombre, COUNT(p.id) AS num_pedidos
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.clientes_id_clientes
GROUP BY c.id, c.nombre
ORDER BY num_pedidos DESC
LIMIT 3;
