DROP DATABASE IF EXISTS bd2;
CREATE SCHEMA IF NOT EXISTS bd2;
USE bd2;

CREATE TABLE IF NOT EXISTS Estudiante (
  ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  Nombre VARCHAR(45) NOT NULL,
  Direccion VARCHAR(45) NOT NULL,
  Telefono VARCHAR(45) NULL,
  Grupo VARCHAR (1) NOT NULL
  );
  
  CREATE TABLE IF NOT EXISTS HistorialAcademico (
  ID INT NOT NULL AUTO_INCREMENT,
  ID_Estudiante INT NOT NULL,
  NombreEst VARCHAR(45) NOT NULL,
  Promedio VARCHAR(45) NOT NULL,
  PRIMARY KEY(ID,ID_Estudiante),
  FOREIGN KEY(ID_Estudiante) REFERENCES Estudiante(ID)
  );
  
  CREATE TABLE IF NOT EXISTS Maestro (
  ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  Nombre VARCHAR(45) NOT NULL,
  Direccion VARCHAR(45) NOT NULL,
  Telefono VARCHAR(45) NULL
  );
  
  CREATE TABLE IF NOT EXISTS Materia (
  ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  Nombre VARCHAR(45) NOT NULL
  );
  
  
  CREATE TABLE IF NOT EXISTS Maestro_Materia (
  ID_Maestro INT NOT NULL,
  ID_Materia INT NOT NULL,
  PRIMARY KEY(ID_Maestro,ID_Materia),
  FOREIGN KEY(ID_Maestro) REFERENCES Maestro(ID),
  FOREIGN KEY(ID_Materia) REFERENCES Materia(ID)
  );
  
INSERT INTO Estudiante(Nombre,Direccion,Telefono,Grupo) VALUES
('Antonio', 'Avenida Reforma 102', '4491122334', 'A'),
('Bárbara', 'Calle Lirio 203', '4492233445', 'B'),
('César', 'Camino Dorado 405', NULL, 'C'),
('Dolores', 'Boulevard Este 506', '4494455667', 'D'),
('Emilio', 'Paseo Jardín 607', NULL, 'E'),
('Florencia', 'Calle Palma 708', '4496677889', 'F'),
('Gustavo', 'Avenida Sol 809', NULL, 'G'),
('Helena', 'Plaza Norte 911', '4498899001', 'H'),
('Inés', 'Calle Brisa 112', '4499900112', 'I'),
('Javier', 'Avenida Sur 123', NULL, 'H'),
('Karen', 'Paseo Verde 134', '4492122233', 'K'),
('Lorenzo', 'Calle Cedro 145', NULL, 'L'),
('Antonio', 'Avenida Hola 112', '4493332335', 'F'),
('Karen', 'El Paso 334', NULL, 'E'),
('Inés', 'Calle Brisa 542', '4499902222', 'E'),
('Laura', 'Calle Rosas 201', NULL, 'H'),
('Marta', 'Boulevard Central 302', '4492023456', 'G'),
('Pedro', 'Calle Océano 403', NULL, 'E'),
('Sofía', 'Avenida Libertad 504', '4494045678', 'B'),
('Tomás', 'Calle Melón 605', NULL, 'F'),
('Valeria', 'Paseo Mármol 706', '4496067890', 'A'),
('Luis', 'Calle Cielo 807', NULL, 'D'),
('Daniela', 'Plaza Sol 908', '4498089012', 'C'),
('Ricardo', 'Calle Primavera 109', NULL, 'L'),
('Beatriz', 'Calle Viento 210', '4490101234', 'K'),
('Carlos', 'Avenida Mar 311', '4491122345', 'I'),
('Raúl', 'Calle Bosque 412', NULL, 'A'),
('Elena', 'Avenida Los Pinos 513', '4493144567', 'D'),
('Joaquín', 'Paseo Río 614', NULL, 'H'),
('Violeta', 'Calle Perla 715', '4495166789', 'G'),
('Juliana', 'Boulevard del Este 816', NULL, 'B'),
('Samuel', 'Calle Luna 917', NULL, 'F'),
('Ana', 'Avenida Verde 102', '4498199012', 'C'),
('Felipe', 'Calle Mango 203', '4499200123', 'E'),
('Gabriela', 'Calle Nieve 304', NULL, 'K'),
('Ignacio', 'Calle Mariposa 405', '4491222345', 'L'),
('Ricardo', 'Avenida de la Paz 506', NULL, 'H'),
('Verónica', 'Calle Rosa 607', '4493244567', 'G'),
('Óscar', 'Calle Albahaca 708', NULL, 'F'),
('Silvia', 'Avenida Brisa 809', '4495266789', 'I');

