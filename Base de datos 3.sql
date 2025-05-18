DROP DATABASE IF EXISTS bd3;
CREATE SCHEMA IF NOT EXISTS bd3;
USE bd3;

CREATE TABLE IF NOT EXISTS Categoria (
  ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  Descripcion VARCHAR(45) NOT NULL
  );
  
  CREATE TABLE IF NOT EXISTS Arbitro (
  ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  Nombre VARCHAR(45) NOT NULL
  );
  CREATE TABLE IF NOT EXISTS Equipo (
  ID INT NOT NULL AUTO_INCREMENT,
  ID_Categoria INT NOT NULL,
  Cantidad VARCHAR(45) NOT NULL,
  Descripcion VARCHAR(45) NOT NULL,
  PRIMARY KEY(ID,ID_Categoria),
  FOREIGN KEY(ID_Categoria) REFERENCES Categoria(ID)
  );

  CREATE TABLE IF NOT EXISTS Jugador (
  ID INT NOT NULL AUTO_INCREMENT,
  ID_Equipo INT NOT NULL,
  NumJugador INT NOT NULL,
  Nombre VARCHAR(45) NOT NULL,
  Telefono VARCHAR(45) NULL,
  PRIMARY KEY(ID,ID_Equipo),
  FOREIGN KEY(ID_Equipo) REFERENCES Equipo(ID)
  );
  CREATE TABLE IF NOT EXISTS Cancha (
  ID INT NOT NULL AUTO_INCREMENT,
  ID_Arbitro INT NOT NULL,
  ID_Equipo INT NOT NULL,
  Descripcion VARCHAR(45) NOT NULL,
  PRIMARY KEY(ID,ID_Arbitro,ID_Equipo),
  FOREIGN KEY(ID_Arbitro) REFERENCES Arbitro(ID),
  FOREIGN KEY(ID_Equipo) REFERENCES Equipo(ID)
  );
  
  INSERT INTO Categoria(Descripcion) VALUES
  ('Máxima categoría profesional'),
  ('Liga de ascenso'),
  ('Liga juvenil amateur'),
  ('Torneo continental prestigioso'),
  ('Competencia nivel nacional'),
  ('Competencia nivel regional'),
  ('Fútbol equipos universitarios'),
  ('Competencia fútbol femenino'),
  ('Desarrollo talentos jóvenes'),
  ('Jugadores mayor experiencia'),
  ('Fútbol no profesional'),
  ('Fútbol para niños'),
  ('Fútbol sala interior'),
  ('Promoción a primera'),
  ('Fútbol por diversión'),
  ('Fútbol playa'), 
  ('Campeonato mundial'),
  ('Copa internacional de clubes'),
  ('Liga profesional femenina'),
  ('Competencia de selecciones nacionales'),
  ('Liga semi-profesional'),
  ('Torneo intercolegial'),
  ('Campeonato municipal'),
  ('Liga de veteranos'),
  ('Fútbol en barrios'),
  ('Copa local de aficionados'),
  ('Liga de reservas'),
  ('Campeonato empresarial'),
  ('Torneo de invierno'),
  ('Competencia de verano'),
  ('Fútbol de salón'),
  ('Liga de fútbol rápido'),
  ('Copa amistosa entre clubes'),
  ('Liga de nuevos talentos'),
  ('Liga recreativa comunitaria'),
  ('Campeonato interescolar'),
  ('Fútbol infantil mixto'),
  ('Torneo de escuelitas deportivas'),
  ('Liga de fútbol para personas con discapacidad'),
  ('Torneo de fútbol universitario internacional');
  
  INSERT INTO Arbitro(Nombre) VALUES
  ('Aurora'),
  ('Benito'),
  ('Mireya'),
  ('David'),
  ('Elena'),
  ('Francisco'),
  ('Gabriela'),
  ('Héctor'),
  ('Jorge'),
  ('Irena'),
  ('Karina'),
  ('Gabriela'),
  ('Mireya'),
  ('Benito'),
  ('Octavio'),
  ('Luis'),
  ('María'),
  ('Fernando'),
  ('Patricia'),
  ('Esteban'),
  ('Rocío'),
  ('Ricardo'),
  ('Carmen'),
  ('Alejandro'),
  ('Sofía'),
  ('Tomás'),
  ('Valeria'),
  ('Roberto'),
  ('Beatriz'),
  ('Emilio'),
  ('Natalia'),
  ('Andrés'),
  ('Lorena'),
  ('Raúl'),
  ('Isabel'),
  ('Germán'),
  ('Susana'),
  ('Martín'),
  ('Paola'),
  ('Fabián');
  
  INSERT INTO Equipo(ID_Categoria,Cantidad,Descripcion) VALUES
  (1,'12','Campeones Liga Española'),
  (2,'8','Estilo juego ofensivo'),
  (3,'6','Historia rica títulos'),
  (5,'22','Pasión aficionados leal'),
  (4,'16','Dominio fútbol alemán'),
  (8,'8','Defensa sólida italiana'),
  (9,'9','Superestrellas talento ofensivo'),
  (7,'14','Historia éxito europeo'),
  (6,'15','Competencia máxima Italia'),
  (15,'7','Presencia Premier League'),
  (12,'25','Fútbol contraataque eficaz'),
  (13,'37','Talento joven emergente'),
  (14,'24','Estilo juego técnico'),
  (11,'21','Tradición fútbol atractivo'),
  (10,'23','Espíritu lucha constante'),
  (22, '10', 'Defensa férrea y organizada'),
  (35, '12', 'Táctica disciplinada y efectiva'),
  (19, '14', 'Ataque veloz y letal'),
  (28, '9', 'Dominio en la posesión de balón'),
  (25, '18', 'Fútbol con creatividad y talento'),
  (31, '7', 'Estrategia ofensiva innovadora'),
  (38, '11', 'Jugadores con gran resistencia'),
  (29, '16', 'Historia llena de títulos internacionales'),
  (21, '13', 'Afición apasionada y fiel'),
  (40, '8', 'Fútbol con mentalidad ganadora'),
  (20, '15', 'Club con cantera talentosa'),
  (36, '6', 'Tradición en ligas nacionales'),
  (33, '22', 'Defensa compacta y contragolpe'),
  (17, '20', 'Club con proyección mundial'),
  (30, '9', 'Fútbol ofensivo espectacular'),
  (23, '14', 'Campeón en torneos intercolegiales'),
  (32, '17', 'Jugadores con mentalidad fuerte'),
  (24, '19', 'Dominio en campeonatos locales'),
  (27, '21', 'Equipo con gran historia'),
  (39, '12', 'Estilo de juego moderno'),
  (18, '10', 'Apuesta por jóvenes talentos'),
  (26, '11', 'Fútbol rápido y dinámico'),
  (34, '15', 'Equipo con grandes logros'),
  (37, '9', 'Fútbol con estrategia compacta'),
  (16, '8', 'Escuela de formación futbolística');
  
