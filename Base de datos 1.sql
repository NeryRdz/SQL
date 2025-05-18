DROP DATABASE IF EXISTS bd1;
CREATE SCHEMA IF NOT EXISTS bd1;
USE bd1;

CREATE TABLE IF NOT EXISTS Vendedor (
  ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  Nombre VARCHAR(45) NOT NULL,
  RFC VARCHAR(45) NOT NULL
  );

CREATE TABLE IF NOT EXISTS Departamento (
  ID INT NOT NULL AUTO_INCREMENT,
  Vendedor_ID INT NOT NULL,
  NombreDep VARCHAR(45) NOT NULL,
  Descripcion VARCHAR(45) NOT NULL,
  PRIMARY KEY(ID,Vendedor_ID),
  FOREIGN KEY (Vendedor_ID) REFERENCES Vendedor(ID)
);



CREATE TABLE IF NOT EXISTS Marca (
  ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  NombreMarca VARCHAR(45) NOT NULL,
  Descripcion VARCHAR(45) NOT NULL
  );


CREATE TABLE IF NOT EXISTS Cliente (
  ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  Nombre VARCHAR(45) NOT NULL,
  Direccion VARCHAR(45) NOT NULL,
  Telefono VARCHAR(45) NULL
);


CREATE TABLE IF NOT EXISTS Transacciones (
  ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  Monto INT NOT NULL,
  Motivo VARCHAR(45) NOT NULL
);
CREATE TABLE IF NOT EXISTS Articulos (
  ID INT NOT NULL AUTO_INCREMENT,
  Descripcion VARCHAR(45) NOT NULL,
  Precio INT NOT NULL,
  Existencia INT NOT NULL,
  Departamento_ID INT NOT NULL,
  Marca_ID INT NOT NULL,
  PRIMARY KEY (ID,Departamento_ID, Marca_ID), 
  FOREIGN KEY (Departamento_ID) REFERENCES Departamento(ID),
  FOREIGN KEY (Marca_ID) REFERENCES Marca(ID)
);

INSERT INTO Vendedor (Nombre,RFC) VALUES
('Andres','ABC123456H12'),
('Brenda','DEF789012K34'),
('Cristóbal','GHI345678L56'),
('Diana','MNO567890N90'),
('Andres','ABC123456H99'),
('Fátima','PQR123456O12'),
('Gerardo','STU789012P34'),
('Hortensia','VWX345678Q56'),
('Iván','YZA901234R78'),
('Jimena','BCD567890S90'),
('Karina','EFG123456T12'),
('Luis','HIJ789012U34'),
('Mariana','KLM345678V56'),
('Nicolás','NOP901234W78'),
('Diana','QRS56789S10'),
('Ana','JLK567890P01'),
('Jorge','MNO345678Q12'),
('Lucía','PQR123456V34'),
('Raúl','STU789012T56'),
('Elena','VWX901234U78'),
('Roberto','ABC123456L89'),
('Maria','DEF789012M90'),
('José','GHI345678P01'),
('Margarita','JKL567890N12'),
('Carlos','LMN789012O23'),
('Patricia','OPQ901234P34'),
('David','RST345678Q45'),
('Isabel','UVW567890R56'),
('Fernando','XYZ123456S67'),
('Monica','ABC789012T78'),
('Victor','DEF345678V89'),
('Carmen','GHI789012U90'),
('Luis','JKL123456W01'),
('Rosa','LMN567890X23'),
('Sandra','OPQ345678Y34'),
('Emilio','RST789012Z45'),
('Verónica','UVW901234A56'),
('Alfredo','XYZ123456B67'),
('Beatriz','ABC789012C78'),
('Antonio','DEF345678D89');