INSERT INTO Maestro(Nombre, Direccion, Telefono) VALUES
('Patricia', 'Avenida Insurgentes 100', '4491234567'),
('Roberto', 'Calle Hidalgo 202', NULL),
('Silvia', 'Paseo Reforma 303', '4493456789'),
('Vicente', 'Boulevard Juárez 404', NULL),
('Xavier', 'Avenida México 505', '4495678901'),
('Yolanda', 'Calle Independencia 606', '4496789012'),
('Zacarías', 'Plaza Central 707', NULL),
('Abigail', 'Calle Olivo 808', '4498901234'),
('Benjamín', 'Avenida Colón 909', '4499012345'),
('Claudia', 'Calle Estrella 101', NULL),
('Diego', 'Paseo del Sol', '4491352468'),
('Elvira', 'Plaza Dorada 102', NULL),
('Fernando', 'Calle Jardín 203', '4493574680'),
('Diego', 'Avenida Hola 304', NULL),
('Hugo', 'Avenida Lomas 405', '4495796802'),
('María', 'Avenida Reforma 110', NULL),
('Eduardo', 'Calle Monte 211', '4497918024'),
('Laura', 'Boulevard Norte 312', NULL),
('Fernando', 'Avenida Juárez 413', '4490130246'),
('Isabel', 'Calle Nogal 514', NULL),
('Pedro', 'Plaza de la Paz 615', '4492352468'),
('Carmen', 'Calle Río 716', NULL),
('Luis', 'Avenida Guadalupe 817', '4494574680'),
('Raúl', 'Calle Sol 918', NULL),
('Antonio', 'Calle San Juan 1020', '4496796802'),
('Beatriz', 'Calle Granada 1121', NULL),
('Víctor', 'Avenida de los Olivos 1222', '4498918024'),
('Mariana', 'Calle Cactus 1323', NULL),
('José', 'Plaza del Centro 1424', '4490130246'),
('Sofía', 'Avenida Lirio 1525', NULL),
('Gerardo', 'Calle Colinas 1626', '4492352468'),
('Patricia', 'Calle Mármol 1727', NULL),
('Jorge', 'Boulevard Valle 1828', '4494574680'),
('Luis', 'Avenida del Sol 1929', NULL),
('David', 'Calle Brisa 2030', '4496796802'),
('Carolina', 'Avenida Palma 2131', NULL),
('Mónica', 'Calle Vista 2232', '4498918024'),
('Ezequiel', 'Boulevard Libertad 2333', NULL),
('Juan', 'Calle Arco 2434', '4490130246'),
('Héctor', 'Calle Bosque 2535', NULL);

INSERT INTO Materia(Nombre) VALUES
('Matematicas'),
('Español'),
('Historia'),
('Ecologia'),
('Biologia'),
('Fisica'),
('Quimica'),
('Ética y Valores'),
('Geografia'),
('Deportes'),
('TICS'),
('Cultura Digital'),
('Informatica'),
('Ofimatica'),
('Computacion'),
('Arte'),
('Música'),
('Literatura'),
('Filosofía'),
('Ciencias Sociales'),
('Psicología'),
('Educación Física'),
('Algebra'),
('Cálculo'),
('Estadística'),
('Química Orgánica'),
('Bioquímica'),
('Geometría'),
('Derecho'),
('Economía'),
('Contabilidad'),
('Gestión Empresarial'),
('Marketing'),
('Publicidad'),
('Derechos Humanos'),
('Sociología'),
('Geología'),
('Astronomía'),
('Antropología'),
('Lógica');

