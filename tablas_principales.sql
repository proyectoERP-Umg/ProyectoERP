CREATE DATABASE projectERP;

USE projectERP;

CREATE TABLE Categoria_Producto
(
 id_Categoria     INTEGER PRIMARY KEY,
 nombre_Categoria VARCHAR(50),
 descripcion      VARCHAR(50)
);

CREATE TABLE Producto
(
 id_Producto       INTEGER PRIMARY KEY,
 nombre_Producto   VARCHAR(50),
 precio_Unidad     VARCHAR(50),
 fk_id_Categoria   INT,
 marca             VARCHAR(30),
 proveedor         VARCHAR(30),
 can_Disponible    INTEGER,
 FOREIGN KEY (fk_id_Categoria) REFERENCES Categoria_Producto(id_Categoria) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Detalles_Orden
(
 id_Orden          INTEGER PRIMARY KEY,
 fk_id_Producto    INTEGER,
 Cantidad          INTEGER,
 precio_Unidad     FLOAT(8,5),
 nombre_Producto   VARCHAR(100),
 FOREIGN KEY (fk_id_Producto) REFERENCES Producto(id_Producto) ON DELETE CASCADE ON UPDATE CASCADE
);

SELECT * FROM Categoria_Producto;