INSERT INTO Marca(NombreMarca,Descripcion) VALUES
('Ralph Lauren','Moda clásica elegante'),
('Calvin Klein','Diseño minimalista sofisticado'),
('Tommy Hilfiger','Estilo casual chic'),
('Michael Kors','Lujo accesible moderno'),
('Estée Lauder','Belleza cuidado piel'),
('Lancôme','Cosméticos alta calidad'),
('Clinique','Cuidado piel profesional'),
('Bose','Audio alta fidelidad'),
('KitchenAid','Electrodomésticos cocina robustos'),
('Dyson','Tecnología innovadora hogar'),
('Samsonite','Equipaje duradero elegante'),
('Levis','Jeans icónicos cómodos'),
('Fossil','Relojes moda funcional'),
('Swatch','Relojes coloridos accesibles'),
('Guess','Moda juvenil trendy'),
('Adidas', 'Marca deportiva mundialmente conocida'),
('Nike', 'Marca de calzado y ropa deportiva'),
('Sony', 'Tecnología de consumo, audio y video'),
('Apple', 'Tecnología, dispositivos y software de innovación'),
('Samsung', 'Electrónica de consumo de alta calidad'),
('Puma', 'Marca deportiva con estilo'),
('Vans', 'Zapatos y ropa casual y urbana'),
('LG', 'Electrónica, electrodomésticos y soluciones tecnológicas'),
('Fender', 'Guitarras y equipos musicales'),
('Panasonic', 'Electrónica para el hogar'),
('Pepsi', 'Bebidas refrescantes con estilo'),
('Coca Cola', 'Líder en bebidas carbonatadas'),
('Reebok', 'Calzado deportivo de alto rendimiento'),
('H&M', 'Moda moderna y asequible'),
('Forever 21', 'Tendencias de moda juveniles'),
('Chanel', 'Alta costura y perfumes de lujo'),
('Gucci', 'Alta moda de lujo y accesorios'),
('Prada', 'Alta moda de lujo y artículos exclusivos'),
('Rolex', 'Relojes de lujo de alta precisión'),
('Tag Heuer', 'Relojes deportivos y de lujo'),
('Acer', 'Computadoras y dispositivos electrónicos'),
('Dell', 'Tecnología informática de vanguardia'),
('Lenovo', 'Dispositivos electrónicos innovadores'),
('Bose', 'Sonido de calidad superior para todos'),
('Canon', 'Tecnología de cámaras y lentes profesionales');

INSERT INTO Cliente(Nombre,Direccion,Telefono) VALUES
('Alejandro','Avenida Central 123',4491234567),
('Beatriz','Calle Primavera 456',4492345678),
('Carlos','Paseo del Sol',NULL),
('Daniela','Plaza Mayor 789',4494567890),
('Beatriz','Calle Mala 456',NULL),
('Fernanda','Camino Real 202',4496789012),
('Gabriel','Jardines del Bosque',NULL),
('Helena','Calle Olmo 303',4498901234),
('Ignacio','Avenida Libertad 404',NULL),
('Julia','Paseo de las Flores',4490123456),
('Beatriz','Calle Primavera 478',NULL),
('Laura','Avenida México 606',4492463579),
('Manuel','Calle Estrella 707',4493574680),
('Julia','Paseo de los Gatos',4494327789),
('Óscar','Camino Verde 909',4495796802),
('Juliana','Calle Larga 101',4497851200),
('Tomás','Calle Cortada 205',NULL),
('Patricia','Calle del Sol 307',4497654321),
('Ricardo','Avenida Norte 409',NULL),
('Lilian','Calle Rio 512',4491239876),
('Marcos','Calle Viva 625',4496543210),
('Pilar','Calle Roja 728',NULL),
('Adriana','Avenida Sur 831',4499876543),
('Oscar','Calle Pequeña 934',NULL),
('Pedro','Calle Corta 1036',4497412568),
('Sofía','Avenida Cruz 1138',NULL),
('Raul','Calle Extrema 1351',4492138796),
('Fernando','Calle Central 1462',NULL),
('Teresa','Calle Nueva 1573',4498234765),
('Evelyn','Avenida Norte 1684',NULL),
('Julio','Calle Gran 1795',4494327654),
('Carmen','Calle Alba 1917',4494327655),
('Bea','Calle Moderno 2028',4497635470),
('Luz','Calle Abierta 2139',4498765321),
('Luis','Calle Amarilla 2240',NULL),
('Rosa','Calle Transparente 2351',4498903210),
('Margarita','Calle Larga 2462',NULL),
('Diego','Calle Alba 2573',4496548765),
('Ignacio','Calle Calida 2684',NULL),
('Francisco','Calle Brisa 2795',4496781234);