INSERT INTO HistorialAcademico(ID_Estudiante,NombreEst,Promedio) VALUE 
(5,'Emilio','9'),
(2,'Barbara','5.9'),
(4,'Dolores','7.8'),
(8,'Helena','4.8'),
(2,'Barbara','5.5'),
(6,'Florencia','8.9'),
(3,'Cesar','9.9'),
(1,'Antonio','10'),
(10,'Javier','2.9'),
(15,'Ofelia','5.8'),
(3,'Cesar','7.9'),
(11,'Karen','8.4'),
(13,'Miriam','8.9'),
(3,'Cesar','6.9'),
(7,'Gustavo','2.2'),
(19, 'Sofía', '7.5'),
(33, 'Ignacio', '9.0'),
(16, 'Laura', '8.0'),
(25, 'Raúl', '7.3'),
(29, 'Juliana', '8.1'),
(40, 'José', '5.1'),
(22, 'Luis', '5.4'),
(31, 'Ana', '9.5'),
(20, 'Tomás', '8.6'),
(37, 'Silvia', '6.4'),
(23, 'Daniela', '6.2'),
(28, 'Violeta', '5.6'),
(18, 'Pedro', '9.2'),
(27, 'Joaquín', '6.0'),
(34, 'Ricardo', '7.0'),
(24, 'Carlos', '8.7'),
(21, 'Valeria', '9.1'),
(36, 'Óscar', '8.8'),
(32, 'Felipe', '6.8'),
(26, 'Elena', '9.3'),
(38, 'Eduardo', '8.2'),
(30, 'Samuel', '7.2'),
(17, 'Marta', '6.7'),
(35, 'Verónica', '5.2'),
(14, 'Karen', '8.4');

INSERT INTO Maestro_Materia(ID_Maestro,ID_Materia) VALUES
(1,6),
(5,5),
(7,4),
(4,7),
(9,9),
(6,8),
(13,11),
(15,10),
(14,12),
(11,15),
(12,14),
(10,13),
(3,2),
(2,1),
(8,3),
(32, 5),
(19, 9),
(21, 7),
(30, 8),
(18, 6),
(34, 4),
(29, 2),
(37, 12),
(23, 10),
(28, 14),
(25, 1),
(33, 13),
(38, 3),
(35, 15),
(27, 11),
(36, 5),
(31, 9),
(40, 7),
(26, 8),
(16, 6),
(39, 10),
(24, 4),
(22, 2),
(20, 12),
(17, 3),
(22, 6);

ALTER TABLE HistorialAcademico MODIFY COLUMN Promedio FLOAT;

-- DISTINCT
-- Obtiene los grupos únicos de estudiantes
SELECT DISTINCT Grupo FROM Estudiante;

-- Obtiene los nombres únicos de estudiantes
SELECT DISTINCT Nombre FROM Estudiante;

-- Obtiene los promedios únicos del historial académico
SELECT DISTINCT Promedio FROM HistorialAcademico;

-- LIMIT
-- Muestra los primeros 5 registros de la tabla Estudiante
SELECT * FROM Estudiante LIMIT 5;

-- Muestra los primeros 9 registros de la tabla Maestro
SELECT * FROM Maestro LIMIT 9;

-- Muestra los últimos 14 registros de la tabla Materia, ordenados por ID de forma descendente
SELECT * FROM Materia ORDER BY ID DESC LIMIT 14;

-- ORDER BY
-- Ordena los estudiantes por nombre en orden ascendente
SELECT * FROM Estudiante ORDER BY Nombre ASC;

-- Ordena los registros de historial académico por promedio en orden descendente
SELECT * FROM HistorialAcademico ORDER BY Promedio DESC;

-- Ordena los maestros por ID en orden descendente
SELECT * FROM Maestro ORDER BY ID DESC;

-- Operadores de comparación
-- <
-- Filtra los estudiantes con un ID menor a 15
SELECT * FROM Estudiante WHERE ID < 15;

-- Filtra los registros del historial académico con un promedio menor a 6.0
SELECT * FROM HistorialAcademico WHERE Promedio < 6.0;

