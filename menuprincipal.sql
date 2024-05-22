-- Crear base de datos y usarla
CREATE DATABASE IF NOT EXISTS restaurante;
USE restaurante;

-- Crear tabla de menú
CREATE TABLE IF NOT EXISTS menu (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL,
    categoria VARCHAR(50)
);

-- Insertar datos en la tabla de menú
INSERT INTO menu (nombre, descripcion, precio, categoria)
VALUES 
('Ensalada César', 'Ensalada con lechuga, crutones y aderezo César', 7.99, 'Entrada'),
('Sopa de Tomate', 'Sopa cremosa de tomate con albahaca', 5.50, 'Entrada'),
('Filete de Res', 'Filete de res a la parrilla con guarnición', 15.99, 'Plato Principal'),
('Tarta de Queso', 'Deliciosa tarta de queso con base de galleta', 6.75, 'Postre'),
('Café', 'Café negro o con leche', 2.50, 'Bebida');

-- Consultar datos de la tabla de menú
SELECT * FROM menu;

-- Actualizar precio del Filete de Res
UPDATE menu
SET precio = 16.99
WHERE nombre = 'Filete de Res';

-- Eliminar el Café del menú
DELETE FROM menu
WHERE nombre = 'Café';

CREATE DATABASE restaurante;
USE restaurante;
-- crear tabla
CREATE TABLE tabladeplatos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    precio DECIMAL(10, 2)
);
-- insetar datos en la tabla de platos
INSERT INTO tabladeplatos (nombre, descripcion, precio) VALUES
('Pizza de jamon', 'Pizza de jamon mediana', 40.00),
('Pizza de queso', 'Pizza solo con queso mediana', 40.00),
('Pizza de pepperoni', 'Pizza de pepperoni mediana', 44.00),
('Hamburguesa', 'Hamburguesa con queso', 38.00),
('Sopa', 'Sopa de verduras', 30.00),
('Ensalada', 'Ensalada de varios ingredientes', 30.00),
('Espagueti', 'Espagueti con salsa', 34.00),
('Pollo frito', 'Dos piezas de pollo frito con entrada', 40.00),
('Sandwich', 'Sandwich con jamon y queso', 24.00),
('Pastel', 'Una porcion de pastel de varios tipos', 18.00);
-- consultar los datos de la tabla de platos
SELECT * FROM tabladeplatos;
-- actualizar datos de la tabla de platos
UPDATE tabladeplatos SET nombre = 'Flan', descripcion = 'Flan con crema batida', precio = 10.00 WHERE id = 10;
-- eliminar un dato de la tabla de platos
DELETE FROM tabladeplatos WHERE id = 10;
-- eliminar todos los datos de la tabla de platos
TRUNCATE TABLE tabladeplatos;

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

CREATE TABLE Inventario (
    Id INT PRIMARY KEY IDENTITY(1,1),
    NombreProducto NVARCHAR(50),
    Categoria NVARCHAR(50),
    Cantidad INT,
    UnidadMedida NVARCHAR(20),
    PrecioUnitario DECIMAL(10, 2),
    FechaIngreso DATE,
    FechaVencimiento DATE,
    Proveedor NVARCHAR(50),
    Ubicacion NVARCHAR(50),
    Comentarios NVARCHAR(255)
);
INSERT INTO Inventario (NombreProducto, Categoria, Cantidad, UnidadMedida, PrecioUnitario, FechaIngreso, FechaVencimiento, Proveedor, Ubicacion, Comentarios)
VALUES
('Tomate', 'Vegetales', 50, 'Kg', 1.20, '2024-05-15', '2024-06-15', 'Proveedor A', 'Almacen 1', 'Frescos de la huerta'),
('Lechuga', 'Vegetales', 30, 'Kg', 0.80, '2024-05-16', '2024-06-16', 'Proveedor B', 'Almacen 1', 'Orgánicas'),
('Pechuga de Pollo', 'Carnes', 20, 'Kg', 5.50, '2024-05-17', '2024-06-17', 'Proveedor C', 'Almacen 2', 'Sin hormonas'),
('Arroz', 'Granos', 100, 'Kg', 0.60, '2024-05-18', '2025-05-18', 'Proveedor D', 'Almacen 3', 'Grano largo'),
('Frijoles', 'Granos', 80, 'Kg', 0.75, '2024-05-19', '2025-05-19', 'Proveedor E', 'Almacen 3', 'Negros'),
('Aceite de Oliva', 'Condimentos', 40, 'L', 3.50, '2024-05-20', '2025-05-20', 'Proveedor F', 'Almacen 4', 'Extra virgen'),
('Sal', 'Condimentos', 60, 'Kg', 0.40, '2024-05-21', '2025-05-21', 'Proveedor G', 'Almacen 4', 'Marina'),
('Pasta', 'Granos', 70, 'Kg', 1.10, '2024-05-22', '2025-05-22', 'Proveedor H', 'Almacen 5', 'Integral'),
('Queso', 'Lácteos', 25, 'Kg', 4.00, '2024-05-23', '2024-06-23', 'Proveedor I', 'Almacen 2', 'Madurado'),
('Leche', 'Lácteos', 50, 'L', 0.90, '2024-05-24', '2024-06-24', 'Proveedor J', 'Almacen 2', 'Deslactosada');


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

-- tabla reservas
CREATE TABLE reservas (
    id INT AUTO_INCREMENT PRIMARY KEY,        
    nombre_cliente VARCHAR(100) NOT NULL,     
    telefono_cliente VARCHAR(20) NOT NULL,    
    correo_cliente VARCHAR(100),              
    fecha_reserva DATE NOT NULL,              
    hora_reserva TIME NOT NULL,               
    numero_personas INT NOT NULL,             
    comentarios TEXT,                         
    estado VARCHAR(20) NOT NULL DEFAULT 'pendiente'
);

-- Insertar datos en la tabla reservas
INSERT INTO reservas (nombre_cliente, telefono_cliente, correo_cliente, fecha_reserva, hora_reserva, numero_personas, comentarios, estado)
VALUES
    ('Juan Pérez', '5551234567', 'juan.perez@example.com', '2024-06-01', '19:00:00', 4, 'Mesa cerca de la ventana', 'confirmada'),
    ('Ana Gómez', '5559876543', 'ana.gomez@example.com', '2024-06-02', '20:00:00', 2, '', 'pendiente'),
    ('Carlos Rodríguez', '5552345678', 'carlos.rodriguez@example.com', '2024-06-03', '18:30:00', 3, 'Silla alta para niño', 'confirmada'),
    ('Lucía Fernández', '5558765432', 'lucia.fernandez@example.com', '2024-06-04', '21:00:00', 5, 'Cumpleaños, traer pastel', 'pendiente'),
    ('Martín Sánchez', '5553456789', 'martin.sanchez@example.com', '2024-06-05', '19:30:00', 2, '', 'cancelada');

-- Verificar los datos insertados
SELECT * FROM reservas;