INSERT INTO Transacciones(Monto,Motivo) VALUES
(2000,'Venta'),
(164,'Compra'),
(211,'Compra'),
(764,'Compra'),
(595,'Venta'),
(465,'Venta'),
(542,'Compra'),
(524,'Compra'),
(321,'Venta'),
(521,'Compra'),
(522,'Compra'),
(452,'Compra'),
(463,'Venta'),
(123,'Venta'),
(789,'Compra'),
(1500, 'Venta'),
(1200, 'Compra'),
(700, 'Venta'),
(2200, 'Compra'),
(1800, 'Venta'),
(900, 'Compra'),
(1600, 'Venta'),
(1350, 'Compra'),
(1100, 'Venta'),
(1300, 'Compra'),
(1450, 'Venta'),
(800, 'Compra'),
(950, 'Venta'),
(2500, 'Compra'),
(1800, 'Venta'),
(2100, 'Compra'),
(1350, 'Venta'),
(1900, 'Compra'),
(800, 'Venta'),
(1700, 'Compra'),
(600, 'Venta'),
(2200, 'Compra'),
(1450, 'Venta'),
(1600, 'Compra'),
(2100, 'Venta');

INSERT INTO Departamento (Vendedor_ID, NombreDep, Descripcion) VALUES
(1, 'Damas', 'Moda femenina'),
(2, 'Caballeros', 'Moda masculina'),
(3, 'Infantil', 'Moda infantil'),
(4, 'Calzado', 'Zapatos variados'),
(1, 'Accesorios', 'Accesorios moda'),
(6, 'Joyeria', 'Artículos joyería'),
(7, 'Perfumeria', 'Belleza y Cuidado'),
(8, 'Electronica', 'Gadgets modernos'),
(9, 'Hogar', 'Deco hogar'),
(10, 'Muebles', 'Mobiliario hogar'),
(11, 'Electrodomesticos', 'Aparatos eléctricos'),
(12, 'Jugueteria', 'Juguetes infantiles'),
(13, 'Deportes', 'Equipos deportivos'),
(14, 'Papeleria', 'Material escolar'),
(15, 'Alimentos', 'Productos comestibles'),
(10, 'Damas', 'Moda femenina'),
(12, 'Caballeros', 'Moda masculina'),
(15, 'Infantil', 'Moda infantil'),
(18, 'Calzado', 'Zapatos variados'),
(20, 'Accesorios', 'Accesorios moda'),
(22, 'Joyeria', 'Artículos joyería'),
(25, 'Perfumeria', 'Belleza y Cuidado'),
(28, 'Electronica', 'Gadgets modernos'),
(30, 'Hogar', 'Deco hogar'),
(32, 'Muebles', 'Mobiliario hogar'),
(34, 'Electrodomesticos', 'Aparatos eléctricos'),
(36, 'Jugueteria', 'Juguetes infantiles'),
(38, 'Deportes', 'Equipos deportivos'),
(40, 'Papeleria', 'Material escolar'),
(10, 'Alimentos', 'Productos comestibles'),
(13, 'Damas', 'Moda femenina'),
(15, 'Caballeros', 'Moda masculina'),
(17, 'Infantil', 'Moda infantil'),
(19, 'Calzado', 'Zapatos variados'),
(21, 'Accesorios', 'Accesorios moda'),
(23, 'Joyeria', 'Artículos joyería'),
(26, 'Perfumeria', 'Belleza y Cuidado'),
(28, 'Electronica', 'Gadgets modernos'),
(31, 'Hogar', 'Deco hogar'),
(33, 'Muebles', 'Mobiliario hogar');