-- Filtra los maestros con un ID menor a 5
SELECT * FROM Maestro WHERE ID < 5;

-- >=
-- Filtra los registros del historial académico con un promedio mayor o igual a 8.0
SELECT * FROM HistorialAcademico WHERE Promedio >= 8.0;

-- Filtra los estudiantes con un ID mayor o igual a 30
SELECT * FROM Estudiante WHERE ID >= 30;

-- Filtra los maestros con un ID mayor o igual a 20
SELECT * FROM Maestro WHERE ID >= 20;

-- <=
-- Filtra los maestros con un ID menor o igual a 5
SELECT * FROM Maestro WHERE ID <= 5;

-- Filtra los registros del historial académico con un promedio menor o igual a 7.0
SELECT * FROM HistorialAcademico WHERE Promedio <= 7.0;

-- Filtra las materias con un ID menor o igual a 30
SELECT * FROM Materia WHERE ID <= 30;

-- LIKE
-- Filtra los estudiantes cuyo nombre empieza con "M"
SELECT * FROM Estudiante WHERE Nombre LIKE 'M%';

-- Filtra los estudiantes cuya dirección contiene "Avenida"
SELECT * FROM Estudiante WHERE Direccion LIKE '%Avenida%';

-- Filtra las materias cuyo nombre termina en "ia"
SELECT * FROM Materia WHERE Nombre LIKE '%ia';

-- BETWEEN
-- Filtra los estudiantes cuyo ID está entre 10 y 20
SELECT * FROM Estudiante WHERE ID BETWEEN 10 AND 20;

-- Filtra los registros del historial académico cuyo promedio está entre 6.0 y 7.0
SELECT * FROM HistorialAcademico WHERE Promedio BETWEEN 6.0 AND 7.0;

-- Filtra los maestros cuyo ID está entre 5 y 15
SELECT * FROM Maestro WHERE ID BETWEEN 5 AND 15;

-- AND
-- Filtra los estudiantes en el grupo 'A' y cuya dirección contiene 'Avenida'
SELECT * FROM Estudiante WHERE Grupo = 'A' AND Direccion LIKE '%Avenida%';

-- Filtra los estudiantes en el grupo 'E' que no tienen teléfono
SELECT * FROM Estudiante WHERE Grupo = 'E' AND Telefono IS NULL;

-- Filtra los maestros cuya dirección contiene 'Avenida' y tienen teléfono registrado
SELECT * FROM Maestro WHERE Direccion LIKE '%Avenida%' AND Telefono IS NOT NULL;

-- OR
-- Filtra los estudiantes en el grupo 'B' o 'C'
SELECT * FROM Estudiante WHERE Grupo = 'B' OR Grupo = 'C';

-- Filtra los estudiantes llamados 'Antonio' o 'Karen'
SELECT * FROM Estudiante WHERE Nombre = 'Antonio' OR Nombre = 'Karen';

-- Filtra los registros del historial académico con un promedio menor a 5 o mayor a 9
SELECT * FROM HistorialAcademico WHERE Promedio < 5 OR Promedio > 9;

-- NOT
-- Filtra las materias que no se llaman 'Matematicas'
SELECT * FROM Materia WHERE NOT Nombre = 'Matematicas';

-- Filtra los estudiantes que no pertenecen a los grupos 'A', 'B' o 'C'
SELECT * FROM Estudiante WHERE NOT Grupo IN ('A', 'B', 'C');

-- Filtra las materias que no se llaman 'Deportes' ni 'Arte'
SELECT * FROM Materia WHERE NOT Nombre IN ('Deportes', 'Arte');

-- IN
-- Filtra los estudiantes cuyos grupos son 'A', 'B' o 'C'
SELECT * FROM Estudiante WHERE Grupo IN ('A', 'B', 'C');

-- Filtra las materias con los ID 1, 5, 10
SELECT * FROM Materia WHERE ID IN (1, 5, 10);

-- Filtra los maestros con los ID 3, 7, 9
SELECT * FROM Maestro WHERE ID IN (3, 7, 9);