INSERT INTO Jugador(ID_Equipo,NumJugador,Nombre,Telefono) VALUES
(1, 515, 'Aarón', '4491234561'),
(8, 213, 'Bárbara', '4492345672'),
(4, 135, 'Dora', NULL),
(7, 987, 'Claudio', '4494567894'),
(5, 215, 'Eduardo', NULL),
(9, 841, 'Fabiola', '4496789010'),
(6, 278, 'Héctor', '4497890127'),
(10, 184, 'Isabel', '4498901238'),
(2, 254, 'Jorge', '4499012349'),
(3, 884, 'Fabiola', '4490123450'),
(12, 698, 'Lidia', NULL),
(13, 285, 'Mauricio', '4492463572'),
(15, 178, 'Bárbara', '4493574653'),
(11, 598, 'Óscar', '4494685794'),
(14, 985, 'Paola', '4495796805'),
(22, 321, 'Roberto', NULL),
(35, 412, 'Andrea', '4497923419'),
(19, 527, 'Gustavo', '4498034520'),
(28, 634, 'Lorena', '4499145631'),
(25, 789, 'Sergio', '4490256742'),
(31, 841, 'Fernanda', '4491367853'),
(38, 963, 'Rafael', NULL),
(29, 412, 'Clara', '4493589075'),
(21, 527, 'Víctor', '4494690186'),
(40, 635, 'Cecilia', '4495701297'),
(20, 741, 'Emilio', NULL),
(36, 852, 'Silvia', '4497923410'),
(33, 963, 'Daniel', '4498034521'),
(17, 412, 'Martina', NULL),
(30, 527, 'Humberto', '4490256743'),
(23, 635, 'Renata', '4491367854'),
(32, 741, 'Ezequiel', '4492478965'),
(24, 852, 'Tamara', '4493589076'),
(27, 963, 'Javier', '4494690187'),
(39, 412, 'Beatriz', '4495701298'),
(18, 527, 'Manuel', '4496812309'),
(26, 635, 'Natalia', NULL),
(34, 741, 'Leandro', '4498034522'),
(37, 852, 'Guadalupe', '4499145633'),
(16, 963, 'Arturo', '4490256744');

  
  INSERT INTO Cancha(ID_Arbitro,ID_Equipo,Descripcion) VALUES
  (5,1,'Césped natural bien cuidado'),
  (8,5,'Dimensiones reglamentarias FIFA'),
  (7,6,'Iluminación nocturna potente'),
  (4,7,'Gradas capacidad amplia'),
  (9,4,'Porterías con redes'),
  (6,8,'Marcas líneas blancas'),
  (1,2,'Superficie plana uniforme'),
  (2,3,'Zona banquillos equipados'),
  (3,9,'Áreas técnico demarcadas'),
  (11,14,'Vallas publicidad alrededor'),
  (14,15,'Sistema drenaje eficiente'),
  (12,11,'Vestidores cercanos cómodos'),
  (15,12,'Acceso fácil público'),
  (13,13,'Ambiente fútbol vibrante'),
  (10,10,'Mantenimiento regular profesional'),
  (22, 35, 'Césped híbrido de última generación'),
  (35, 19, 'Tribunas techadas para espectadores'),
  (19, 28, 'Pista atlética alrededor del campo'),
  (28, 25, 'Cámaras VAR instaladas'),
  (25, 31, 'Palcos VIP con excelente vista'),
  (31, 38, 'Sistema de riego automatizado'),
  (38, 29, 'Marcador digital LED'),
  (29, 21, 'Zonas de seguridad bien delimitadas'),
  (21, 40, 'Baños y servicios higiénicos modernos'),
  (40, 20, 'Área de calentamiento especial'),
  (20, 36, 'Capacidad para más de 30,000 personas'),
  (36, 33, 'Zona de prensa con WiFi'),
  (33, 17, 'Estacionamiento amplio y seguro'),
  (17, 30, 'Sistema de sonido envolvente'),
  (30, 23, 'Techo retráctil para eventos'),
  (23, 32, 'Canchas auxiliares de entrenamiento'),
  (32, 24, 'Iluminación LED ecológica'),
  (24, 27, 'Pantalla gigante para repeticiones'),
  (27, 39, 'Asientos cómodos y numerados'),
  (39, 18, 'Vestuarios modernos con duchas'),
  (18, 26, 'Túnel de acceso para jugadores'),
  (26, 34, 'Control de acceso con torniquetes'),
  (34, 37, 'Cercanía con transporte público'),
  (37, 16, 'Zona especial para personas con discapacidad'),
  (16, 22, 'Césped sintético certificado por la FIFA');
  
  
