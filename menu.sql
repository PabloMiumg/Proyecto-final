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