-- Operaciones matemáticas
-- -
-- Resta 5 del ID de las materias con ID mayor a 10
SELECT Nombre, ID AS ViejoID, ID-5 AS NuevoID FROM Materia WHERE ID > 10;

-- Calcula la diferencia entre 10 y el promedio de los estudiantes en el historial académico
SELECT NombreEst, 10-Promedio AS Diferencia FROM HistorialAcademico;

-- Resta 10 del ID de los estudiantes cuyo ID sea mayor o igual a 30
SELECT Nombre, ID AS ViejoID, ID-10 AS NuevoID FROM Estudiante WHERE ID >= 30;

-- *
-- Multiplica el ID de los maestros por 100
SELECT Nombre, ID, ID*100 AS ID2 FROM Maestro;

-- Multiplica el ID de los estudiantes por 2
SELECT Nombre, ID, ID*2 AS SegundoID FROM Estudiante;

-- Multiplica el ID de las materias por 100
SELECT Nombre, ID AS ViejoID, ID*100 AS NuevoID FROM Materia;

-- /
-- Divide el ID de los maestros por 2
SELECT ID, ID/2 AS ID2 FROM Maestro;

-- Divide el promedio de los estudiantes por 2
SELECT NombreEst, Promedio/2 AS MitadPromedio FROM HistorialAcademico;

-- Divide el ID de los maestros entre 40 y multiplica por 100
SELECT ID, (ID/40)*100 AS Porcentaje FROM Maestro;

-- MIN
-- Obtiene el promedio mínimo del historial académico
SELECT NombreEst, MIN(Promedio) AS Promedio_minimo FROM HistorialAcademico;

-- Obtiene el ID mínimo de los estudiantes
SELECT Nombre, MIN(ID) AS IDMinimo FROM Estudiante;

-- Obtiene el ID mínimo de los maestros
SELECT Nombre, MIN(ID) AS IDMinimo FROM Maestro;

-- MAX
-- Obtiene el promedio máximo del historial académico
SELECT MAX(Promedio) AS Promedio_maximo FROM HistorialAcademico;

-- Obtiene el ID máximo de los estudiantes
SELECT Nombre, MAX(ID) AS IDMaximo FROM Estudiante;

-- Obtiene el ID máximo de los maestros
SELECT Nombre, MAX(ID) AS IDMaximo FROM Maestro;

-- COUNT
-- Cuenta el número total de estudiantes
SELECT COUNT(*) AS TotalEstudiantes FROM Estudiante;

-- Cuenta cuántos estudiantes no tienen teléfono
SELECT COUNT(*) AS SinTelefono FROM Estudiante WHERE Telefono IS NULL;

-- Cuenta cuántos estudiantes tienen teléfono registrado
SELECT COUNT(*) AS ConTelefono FROM Estudiante WHERE Telefono IS NOT NULL;

-- SUM
-- Suma los promedios del historial académico
SELECT SUM(Promedio) AS SumaPromedios FROM HistorialAcademico;

-- Suma los IDs de las materias
SELECT SUM(ID) AS SumaID FROM Materia;

-- Suma los IDs de los maestros que enseñan la materia con ID 1
SELECT SUM(ID_Maestro) AS SumaMaestrosMat FROM Maestro_Materia WHERE ID_Materia = 1;

-- AVG
-- Calcula el promedio de los promedios del historial académico
SELECT AVG(Promedio) AS PromedioGeneral FROM HistorialAcademico;

-- Calcula el promedio de los IDs de los estudiantes
SELECT AVG(ID) AS PromedioID FROM Estudiante;

-- Calcula el promedio de los promedios de ciertos estudiantes
SELECT AVG(Promedio) AS Promedio FROM HistorialAcademico WHERE ID_Estudiante IN ('2', '12', '32');

-- ALIAS
-- Renombra las columnas de Estudiante a NombreCompleto y Grupo a Edificio
SELECT Nombre AS NombreCompleto, Grupo AS Edificio FROM Estudiante;

-- Renombra las columnas de Maestro y calcula un nuevo ID
SELECT Nombre, ID AS ID_Viejo, ID+1000 AS ID_Nuevo FROM Maestro;