ALTER TABLE Equipo MODIFY COLUMN Cantidad INT;
  
-- DISTINCT
-- Obtiene los nombres únicos de los árbitros
SELECT DISTINCT Nombre FROM Arbitro;

-- Obtiene las cantidades únicas de equipos
SELECT DISTINCT Cantidad FROM Equipo;

-- Obtiene los nombres únicos de los jugadores
SELECT DISTINCT Nombre FROM Jugador;

-- LIMIT
-- Muestra los primeros 20 registros de la tabla Arbitro
SELECT * FROM Arbitro LIMIT 20;

-- Muestra los primeros 5 registros de la tabla Categoria
SELECT * FROM Categoria LIMIT 5;

-- Muestra los primeros 15 registros de la tabla Jugador
SELECT * FROM Jugador LIMIT 15;

-- ORDER BY
-- Ordena los registros de Categoria por ID de forma descendente
SELECT * FROM Categoria ORDER BY ID DESC;

-- Ordena los registros de Jugador por el número de jugador en orden ascendente
SELECT * FROM Jugador ORDER BY NumJugador ASC;

-- Ordena los registros de Arbitro por Nombre en orden ascendente
SELECT * FROM Arbitro ORDER BY Nombre ASC;

-- Operadores de comparación
-- !=
-- Filtra las canchas donde el ID_Equipo no sea 10
SELECT * FROM Cancha WHERE ID_Equipo != 10;