INSERT INTO Articulos (Descripcion, Precio, Existencia, Departamento_ID, Marca_ID) VALUES
('Elegante vestido fiesta', 135, 51, 1, 1),
('Moderna chaqueta cuero', 331, 45, 2, 2),
('Cómodos pantalones vaqueros', 423, 34, 3, 3),
('Resistentes zapatos deportivos', 436, 23, 4, 4),
('Elegante bolso mano', 63, 15, 5, 5),
('Hermoso collar perlas', 435, 674, 6, 6),
('Exclusivo perfume marca', 743, 43, 7, 7),
('Avanzado teléfono inteligente', 178, 53, 8, 8),
('Televisor pantalla LED', 761, 233, 9, 9),
('Cómodo sofá plazas', 63, 22, 10, 10),
('Potente aspiradora hogar', 234, 11, 11, 11),
('Completo set cocina', 78, 66, 12, 12),
('Educativo juguete niños', 127, 75, 13, 13),
('Robustez bicicleta montaña', 2756, 34, 14, 14),
('Elegante agenda cuero', 856, 23, 15, 15),
('Estiloso vestido noche', 150, 60, 1, 16),
('Chaqueta de cuero vintage', 350, 40, 2, 17),
('Jeans ajuste perfecto', 200, 50, 3, 18),
('Botas de senderismo', 450, 25, 4, 19),
('Bolso pequeño de cuero', 90, 18, 5, 20),
('Anillo de oro', 500, 30, 6, 21),
('Perfume floral de lujo', 800, 45, 7, 22),
('Auriculares inalámbricos', 130, 40, 8, 23),
('Monitor LED 27 pulgadas', 600, 180, 9, 24),
('Cama matrimonial cómoda', 500, 35, 10, 25),
('Aspiradora robot inteligente', 300, 12, 11, 26),
('Set de cuchillos cocina', 150, 70, 12, 27),
('Peluche educativo', 45, 100, 13, 28),
('Bicicleta de carretera', 700, 20, 14, 29),
('Agenda de cuero personalizada', 120, 28, 15, 30),
('Sofá modular', 750, 15, 10, 31),
('Licuadora de alta potencia', 180, 50, 11, 32),
('Cafetera espresso', 220, 40, 12, 33),
('Patines en línea', 80, 30, 13, 34),
('Barbacoa de acero inoxidable', 250, 22, 14, 35),
('Reloj de pulsera deportivo', 150, 55, 16, 36),
('Chaqueta de lana gris', 200, 45, 2, 37),
('Maleta de viaje resistente', 120, 60, 18, 38),
('Zapatillas deportivas confort', 90, 35, 4, 39),
('Cafetera de cápsulas', 150, 48, 11, 40);




-- DISTINCT
-- Obtiene los nombres diferentes de la tabla Cliente
SELECT DISTINCT Nombre FROM Cliente;

-- Obtiene los nombres diferentes de la tabla Vendedor
SELECT DISTINCT Nombre FROM Vendedor;

-- Obtiene los motivos diferentes de la tabla Transacciones
SELECT DISTINCT Motivo FROM Transacciones;

-- LIMIT
-- Muestra los primeros 5 registros de la tabla Articulos
SELECT * FROM Articulos LIMIT 5;

-- Muestra los primeros 12 registros de la tabla Departamento
SELECT * FROM Departamento LIMIT 12;

-- Muestra los primeros 24 registros de la tabla Marca
SELECT * FROM Marca LIMIT 24;

-- ORDER BY
-- Ordena las transacciones por monto de mayor a menor
SELECT * FROM Transacciones ORDER BY Monto DESC;

-- Ordena los departamentos por nombre de manera ascendente
SELECT * FROM Departamento ORDER BY NombreDep ASC;

-- Ordena los vendedores por nombre de manera descendente
SELECT * FROM Vendedor ORDER BY Nombre DESC;

-- Operadores de comparación:
-- =
-- Filtra al cliente con id 25
SELECT * FROM Cliente WHERE id = 25;

-- Filtra al cliente con nombre 'Carlos'
SELECT * FROM Cliente WHERE Nombre = 'Carlos';

