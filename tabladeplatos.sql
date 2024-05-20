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