-- Filtra las canchas donde el ID_Arbitro no sea 20
SELECT * FROM Cancha WHERE ID_Arbitro != 20;

-- Filtra los equipos donde el ID_Categoria no sea 7
SELECT * FROM Equipo WHERE ID_Categoria != 7;

-- >
-- Filtra los jugadores cuyo ID sea mayor que 10
SELECT * FROM Jugador WHERE ID > 10;

-- Filtra los equipos cuyo ID_Categoria sea mayor que 5
SELECT * FROM Equipo WHERE ID_Categoria > 5;

-- Filtra las canchas cuyo ID sea mayor que 20
SELECT * FROM Cancha WHERE ID > 20;

-- =>
-- Filtra las canchas donde el ID_Arbitro sea mayor o igual a 20
SELECT * FROM Cancha WHERE ID_Arbitro >= 20;

-- Filtra los jugadores cuyo ID sea mayor o igual a 10
SELECT * FROM Jugador WHERE ID >= 10;

-- Filtra los equipos cuyo ID_Categoria sea mayor o igual a 15
SELECT * FROM Equipo WHERE ID_Categoria >= 15;

-- LIKE
-- Filtra los árbitros cuyo nombre termina en 's'
SELECT * FROM Arbitro WHERE Nombre LIKE '%s';

-- Filtra los equipos cuya descripción contiene 'ar'
SELECT * FROM Equipo WHERE Descripcion LIKE '%ar%';

-- Filtra las categorías cuya descripción empieza con 'c'
SELECT * FROM Categoria WHERE Descripcion LIKE 'c%';

-- BETWEEN
-- Filtra los árbitros cuyo ID esté entre 10 y 20
SELECT * FROM Arbitro WHERE ID BETWEEN 10 AND 20;

-- Filtra las categorías cuyo ID esté entre 10 y 30
SELECT * FROM Categoria WHERE ID BETWEEN 10 AND 30;

-- Filtra los equipos cuya cantidad esté entre 25 y 30
SELECT * FROM Equipo WHERE Cantidad BETWEEN 25 AND 30;

-- AND
-- Filtra los jugadores cuyo ID sea mayor a 5 y cuyo ID_Equipo sea 10
SELECT * FROM Jugador WHERE ID > 5 AND ID_Equipo = 10;

-- Filtra las canchas cuyo ID_Arbitro sea menor a 30 y el ID_Equipo sea mayor a 10
SELECT * FROM Cancha WHERE ID_Arbitro < 30 AND ID_Equipo > 10;

-- Filtra los equipos cuyo ID_Categoria sea mayor o igual a 20 y el ID sea mayor a 10
SELECT * FROM Equipo WHERE ID_Categoria >= 20 AND ID > 10;

-- OR
-- Filtra los equipos cuyo ID sea 32 o la cantidad sea menor a 20
SELECT * FROM Equipo WHERE ID = 32 OR Cantidad < 20;

-- Filtra los jugadores cuyo NumJugador sea mayor a 10 o cuyo ID sea menor a 10
SELECT * FROM Jugador WHERE NumJugador > 10 OR ID < 10;

-- Filtra las categorías cuyo ID sea mayor a 5 o menor a 5
SELECT * FROM Categoria WHERE ID > 5 OR ID < 5;

-- NOT
-- Filtra los jugadores que tengan un teléfono registrado
SELECT * FROM Jugador WHERE Telefono IS NOT NULL;