-- Filtra las marcas cuyo nombre es 'Adidas'
SELECT * FROM Marca WHERE NombreMarca = 'Adidas';

-- <>
-- Filtra artículos cuyo id no sea 30 ni 10
SELECT * FROM Articulos WHERE id <> 30 AND id <> 10;

-- Filtra marcas cuyo nombre no sea 'Chanel'
SELECT * FROM Marca WHERE NombreMarca <> 'Chanel';

-- Filtra departamentos cuyo nombre no es 'Joyeria'
SELECT * FROM Departamento WHERE NombreDep <> 'Joyeria';

-- >
-- Filtra transacciones con monto mayor a 1000
SELECT * FROM Transacciones WHERE Monto > 1000;

-- Filtra marcas con ID mayor a 20
SELECT * FROM Marca WHERE ID > 20;

-- Filtra clientes con ID mayor a 30
SELECT * FROM Cliente WHERE ID > 30;

-- LIKE
-- Filtra vendedores cuyo nombre termina en 'S'
SELECT * FROM Vendedor WHERE Nombre LIKE "%S";

-- Filtra artículos cuya descripción empieza con 'A'
SELECT * FROM Articulos WHERE Descripcion LIKE "A%";

-- Filtra departamentos cuyo nombre contiene 'M'
SELECT * FROM Departamento WHERE NombreDep LIKE "%M%";

-- BETWEEN
-- Filtra clientes con id entre 20 y 35
SELECT id, Nombre FROM cliente WHERE id BETWEEN 20 AND 35;

-- Filtra transacciones con monto entre 500 y 1500
SELECT * FROM Transacciones WHERE Monto BETWEEN 500 AND 1500;

-- Filtra vendedores con id entre 10 y 40
SELECT id, Nombre FROM Vendedor WHERE id BETWEEN 10 AND 40;

-- AND
-- Filtra departamentos con Vendedor_ID entre 15 y 35
SELECT * FROM Departamento WHERE Vendedor_ID >= 15 AND Vendedor_ID <= 35;

-- Filtra transacciones con motivo 'Venta' y monto <= 1200
SELECT * FROM Transacciones WHERE Motivo = 'Venta' AND Monto <= 1200;

-- Filtra artículos con ID >= 10 y Departamento_ID <= 20
SELECT * FROM Articulos WHERE ID >= 10 AND Departamento_ID <= 20;

-- OR
-- Filtra transacciones con monto > 1890 o motivo 'Compra'
SELECT Monto,Motivo FROM Transacciones WHERE Monto > 1890 OR Motivo = 'Compra';

-- Filtra departamentos con ID = 15 o Vendedor_ID = 40
SELECT * FROM Departamento WHERE ID = 15 OR Vendedor_ID = 40;

-- Filtra clientes cuyo nombre sea 'Carlos' o 'Juliana'
SELECT Nombre, Direccion FROM Cliente WHERE Nombre = 'Carlos' OR Nombre = 'Juliana';

-- NOT
-- Filtra artículos cuyo precio no sea menor a 2000
SELECT ID,Descripcion,Precio,Existencia FROM Articulos WHERE NOT Precio < 2000;

-- Filtra marcas cuyo ID no sea menor a 20
SELECT * FROM Marca WHERE NOT ID < 20;

-- Filtra transacciones cuyo motivo no sea 'Venta'
SELECT Monto, Motivo FROM Transacciones WHERE NOT Motivo = 'Venta';

-- IN
-- Filtra marcas con ID 1, 12, 14, 16 o 17
SELECT * FROM Marca WHERE ID IN (1,12,14,16,17);

-- Filtra clientes con ID 7, 26, 29, 33 o 31
SELECT * FROM Cliente WHERE ID IN (7,26,29,33,31);

-- Filtra departamentos con Vendedor_ID 4, 20, 40 o 21
SELECT * FROM Departamento WHERE Vendedor_ID IN (4,20,40,21);

-- Operaciones matemáticas:
-- +
-- Aumenta la existencia de un artículo
SELECT ID, Descripcion, Precio, Existencia AS Existencia_anterior, Existencia + 20 AS Existencia_nueva FROM Articulos WHERE ID = 2;