-- Renombra las columnas de Materia y calcula un nuevo ID
SELECT Nombre, ID AS ID_Viejo, ID+500 AS ID_Nuevo FROM Materia;

-- CONCAT
-- Concatena el nombre y el grupo de los estudiantes
SELECT CONCAT(Nombre, ' - ', Grupo) AS Nombre_Grupo FROM Estudiante;

-- Concatena el nombre y la dirección de los estudiantes
SELECT CONCAT(Nombre, ' - ', Direccion) AS Nombre_Direccion FROM Estudiante;

-- Concatena el nombre del estudiante y su promedio
SELECT CONCAT(NombreEst, ' - ', Promedio) AS Nombre_Promedio FROM HistorialAcademico;

-- UPPER
-- Convierte el nombre de los estudiantes a mayúsculas
SELECT UPPER(Nombre) AS Nombre FROM Estudiante;

-- Convierte el nombre de las materias a mayúsculas
SELECT UPPER(Nombre) AS NombreMateria FROM Materia;

-- Convierte el nombre de los maestros a mayúsculas
SELECT UPPER(Nombre) AS NombreMaestro FROM Maestro;

-- LOWER
-- Convierte el nombre de los estudiantes a minúsculas
SELECT LOWER(Nombre) AS Nombre FROM Estudiante;

-- Convierte el nombre de las materias a minúsculas
SELECT LOWER(Nombre) AS NombreMateria FROM Materia;

-- Convierte el nombre de los maestros a minúsculas
SELECT LOWER(Nombre) AS NombreMaestro FROM Maestro;

-- OFFSET
-- Muestra los registros de la tabla Estudiante desde la posición 5 hasta la 9
SELECT * FROM Estudiante LIMIT 5 OFFSET 5;

-- Muestra los registros de la tabla Maestro desde la posición 30 hasta la 38
SELECT * FROM Maestro LIMIT 9 OFFSET 30;

-- Muestra los registros del historial académico desde la posición 4 hasta la 13
SELECT * FROM HistorialAcademico LIMIT 10 OFFSET 4;

-- GROUP BY
-- Agrupa los estudiantes por grupo y cuenta cuántos hay en cada grupo
SELECT Grupo, COUNT(*) AS Cantidad FROM Estudiante GROUP BY Grupo;

-- Agrupa los maestros por ID_Maestro y cuenta cuántas materias enseña cada uno
SELECT ID_Maestro, COUNT(*) AS TotalMaterias FROM Maestro_Materia GROUP BY ID_Maestro;

-- Agrupa los estudiantes por grupo y cuenta cuántos tienen teléfono registrado
SELECT Grupo, COUNT(*) AS CantidadConTelefono FROM Estudiante WHERE Telefono IS NOT NULL GROUP BY Grupo;

-- HAVING
-- Filtra los grupos de estudiantes que tengan más de 3 estudiantes
SELECT Grupo, COUNT(*) AS Cantidad FROM Estudiante GROUP BY Grupo HAVING Cantidad > 3;

-- Filtra los estudiantes con un promedio mayor a 5.9
SELECT NombreEst, Promedio FROM HistorialAcademico GROUP BY NombreEst ASC HAVING Promedio > 5.9;

-- Filtra los estudiantes cuyo grupo es 'C', 'F' o 'G'
SELECT Nombre, Direccion, Grupo FROM Estudiante GROUP BY Nombre HAVING Grupo IN ('C', 'F', 'G');

-- CASE
-- Clasifica a los estudiantes según su promedio
SELECT NombreEst, Promedio,
  CASE
    WHEN Promedio >= 9 THEN 'Excelente'
    WHEN Promedio >= 8 THEN 'Promedio'
    WHEN Promedio >= 6 THEN 'Bajo el promedio'
    ELSE 'Necesita mejorar'
  END AS Calificacion
FROM HistorialAcademico;

-- Clasifica el reporte final según el promedio
SELECT NombreEst, Promedio,
  CASE
    WHEN Promedio >= 6 THEN 'Aprobado'
    ELSE 'Reprobado'
  END AS ReporteFinal