-- Filtra los jugadores cuyo ID no sea mayor a 10
SELECT * FROM Jugador WHERE NOT ID > 10;

-- Filtra las canchas donde el ID_Arbitro no sea menor a 20
SELECT * FROM Cancha  WHERE NOT ID_Arbitro < 20;

-- IN
-- Filtra los árbitros cuyo ID esté en la lista (10, 20, 30, 40)
SELECT * FROM Arbitro WHERE ID IN (10, 20, 30 , 40);

-- Filtra las canchas donde el ID_Arbitro esté en la lista (5, 20)
SELECT * FROM Cancha WHERE ID_Arbitro IN (5, 20);

-- Filtra las categorías cuyo ID esté en la lista (1, 2, 3, 4, 10)
SELECT * FROM Categoria WHERE ID IN (1, 2, 3, 4, 10);

-- Operaciones matemáticas
-- +
-- Suma 100 al valor del NumJugador en la tabla Jugador
SELECT Nombre, NumJugador, NumJugador + 100 AS NumJugadorNuevo FROM Jugador;

-- -
-- Resta 10 al valor del ID en la tabla Arbitro donde el ID sea mayor a 20
SELECT Nombre, ID, ID - 10 AS NuevoID FROM Arbitro WHERE ID > 20;

-- *
-- Multiplica la cantidad de jugadores por 2 en la tabla Equipo
SELECT ID, Cantidad, Cantidad*2 AS NuevaCantidad FROM Equipo;

-- MIN
-- Obtiene la cantidad mínima de jugadores en la tabla Equipo
SELECT ID, MIN(Cantidad) AS CantidadMinima FROM Equipo;

-- Obtiene el número de jugador mínimo en la tabla Jugador
SELECT Nombre, MIN(NumJugador) AS NumeroMinimo FROM Jugador;

-- Obtiene el ID mínimo de árbitro en la tabla Arbitro
SELECT Nombre, MIN(ID) AS IDMinimo FROM Arbitro;

-- MAX
-- Obtiene la cantidad máxima de jugadores en la tabla Equipo
SELECT ID, MAX(Cantidad) AS CantidadMaxima FROM Equipo;

-- Obtiene el ID máximo de jugador en la tabla Jugador
SELECT Nombre, MAX(ID) AS IDMaximo FROM Jugador;

-- Obtiene el ID máximo de categoría en la tabla Categoria
SELECT MAX(ID) AS IDMaximo FROM Categoria;

-- COUNT
-- Cuenta la cantidad de jugadores en la tabla Jugador
SELECT COUNT(*) AS CantidadJugadores FROM Jugador;

-- Cuenta la cantidad de jugadores cuyo número de jugador sea mayor a 400
SELECT COUNT(*) AS CantidadJugadores FROM Jugador WHERE NumJugador > 400;

-- Cuenta la cantidad de equipos cuya cantidad de jugadores sea mayor a 10
SELECT COUNT(*) AS CantidadEquipos FROM Equipo WHERE Cantidad > 10;

-- SUM
-- Suma la cantidad de jugadores en la tabla Equipo
SELECT SUM(Cantidad) AS TotalJugadores FROM Equipo;

-- Suma los números de jugador en la tabla Jugador
SELECT SUM(NumJugador) AS SumaJugadores FROM Jugador;

-- Suma los ID de categoría en la tabla Categoria
SELECT SUM(ID) AS SumaID FROM Categoria;

-- AVG
-- Calcula el promedio de la cantidad de jugadores en la tabla Equipo
SELECT AVG(Cantidad) AS PromedioJugadores FROM Equipo;

-- Calcula el promedio del ID en la tabla Jugador
SELECT AVG(ID) AS PromedioID FROM Jugador;

-- Calcula el promedio de los números de jugador en la tabla Jugador
SELECT AVG(NumJugador) AS PromedioJugadores FROM Jugador;

-- ALIAS
-- Renombra las columnas ID, Cantidad y Descripción en la tabla Equipo
SELECT ID AS Equipo, Cantidad, Descripcion FROM Equipo;

