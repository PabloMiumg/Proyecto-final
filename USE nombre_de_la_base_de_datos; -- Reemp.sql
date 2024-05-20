USE nombre_de_la_base_de_datos;  -- Reemplaza con el nombre de tu base de datos

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    precio DECIMAL(10, 2),
    id_empleado INT
);

INSERT INTO clientes (nombre, descripcion, precio, id_empleado) VALUES
('Cliente 1', 'Descripción del cliente 1', 1000.00, 1),
('Cliente 2', 'Descripción del cliente 2', 1500.50, 2),
('Cliente 3', 'Descripción del cliente 3', 2000.00, 3),
('Cliente 4', 'Descripción del cliente 4', 2500.75, 4),
('Cliente 5', 'Descripción del cliente 5', 3000.00, 5),
('Cliente 6', 'Descripción del cliente 6', 3500.25, 6),
('Cliente 7', 'Descripción del cliente 7', 4000.00, 7),
('Cliente 8', 'Descripción del cliente 8', 4500.50, 8),
('Cliente 9', 'Descripción del cliente 9', 5000.00, 9),
('Cliente 10', 'Descripción del cliente 10', 5500.75, 10);

SELECT * FROM clientes;