FROM HistorialAcademico;

-- Clasifica el grupo de los estudiantes
SELECT Grupo,
  CASE Grupo
    WHEN 'A' THEN 'El Mejor Grupo'
    WHEN 'B' THEN 'Mantenimiento'
    ELSE 'Otro Grupo'
  END AS Descripcion
FROM Estudiante
GROUP BY Grupo;

-- IFNULL
-- Reemplaza los valores nulos del teléfono de los estudiantes por 'Sin telefono'
SELECT Nombre, IFNULL(Telefono, 'Sin telefono') AS Telefono FROM Estudiante;

-- Reemplaza los valores nulos del teléfono de los maestros por 'Telefono Sin Registrar'
SELECT Nombre, IFNULL(Telefono, 'Telefono Sin Registrar') AS Telefono FROM Maestro;

-- Reemplaza los valores nulos del teléfono de los estudiantes por 'No Registrado'
SELECT Nombre, IFNULL(Telefono, 'No Registrado') AS Telefono FROM Estudiante;

-- Inner Join
-- Relaciona estudiantes con su historial académico mediante el ID
SELECT e1.Nombre, e1.Grupo, h1.Promedio FROM Estudiante AS e1 INNER JOIN HistorialAcademico h1 ON e1.ID = h1.ID;
-- Asocia maestros con las materias que imparten a través de la tabla intermedia
SELECT m1.Nombre, m2.ID_Materia FROM Maestro AS m1 INNER JOIN Maestro_Materia m2 ON m1.ID = m2.ID_Maestro;

-- Right Join
-- Muestra todos los maestros, incluso si no tienen materias asignadas
SELECT m1.ID_Materia, m2.Nombre FROM Maestro_Materia AS m1 RIGHT JOIN Maestro m2 ON m1.ID_Maestro = m2.ID;
-- Obtiene todo el historial académico, incluyendo registros sin estudiante asociado
SELECT e1.Nombre, e1.Grupo, h1.Promedio FROM Estudiante AS e1 RIGHT JOIN HistorialAcademico h1 ON e1.ID = h1.ID;


-- Left Join
-- Lista todos los estudiantes, mostrando su historial académico si existe
SELECT e1.ID AS IDEstudiante, e1.Grupo, h1.Promedio FROM Estudiante AS e1 LEFT JOIN HistorialAcademico h1 ON e1.ID = h1.ID;
-- Recupera todos los maestros, con sus materias asignadas si las tienen
SELECT m1.Nombre, m2.ID_Materia FROM Maestro AS m1 LEFT JOIN Maestro_Materia m2 ON m1.ID = m2.ID_Maestro;

-- Subquery
-- Mostrar el nombre y dirección de los estudiantes cuyo promedio es mayor al promedio general.
SELECT e.Nombre, e.Direccion FROM estudiante e WHERE ID IN 
(SELECT ha.ID_Estudiante FROM historialacademico ha WHERE Promedio > (SELECT AVG(Promedio) FROM historialacademico));

-- Listar los nombres de los maestros que imparten alguna materia que también enseña el maestro con ID = 1.
SELECT m.Nombre FROM Maestro m WHERE m.ID IN
(SELECT mm.ID_Maestro FROM maestro_materia mm WHERE ID_Maestro = 1);

-- Mostrar el nombre y promedio del estudiante con el promedio más alto.
SELECT ha.NombreEst, ha.Promedio FROM historialacademico ha WHERE ha.Promedio = 
(SELECT MAX(Promedio) FROM historialacademico);

-- Mostrar los nombres de las materias que no están asignadas a ningún maestro.
SELECT m.Nombre FROM materia m WHERE NOT EXISTS
(SELECT 1 FROM maestro_materia mm WHERE mm.ID_Materia = m.ID);

-- Listar los nombres de los estudiantes que tienen el mismo nombre que al menos otro estudiante.
SELECT e.Nombre FROM estudiante e WHERE e.Nombre IN
(SELECT Nombre FROM estudiante GROUP BY Nombre HAVING COUNT(*) > 1);
