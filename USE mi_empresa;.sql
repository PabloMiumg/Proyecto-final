USE mi_empresa;

CREATE TABLE IF NOT EXISTS empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    puesto VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    fecha_contratacion DATE NOT NULL
);

INSERT INTO empleados (nombre, apellido, puesto, salario, fecha_contratacion) VALUES
('Juan', 'Perez', 'Gerente', 50000.00, '2021-01-15'),
('Maria', 'Gonzalez', 'Desarrollador', 40000.00, '2021-02-20'),
('Luis', 'Ramirez', 'Desarrollador', 40000.00, '2021-03-25'),
('Ana', 'Martinez', 'Analista', 45000.00, '2021-04-10'),
('Pedro', 'Hernandez', 'Soporte', 35000.00, '2021-05-15'),
('Laura', 'Lopez', 'Desarrollador', 40000.00, '2021-06-20'),
('Carlos', 'Garcia', 'Gerente', 50000.00, '2021-07-15'),
('Elena', 'Fernandez', 'Analista', 45000.00, '2021-08-10'),
('Miguel', 'Diaz', 'Soporte', 35000.00, '2021-09-25'),
('Sara', 'Morales', 'Desarrollador', 40000.00, '2021-10-30');

USE mi_empresa;

SELECT * FROM empleados;