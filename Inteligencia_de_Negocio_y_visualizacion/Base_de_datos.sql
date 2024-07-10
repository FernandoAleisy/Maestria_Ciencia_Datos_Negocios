DROP DATABASE IF EXISTS ElectroTech;
CREATE DATABASE ElectroTech;
USE ElectroTech;

CREATE TABLE Productos (
ID_Producto INT NOT NULL,
Categoria_Producto VARCHAR(30) NOT NULL,
Marca_Producto VARCHAR(30) NOT NULL,
Precio_Compra INT NOT NULL,
PRIMARY KEY (ID_Producto)
);

CREATE TABLE Inventario (
ID_Inventario INT NOT NULL AUTO_INCREMENT,
ID_Producto INT NOT NULL,
Cantidad_Disponible INT NOT NULL,
Tiempo_Medio_Reposicion INT NOT null,
PRIMARY KEY (ID_Inventario),
FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto)
);

CREATE TABLE Clientes (
ID_Cliente INT NOT NULL,
Nombre_Cliente VARCHAR(30) NOT NULL,
Ubicacion_Cliente VARCHAR(30),
PRIMARY KEY (ID_Cliente)
);

CREATE TABLE Ventas (
ID_Ventas INT NOT NULL AUTO_INCREMENT,
Fecha_Venta DATE,
ID_Producto INT NOT NULL,
Cantida_Venta INT NOT NULL,
Precio_Unitario INT NOT NULL,
ID_Cliente INT NOT NULL,
PRIMARY KEY (ID_Ventas),
FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto),
FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente)
);