-- Renombra las columnas ID y Descripción en la tabla Categoria
SELECT ID AS Categoria, Descripcion FROM Categoria;

-- Renombra las columnas ID, ID_Arbitro y ID_Equipo en la tabla Cancha
SELECT ID AS Cancha, ID_Arbitro AS Arbitro, ID_Equipo AS Equipo FROM Cancha;

-- CONCAT
-- Concatena el número de jugador y el nombre en la tabla Jugador
SELECT CONCAT(NumJugador, ' - ', Nombre) AS Numero_Nombre FROM Jugador;

-- Concatena el ID y el nombre en la tabla Arbitro
SELECT CONCAT(ID, ' - ', Nombre) AS ID_Arbitro FROM Arbitro;

-- Concatena el ID y la descripción en la tabla Cancha
SELECT CONCAT(ID, ' - ', Descripcion) AS Cancha_Descripcion FROM Cancha;

-- UPPER
-- Convierte el nombre y teléfono de los jugadores a mayúsculas
SELECT UPPER(Nombre) AS Nombre, Telefono FROM Jugador;

-- Convierte el nombre y ID de los árbitros a mayúsculas
SELECT UPPER(Nombre) AS Nombre, ID FROM Arbitro;

-- Convierte la descripción de los equipos a mayúsculas
SELECT ID, UPPER(Descripcion) AS Descripcion FROM Equipo;

-- LOWER
-- Convierte el nombre y teléfono de los jugadores a minúsculas
SELECT LOWER(Nombre) AS Nombre, Telefono FROM Jugador;

-- Convierte la descripción de los equipos a minúsculas
SELECT ID, LOWER(Descripcion) AS Descripcion FROM Equipo;

-- Convierte el nombre de los árbitros a minúsculas
SELECT ID, LOWER(Nombre) AS Nombre FROM Arbitro;

-- OFFSET
-- Muestra los registros de la tabla Equipo desde la posición 10 hasta la posición 12
SELECT * FROM Equipo LIMIT 3 OFFSET 10;

-- Muestra los registros de la tabla Categoria desde la posición 20 hasta la posición 32
SELECT * FROM Categoria LIMIT 13 OFFSET 20;

-- Muestra los registros de la tabla Jugador desde la posición 25 hasta la 32
SELECT * FROM Jugador LIMIT 7 OFFSET 25;

-- GROUP BY
-- Agrupa los registros de la tabla Equipo por cantidad de jugadores y cuenta los resultados
SELECT Cantidad, COUNT(Cantidad) AS TotalCantidad FROM Equipo GROUP BY Cantidad;

-- Agrupa los registros de Jugador por ID_Equipo y cuenta los jugadores por equipo
SELECT ID_Equipo, COUNT(*) AS TotalJugadores FROM Jugador GROUP BY ID_Equipo ORDER BY TotalJugadores DESC;

-- Agrupa los registros de Cancha por ID_Equipo y cuenta los árbitros por equipo
SELECT ID_Equipo, COUNT(ID_Arbitro) AS TotalArbitros FROM Cancha GROUP BY ID_Equipo;

-- HAVING
-- Filtra los resultados de Equipo donde la cantidad de jugadores sea mayor a 2
SELECT Cantidad, COUNT(Cantidad) AS TotalCantidad FROM Equipo GROUP BY Cantidad HAVING TotalCantidad > 2;

-- Filtra los jugadores donde el IDJugador sea mayor a 15
SELECT ID_Equipo, ID AS IDJugador FROM Jugador GROUP BY ID_Equipo HAVING IDJugador > 15;

-- Filtra las canchas donde el ID_Arbitro sea mayor a 20
SELECT ID, ID_Arbitro FROM Cancha GROUP BY ID HAVING ID_Arbitro > 20;

-- CASE
-- Clasifica el tamaño de los equipos en 'Grande', 'Mediano' o 'Pequeño'
SELECT ID, Cantidad,
CASE
	WHEN Cantidad > 15 THEN 'Grande'
    WHEN Cantidad >= 8 THEN 'Mediano'
    ELSE 'Pequeño'