-- Aumenta el precio de todos los artículos
SELECT ID, Descripcion, Precio AS Precio_Original, Precio + 250 AS Precio_Nuevo, Existencia FROM Articulos;

-- Aumenta el precio de artículos con ID menor a 10
SELECT ID, Descripcion, Precio AS Precio_Original, Precio + 700 AS Precio_Nuevo, Existencia FROM Articulos WHERE ID < 10;

-- -
-- Aplica descuento de 100 a ciertos artículos
SELECT ID,Precio AS Precio_Original, Precio - 100 AS Precio_Descuento, Departamento_ID FROM Articulos WHERE ID IN(6,40,13,22);

-- Aplica descuento de 50 a todos los artículos
SELECT ID,Precio AS Precio_Original, Precio - 50 AS Precio_Descuento, Departamento_ID FROM Articulos;

-- Aplica descuento de 70 al monto de transacciones con motivo 'Compra'
SELECT Monto AS Monto_anterior, Monto - 70 AS Monto_actual, Motivo FROM Transacciones WHERE Motivo = 'Compra';

-- *
-- Aplica IVA del 16% a artículos con precio > 500
SELECT ID,Precio AS Precio_Original, Precio * 1.16 AS Precio_IVA FROM Articulos WHERE Precio > 500;

-- Aplica descuento del 20% a todos los artículos
SELECT ID,Precio AS Precio_Original, Precio * 0.80 AS Descuento_aplicado FROM Articulos;

-- Duplica el precio de artículos con ID <= 20
SELECT ID,Precio AS Precio_Original, Precio * 2 AS Precio_actual FROM Articulos WHERE ID <= 20;

-- MIN
-- Muestra el precio mínimo de los artículos
SELECT ID,Descripcion, MIN(Precio) AS Precio_Minimo FROM Articulos;

-- Muestra el monto mínimo de las transacciones
SELECT MIN(Monto) AS Monto_Minimo, Motivo FROM Transacciones;

-- Muestra el monto mínimo de las transacciones con motivo 'Compra'
SELECT MIN(Monto) AS Monto_Minimo, Motivo FROM Transacciones WHERE Motivo = 'Compra';

-- MAX
-- Muestra el precio máximo de los artículos con ID > 10
SELECT ID,Descripcion, MAX(Precio) AS Precio_Maximo FROM Articulos WHERE ID > 10;

-- Muestra el monto máximo de las transacciones
SELECT MAX(Monto) AS Monto_Minimo, Motivo FROM Transacciones;

-- Muestra el monto máximo de las transacciones con motivo 'Venta'
SELECT MAX(Monto) AS Monto_Minimo, Motivo FROM Transacciones WHERE Motivo = 'Venta';

-- COUNT
-- Cuenta la cantidad de clientes
SELECT COUNT(*) AS Cantidad_Clientes FROM Cliente;

-- Cuenta la cantidad de productos
SELECT COUNT(*) AS Cantidad_Productos FROM Articulos;

-- Cuenta la cantidad de departamentos
SELECT COUNT(*) AS Cantidad_Departamentos FROM Departamento;

-- SUM
-- Suma el precio de todos los artículos
SELECT SUM(Precio) AS Precio_total FROM Articulos;

-- Suma el monto de las transacciones con motivo 'Compra'
SELECT SUM(Monto) AS Total_Compras FROM Transacciones WHERE Motivo = 'Compra';

-- Suma el monto de las transacciones con motivo 'Venta'
SELECT SUM(Monto) AS Total_Ventas FROM Transacciones WHERE Motivo = 'Venta';

-- AVG
-- Muestra el promedio de precio de todos los artículos
SELECT AVG(Precio) AS Promedio_precio FROM Articulos;

-- Muestra el promedio de precio de los artículos con ID entre 20 y 30
SELECT AVG(Precio) AS Promedio_precio FROM Articulos WHERE ID BETWEEN 20 AND 30;

