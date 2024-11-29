CREATE DATABASE TiendaVirtual

Use TiendaVirtual;

CREATE TABLE Clientes (
	Id_Cliente INT IDENTITY(1,1) PRIMARY KEY,
	Nombre VARCHAR(50) NOT NULL,
	Edad INT NOT NULL,
	Ciudad VARCHAR(50)
);

CREATE TABLE Pedidos (
	Id_Pedido INT IDENTITY(1,1) PRIMARY KEY,
	Producto VARCHAR(100) NOT NULL,
	Precio DECIMAL(10,2)NOT NULL,
	Id_Cliente INT NULL,
	FOREIGN KEY (Id_Cliente) REFERENCES Clientes(Id_Cliente)
);

INSERT INTO Clientes (Nombre, Edad, Ciudad)
VALUES 
    ('Juan Pérez', 25, 'San Salvador'),
    ('María Gómez', 35, 'Santa Ana'),
    ('Miguel López', 40, 'San Miguel'),
    ('Ana Rivera', 28, 'San Salvador'),
    ('Luis Martínez', 45, 'Santa Tecla');

INSERT INTO Pedidos (Producto, Precio, Id_Cliente)
VALUES
    ('Laptop', 850.00, 1),
    ('Mouse', 25.00, 1),
    ('Teclado', 50.00, 2),
    ('Monitor', 200.00, 2),
    ('Celular', 900.00, 3),
    ('Auriculares', 45.00, 3),
    ('Cámara', 120.00, 1),
    ('Impresora', 300.00, 4);

SELECT * 
FROM Clientes
WHERE Edad > 30;

SELECT * 
FROM Clientes
WHERE Ciudad IN ('San Salvador', 'Santa Ana');

SELECT * 
FROM Clientes
WHERE Nombre LIKE 'M%';

SELECT * 
FROM Pedidos
WHERE Precio > 50;