END AS Tamaño
FROM Equipo;

-- Establece una prioridad en los jugadores dependiendo de si tienen teléfono registrado
SELECT ID, Nombre, Telefono,
CASE
	WHEN Telefono IS NOT NULL THEN 'Prioridad Alta'
    ELSE 'Prioridad Baja'
END AS Prioridad
FROM Jugador;

-- Clasifica a los jugadores como 'Jugador Viejo' o 'Jugador Nuevo' dependiendo de su ID
SELECT ID, Nombre,
CASE
	WHEN ID < 20 THEN 'Jugador Viejo'
    ELSE 'Jugador Nuevo'
END AS 'Servicio'
FROM Jugador;

-- IFNULL
-- Reemplaza los valores nulos del teléfono por 'Sin telefono' en la tabla Jugador
SELECT ID,Nombre, IFNULL(Telefono, 'Sin telefono') AS Telefono FROM Jugador;

-- Reemplaza los valores nulos del teléfono por 'No registrado' en la tabla Jugador
SELECT NumJugador, IFNULL(Telefono, 'No registrado') AS Telefono FROM Jugador;

-- Reemplaza los valores nulos del teléfono por 'Baja' en la tabla Jugador
SELECT Nombre, IFNULL(Telefono, 'Baja') AS Telefono FROM Jugador;

-- Inner Join
  SELECT c1.ID AS IDCategoria, c1.Descripcion, e1.ID AS IDEquipo FROM Categoria AS c1 INNER JOIN Equipo e1 ON c1.ID = e1.ID;
  SELECT j1.Nombre, e1.ID AS IDEquipo FROM Equipo AS e1 INNER JOIN Jugador AS j1 ON j1.ID_Equipo = e1.ID;
  
-- Right Join
  SELECT a1.Nombre AS NombreArbitro, c1.ID AS IDCancha, Descripcion FROM Arbitro AS a1 RIGHT JOIN Cancha c1 ON a1.ID = c1.ID_Arbitro;
  SELECT e1.ID AS IDEquipo, e1.Descripcion, c1.ID AS IDCancha, c1.Descripcion FROM Equipo AS e1 RIGHT JOIN Cancha c1 ON e1.ID = c1.ID_Equipo;

-- Left Join
  SELECT e1.ID AS IDEquipo, e1.Descripcion, c1.ID AS IDCancha, c1.Descripcion FROM Equipo AS e1 LEFT JOIN Cancha c1 ON e1.ID = c1.ID_Equipo;
  SELECT e1.ID AS IDEquipo, j1.Nombre FROM Jugador AS j1 LEFT JOIN Equipo AS e1 ON j1.ID_Equipo =  e1.ID;

-- Subquery
-- Listar los nombres de los jugadores que pertenecen a equipos con más de 15 jugadores.
SELECT j.Nombre FROM jugador j WHERE ID_Equipo IN 
(SELECT e.ID FROM equipo e WHERE e.Cantidad > 15);

-- Mostrar las descripciones de las canchas donde juegan equipos que pertenecen a la categoría "Campeonato mundial".
SELECT c.Descripcion FROM cancha c WHERE ID_Equipo IN 
(SELECT e.ID FROM equipo e WHERE ID_Categoria =
(SELECT ID FROM categoria WHERE Descripcion = 'Campeonato mundial'));

-- Listar los nombres de los jugadores cuyo equipo tiene más de 20 jugadores.
SELECT j.Nombre FROM jugador j WHERE ID_Equipo IN 
(SELECT ID FROM equipo WHERE Cantidad > 20);

-- Obtener los nombres de las categorías que tienen más de 10 equipos asociados.
SELECT c.Descripcion FROM categoria c WHERE c.ID IN
(SELECT e.ID_Categoria FROM equipo e GROUP BY e.ID_Categoria HAVING COUNT(*) > 0); 
# No hay mas de 1 equipo asociado a cada categoria

-- Listar los nombres de los jugadores que no tienen teléfono registrado.
SELECT j.Nombre FROM jugador j WHERE j.ID IN
(SELECT ID FROM jugador WHERE Telefono IS NULL);