-- Muestra el monto promedio de las transacciones
SELECT AVG(Monto) AS Monto_Promedio FROM Transacciones;

-- ALIAS
-- Renombra la columna NombreDep como Departamento
SELECT NombreDep AS Departamento, Descripcion FROM Departamento;

-- Renombra la columna Direccion como CorreoElectronico
SELECT Nombre, Direccion AS CorreoElectronico FROM Cliente;

-- Renombra la columna RFC como Clave
SELECT Nombre, RFC AS Clave FROM Vendedor;

-- CONCAT
-- Combina las columnas Nombre y RFC de la tabla Vendedor
SELECT CONCAT(Nombre,',  ',RFC) AS Nombre_RFC FROM Vendedor;

-- Combina las columnas ID y Nombre de la tabla Cliente
SELECT CONCAT(ID,'  ',Nombre) AS ID_Nombre FROM Cliente;

-- Combina las columnas Nombre y Direccion de la tabla Cliente
SELECT CONCAT(Nombre,',  ',Direccion) AS Nombre_Direccion FROM Cliente;

-- UPPER
-- Convierte los nombres de los clientes a mayúsculas
SELECT UPPER(Nombre) AS Nombre FROM Cliente;

-- Convierte los nombres de las marcas a mayúsculas
SELECT UPPER(NombreMarca) AS NombreMarca FROM Marca;

-- Convierte los nombres de los departamentos a mayúsculas
SELECT UPPER(NombreDep) AS NombreDepartamento FROM Departamento;

-- LOWER
-- Convierte los nombres de los clientes a minúsculas
SELECT LOWER(Nombre) AS Nombre FROM Cliente;

-- Convierte los nombres de las marcas a minúsculas
SELECT LOWER(NombreMarca) AS NombreMarca FROM Marca;

-- Convierte los nombres de los departamentos a minúsculas
SELECT LOWER(NombreDep) AS NombreDepartamento FROM Departamento;

-- OFFSET
-- Muestra los registros de Cliente empezando desde el registro 20 y muestra los siguientes 5
SELECT * FROM Cliente LIMIT 5 OFFSET 20;

-- Muestra los registros de Articulos empezando desde el registro 10 y muestra los siguientes 15
SELECT * FROM Articulos LIMIT 15 OFFSET 10;

-- Muestra los registros de Marca empezando desde el registro 30 y muestra los siguientes 10
SELECT * FROM Marca LIMIT 10 OFFSET 30;

-- GROUP BY
-- Agrupa los departamentos por nombre
SELECT * FROM Departamento GROUP BY NombreDep;

-- Agrupa las transacciones por monto
SELECT * FROM Transacciones GROUP BY Monto;

-- Agrupa los artículos por Departamento_ID
SELECT * FROM Articulos GROUP BY Departamento_ID;

-- HAVING
-- Filtra las transacciones agrupadas por monto donde el monto sea mayor a 600
SELECT * FROM Transacciones GROUP BY Monto HAVING Monto > 600;

-- Filtra los artículos agrupados por precio donde la existencia sea mayor a 20
SELECT * FROM Articulos GROUP BY Precio HAVING Existencia > 20;

-- Filtra los artículos agrupados por existencia donde el precio sea menor a 50
SELECT * FROM Articulos GROUP BY Existencia HAVING Precio < 50;

-- CASE
-- Clasifica los artículos por categoría de precio
SELECT ID,Descripcion,Existencia, precio,
CASE
	WHEN precio < 200 THEN 'Barato'
	WHEN precio BETWEEN 200 AND 600 THEN 'Comun'
	ELSE 'Caro'
END AS 'Categoria_Precio'
FROM Articulos;

-- Clasifica las marcas según si están entre ID 15 y 30
SELECT *,
CASE
	WHEN ID BETWEEN 15 AND 30 THEN 'Con Descuento'
    ELSE 'Sin Descuento'
END AS 'Marca_Descuento'
FROM Marca;

-- Clasifica el estado de los vendedores según su ID
SELECT *,
CASE
	WHEN ID BETWEEN 5 AND 10 THEN 'Baja Definitiva'
    WHEN ID > 30 THEN 'Baja Temporal'
    ELSE 'Activo'
END AS 'Estado'
FROM Vendedor;

-- IFNULL
-- Si el teléfono del cliente es NULL, lo reemplaza con un valor por defecto
SELECT Nombre, Direccion, IFNULL(Telefono, '+52 4498482323') AS Telefono FROM Cliente;

-- Si el RFC del vendedor es NULL, lo reemplaza con un valor por defecto
SELECT Nombre, IFNULL(RFC, 'A23') AS RFC FROM Vendedor;

-- Si el teléfono del cliente es NULL, lo reemplaza con 'Sin numero'
SELECT Nombre, Direccion, IFNULL(Telefono, 'Sin numero') AS Telefono FROM Cliente;

-- 
-- Inner Join
-- INNER JOIN entre Vendedor y Departamento usando ID como campo de relación
SELECT v1.ID AS IDVendedor, v1.Nombre, d1.NombreDep FROM Vendedor AS v1 INNER JOIN Departamento d1 ON v1.ID = d1.ID;
-- INNER JOIN que relaciona Marcas con sus respectivos Artículos
SELECT m1.ID AS IDMarca, m1.NombreMarca, a1.ID AS IDProducto, a1.Descripcion FROM Marca AS m1 INNER JOIN Articulos a1 ON m1.ID = a1.ID;

-- Right Join
-- RIGHT JOIN que muestra todos los Artículos con su Departamento (si existe)
SELECT d1.NombreDep, a1.ID AS IDArticulo, a1.Descripcion FROM Departamento AS d1 RIGHT JOIN Articulos a1 ON d1.ID = a1.ID;
-- RIGHT JOIN que obtiene todos los Vendedores con información de Departamento
SELECT d1.NombreDep, v1.ID AS IDVendedor, v1.Nombre  FROM Departamento AS d1 RIGHT JOIN Vendedor v1 ON d1.ID = v1.ID;


-- Left Join
-- LEFT JOIN que recupera todos los Artículos con su Marca asociada (si existe)
SELECT a1.ID AS IDProducto, a1.Descripcion, m1.NombreMarca FROM Articulos AS a1 LEFT JOIN Marca m1 ON a1.ID = m1.ID;
-- LEFT JOIN que obtiene todos los Vendedores con datos de su Departamento
SELECT v1.ID AS IDVendedor, v1.Nombre, d1.NombreDep FROM Vendedor AS v1 LEFT JOIN Departamento d1 ON v1.ID = d1.ID;

-- Subquery
-- Obtener el nombre del cliente que tiene el ID más alto en la tabla Cliente.
SELECT Nombre FROM cliente WHERE ID = (SELECT ID FROM CLIENTE ORDER BY ID DESC LIMIT 1);

-- Mostrar los nombres de las marcas que tienen artículos con un precio mayor al promedio general de todos los artículos.
SELECT m.NombreMarca FROM marca m WHERE m.ID IN 
(SELECT a.Marca_ID FROM articulos a WHERE a.Precio > (SELECT AVG(Precio) FROM articulos));

-- Listar los nombres de los departamentos donde haya al menos un artículo con existencia mayor a 50.
SELECT d.NombreDep FROM departamento d WHERE d.ID IN (SELECT a.Departamento_ID FROM articulos a WHERE a.Existencia > 50);

-- Obtener los nombres de los vendedores que trabajan en departamentos donde se venden artículos con un precio superior a 500.
SELECT v.Nombre FROM Vendedor v WHERE v.ID IN 
(SELECT d.Vendedor_ID FROM departamento d WHERE d.ID IN
(SELECT a.Departamento_ID FROM articulos a WHERE Precio > 500));

-- Mostrar el ID y precio de el artículo mas caro de la tabla articulos.
SELECT a.ID, a.Precio FROM articulos a WHERE a.Precio =
 (SELECT MAX(a2.Precio) FROM articulos a2 ORDER BY a2.Precio DESC);