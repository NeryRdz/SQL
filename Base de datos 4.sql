DROP DATABASE IF EXISTS bd4;
CREATE DATABASE IF NOT EXISTS bd4;
USE bd4;

CREATE TABlE IF NOT EXISTS Usuario(
	ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nombre Varchar(45) NOT NULL,
    Descripcion VARCHAR(45) NULL
);

CREATE TABlE IF NOT EXISTS Amigo(
	ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nombre Varchar(45) NOT NULL,
    Descripcion Varchar(45) NULL
);

CREATE TABlE IF NOT EXISTS Habilidad(
	ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nombre Varchar(45) NOT NULL,
    Descripcion VARCHAR(45) NOT NULL,
    Tipo Varchar(45) NOT NULL
);

CREATE TABlE IF NOT EXISTS Mascota(
	ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nombre Varchar(45) NOT NULL,
    Descripcion VARCHAR(45) NOT NULL,
    Tipo Varchar(45) NOT NULL
);

CREATE TABlE IF NOT EXISTS Objeto(
	ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nombre Varchar(45) NOT NULL,
    Descripcion VARCHAR(45),
    Valor INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Usuario_Amigo(
	ID_Usuario INT NOT NULL,
    ID_Amigo INT NOT NULL,
    PRIMARY KEY(ID_Usuario,ID_Amigo),
    FOREIGN KEY(ID_Usuario) REFERENCES Usuario(ID),
    FOREIGN KEY(ID_Amigo) REFERENCES Amigo(ID)
);

CREATE TABLE IF NOT EXISTS Usuario_Habilidad(
	ID_Usuario INT NOT NULL,
    ID_Habilidad INT NOT NULL,
    PRIMARY KEY(ID_Usuario,ID_Habilidad),
    FOREIGN KEY(ID_Usuario) REFERENCES Usuario(ID),
    FOREIGN KEY(ID_Habilidad) REFERENCES Habilidad(ID)
);

CREATE TABLE IF NOT EXISTS Usuario_Mascota(
	ID_Usuario INT NOT NULL,
    ID_Mascota INT NOT NULL,
    PRIMARY KEY(ID_Usuario,ID_Mascota),
    FOREIGN KEY(ID_Usuario) REFERENCES Usuario(ID),
    FOREIGN KEY(ID_Mascota) REFERENCES Mascota(ID)
);

CREATE TABLE IF NOT EXISTS Usuario_Objeto(
	ID_Usuario INT NOT NULL,
    ID_Objeto INT NOT NULL,
    PRIMARY KEY(ID_Usuario,ID_Objeto),
    FOREIGN KEY(ID_Usuario) REFERENCES Usuario(ID),
    FOREIGN KEY(ID_Objeto) REFERENCES Objeto(ID)
);

INSERT INTO Usuario(Nombre, Descripcion) VALUES
('ShadowKnightX', 'Guerrero Imparable Legendario'),
('PixelWarrior', NULL),
('GalacticRanger', 'Mago Sabio Poderoso'),
('MysticNinja', 'Explorador Ágil Aventurero'),
('FireDrake99', NULL),
('CyberSamurai', 'Ingeniero Creativo Estratégico'),
('PhantomBlade', NULL),
('QuantumRogue', 'Tanque Resistente Valiente'),
('ThunderStrike', NULL),
('PixelWarrior', 'Ninja Competitivo'),
('InfernoMage', NULL),
('QuantumRogue', 'Samurái Honorífico Disciplinado'),
('QuantumRogue', 'Mago Torpe'),
('LunarEclipse', NULL),
('ArcaneMaster', 'Pirata Astuto Temerario'),
('DarkVortex', 'Hechicero de las Sombras'),
('NeonAssassin', NULL),
('SolarSentinel', 'Paladín de la Luz Divina'),
('FrostBite', NULL),
('VenomStriker', 'Cazador Silencioso y Mortal'),
('EclipseKnight', NULL),
('StormBringer', 'Invocador de Tormentas'),
('ShadowFang', 'Lobo Solitario Sigiloso'),
('TitaniumWarrior', NULL),
('CyberGhost', 'Hacker Maestro del Sigilo'),
('BlazeHunter', 'Arquero de Fuego Imparable'),
('VoidWalker', NULL),
('PhantomRogue', 'Ladrón Maestro de Sombras'),
('LightningFury', NULL),
('SteelPaladin', 'Protector con Armadura Divina'),
('DarkSorcerer', NULL),
('CrimsonAvenger', 'Vengador con Llamas Ardientes'),
('CelestialArcher', NULL),
('ShadowReaper', 'Cosechador de Almas'),
('MysticWarden', NULL),
('InfernalKnight', 'Caballero del Infierno'),
('CyberValkyrie', NULL),
('SilentPredator', 'Asesino Silencioso e Implacable'),
('AstralMage', NULL),
('DragonSlayerX', 'Cazador de Dragones Legendario');


INSERT INTO Amigo(Nombre, Descripcion) VALUES
('Leonidas', 'Guerrero Valiente Leal'),
('Merlín', NULL),
('Robin', 'Arquero Preciso Fiel'),
('Florence', NULL),
('Marco', 'Explorador Ágil Leal'),
('Ezio', 'Asesino Sigiloso Astuto'),
('Tesla', NULL),
('Hanzo', 'Ninja Silencioso Eficaz'),
('Vasquez', 'Francotirador Preciso Leal'),
('Elune', NULL),
('Jack Sparrow', 'Pirata Astuto Confiable'),
('Goliat', 'Tanque Resistente Fuerte'),
('Artemis', NULL),
('Conan', 'Bárbaro Feroz Valiente'),
('Lancelot', 'Paladín Justo Noble'),
('Thor', NULL),
('Gandalf', 'Mago con Sabiduría Infinita'),
('Legolas', NULL),
('Athena', 'Estratega y Líder Justa'),
('Dante', 'Espadachín Rápido y Letal'),
('Tesla', 'Inventor y Visionario'),
('Naruto', NULL),
('Cassidy', 'Pistolero Rápido y Preciso'),
('Sylvanas', 'Cazadora de la Oscuridad'),
('Kratos', NULL),
('Altair', 'Asesino con Código de Honor'),
('Turing', 'Criptógrafo y Genio Matemático'),
('Ragnar', 'Explorador y Conquistador'),
('Aloy', NULL),
('Sombra', 'Hacker Sigilosa y Letal'),
('Arthur', 'Caballero de la Mesa Redonda'),
('Morgana', NULL),
('Sigurd', 'Héroe Legendario Viking'),
('Trinity', 'Experta en Artes Marciales y Tecnología'),
('Raiden', 'Dios del Trueno y Protector'),
('Shepard', NULL),
('Lúcio', 'Sanador con Ritmo y Energía'),
('Scorpion', 'Luchador con Fuego Interno'),
('Zelda', NULL),
('Ezreal', 'Explorador con Poder Arcano');



INSERT INTO Habilidad (Nombre, Descripcion, Tipo) VALUES
('Rayo Arcano', 'Energía mágica destructiva', 'Magia ofensiva'),
('Furia de Fuego', 'Llamas intensas abrasadoras', 'Magia ofensiva'),
('Escudo Celestial', 'Protección divina invulnerable', 'Defensa mágica'),
('Golpe Sombrío', 'Ataque sombra rápida', 'Ataque físico'),
('Curación Divina', 'Recuperación salud instantánea', 'Magia curativa'),
('Viento Cortante', 'Corriente aire afilada', 'Ataque elemental'),
('Descarga Eléctrica', 'Choque electricidad paralizante', 'Magia ofensiva'),
('Espada Llamanete', 'Arma fuego mortal', 'Ataque físico'),
('Teletransportación', 'Movimiento espacio instantáneo', 'Habilidad de movimiento'),
('Invocación de Bestias', 'Llamado criaturas poderosas', 'Magia invocadora'),
('Tormenta de Hielo', 'Viento frío congelante', 'Magia ofensiva'),
('Puño de Hierro', 'Golpe fuerza extrema', 'Ataque físico'),
('Camuflaje Fantasma', 'Invisibilidad temporaria perfecta', 'Habilidad de sigilo'),
('Luz Sagrada', 'Iluminación pura curativa', 'Magia curativa'),
('Control Mental', 'Manipulación pensamientos ajenos', 'Magia de control'),
('Filo Espectral', 'Espada etérea que atraviesa la materia', 'Ataque físico'),
('Explosión Solar', 'Ráfaga de luz ardiente', 'Magia ofensiva'),
('Muro de Energía', 'Barrera impenetrable mágica', 'Defensa mágica'),
('Lanza Relámpago', 'Proyectil eléctrico de alta velocidad', 'Magia ofensiva'),
('Corte Veloz', 'Ataque con velocidad cegadora', 'Ataque físico'),
('Regeneración Vital', 'Curación progresiva con el tiempo', 'Magia curativa'),
('Sombra Fugaz', 'Desplazamiento instantáneo entre sombras', 'Habilidad de movimiento'),
('Aura de Resistencia', 'Aumento de defensa a aliados', 'Defensa mágica'),
('Meteorito Arcano', 'Invocación de roca mágica devastadora', 'Magia ofensiva'),
('Frenesí de Batalla', 'Incremento de fuerza temporal', 'Ataque físico'),
('Cadenas Etéreas', 'Restricción mágica inmovilizante', 'Magia de control'),
('Llamada del Dragón', 'Invocación de dragón aliado', 'Magia invocadora'),
('Garra de Fuego', 'Ataque con llamas infernales', 'Ataque físico'),
('Campo de Fuerza', 'Escudo energético protector', 'Defensa mágica'),
('Explosión Umbral', 'Descarga de energía oscura', 'Magia ofensiva'),
('Salto Dimensional', 'Teletransportación a corta distancia', 'Habilidad de movimiento'),
('Resonancia Arcana', 'Amplificación del poder mágico', 'Magia de apoyo'),
('Oleada de Viento', 'Empuje de ráfaga de aire', 'Magia ofensiva'),
('Bendición Lunar', 'Sanación progresiva y protección', 'Magia curativa'),
('Veneno Paralizante', 'Toxina que inmoviliza al enemigo', 'Ataque sigiloso'),
('Sello Maldito', 'Marcado con energía oscura debilitante', 'Magia de control'),
('Huracán Espiritual', 'Viento fantasmal que daña a los enemigos', 'Magia ofensiva'),
('Carga Titánica', 'Embestida con fuerza descomunal', 'Ataque físico'),
('Maldición de la Niebla', 'Reducción de visión y precisión', 'Magia de control'),
('Explosión Tóxica', 'Nube venenosa de amplio alcance', 'Magia ofensiva');

INSERT INTO Mascota (Nombre, Descripcion, Tipo) VALUES
('Luna', 'Misteriosa y elegante', 'Felino'),
('Sparky', 'Enérgico y juguetón', 'Canino'),
('Shadow', 'Sigiloso y fiel', 'Felino'),
('Drake', 'Fuerte y valiente', 'Dragón'),
('Fang', 'Afilado y protector', 'Canino'),
('Pixel', 'Pequeño y curioso', 'Roedor'),
('Blaze', 'Ardiente y rápido', 'Fénix'),
('Nimbus', 'Ligero y etéreo', 'Espíritu'),
('Frost', 'Frío y sereno', 'Elemental de hielo'),
('Bolt', 'Veloz y electrizante', 'Canino'),
('Raven', 'Oscuro y astuto', 'Cuervo'),
('Zephyr', 'Fresco y suave', 'Espíritu de viento'),
('Ember', 'Caliente y brillante', 'Elemental de fuego'),
('Whiskers', 'Suave y alerta', 'Felino'),
('Nova', 'Radiante y poderosa', 'Ser celestial'),
('Titan', 'Grande y protector', 'Canino'),
('Eclipse', 'Misterioso y majestuoso', 'Felino'),
('Brisa', 'Ágil y libre', 'Espíritu de viento'),
('Pyro', 'Feroz y ardiente', 'Elemental de fuego'),
('Aurora', 'Mágica y resplandeciente', 'Ser celestial'),
('Glacius', 'Imponente y gélido', 'Elemental de hielo'),
('Storm', 'Indomable y tempestuoso', 'Espíritu'),
('Echo', 'Enigmático y sigiloso', 'Lobo espiritual'),
('Nyx', 'Oscuro y enigmático', 'Felino'),
('Thunder', 'Poderoso y electrizante', 'Dragón del trueno'),
('Pebbles', 'Pequeño pero valiente', 'Roedor'),
('Sol', 'Brillante y cálido', 'Ser celestial'),
('Flint', 'Resistente y astuto', 'Zorro'),
('Vortex', 'Turbulento y veloz', 'Elemental de aire'),
('Gale', 'Ligero como el viento', 'Espíritu'),
('Rocky', 'Firme y fuerte', 'Golem de piedra'),
('Borealis', 'Brilla con luces mágicas', 'Ser celestial'),
('Cinder', 'Pequeño pero ardiente', 'Fénix'),
('Shadowfang', 'Leal y sombrío', 'Canino'),
('Zeus', 'Majestuoso y poderoso', 'Dragón'),
('Tundra', 'Frío y resistente', 'Oso polar'),
('Inferno', 'Feroz y destructivo', 'Dragón de fuego'),
('Specter', 'Sombrío y etéreo', 'Espíritu'),
('Onyx', 'Oscuro y elegante', 'Felino'),
('Emberpaw', 'Pequeño pero ardiente', 'Canino');


INSERT INTO Objeto (Nombre, Descripcion, Valor) VALUES 
('Espada', 'Arma afilada', 654),
('Escudo', 'Protección fuerte', 123),
('Poción', 'Líquido mágico', 4),
('Cofre', 'Caja de tesoro', 54),
('Armadura', 'Protección sólida', 66),
('Llave', 'Abre puertas', 88),
('Mapa', 'Guía detallada', 77),
('Anillo', 'Joya pequeña', 45),
('Lanza', 'Arma larga', 22),
('Botas', 'Calzado robusto', 19),
('Guantes', 'Protección manos', 84),
('Cinturón', 'Accesorio cintura', 87),
('Arco', 'Arma proyectil', 52),
('Flecha', 'Proyectil afilado', 98),
('Elixir', 'Bebida poderosa', 100),
('Daga', 'Corta pero letal', 34),
('Casco', 'Protección para la cabeza', 120),
('Báculo', 'Canalizador de magia', 210),
('Tomo Arcano', 'Libro de conjuros', 320),
('Collar', 'Joya encantada', 250),
('Gema Mística', 'Cristal con poder oculto', 500),
('Pergamino', 'Contiene hechizos', 150),
('Martillo de Guerra', 'Arma pesada', 275),
('Poción de Vida', 'Restaura salud', 50),
('Poción de Maná', 'Recupera energía mágica', 60),
('Cetro Real', 'Símbolo de poder', 1000),
('Espejo Encantado', 'Revela verdades ocultas', 400),
('Capa de Sombras', 'Otorga sigilo', 600),
('Llave Dorada', 'Abre puertas secretas', 200),
('Orbe de Luz', 'Brilla en la oscuridad', 180),
('Máscara', 'Oculta la identidad', 75),
('Brújula', 'Indica la dirección', 90),
('Cuerda', 'Útil en aventuras', 25),
('Antorcha', 'Ilumina el camino', 15),
('Piedra Filosofal', 'Misteriosa y poderosa', 999),
('Espada Maldita', 'Posee un poder oscuro', 850),
('Cruz de Plata', 'Protege contra el mal', 300),
('Anillo de Poder', 'Incrementa habilidades', 700),
('Guantelete de Titanio', 'Fuerza mejorada', 650),
('Cristal Elemental', 'Concentra energías mágicas', 500);

INSERT INTO Usuario_Habilidad (ID_Usuario, ID_Habilidad) VALUES 
(1, 6),
(5, 5),
(7, 4),
(4, 7),
(9, 9),
(6, 8),
(13, 11),
(15, 10),
(14, 12),
(11, 15),
(12, 14),
(10, 13),
(3, 2),
(2, 1),
(8, 3),
(16, 22),
(17, 33),
(18, 7),
(19, 40),
(20, 13),
(21, 6),
(22, 18),
(23, 9),
(24, 28),
(25, 26),
(26, 35),
(27, 19),
(28, 2),
(29, 31),
(30, 14),
(31, 24),
(32, 8),
(33, 23),
(34, 34),
(35, 21),
(36, 5),
(37, 10),
(38, 11),
(39, 15),
(40, 12);

INSERT INTO Usuario_Objeto (ID_Usuario, ID_Objeto) VALUES 
(2, 1),
(3, 9),
(5, 8),
(7, 5),
(4, 6),
(8, 3),
(9, 2),
(6, 4),
(1, 7),
(11, 10),
(15, 12),
(13, 14),
(12, 13),
(14, 15),
(10, 11),
(16, 25),
(17, 30),
(18, 2),
(19, 19),
(20, 37),
(21, 11),
(22, 6),
(23, 34),
(24, 13),
(25, 28),
(26, 9),
(27, 40),
(28, 24),
(29, 22),
(30, 16),
(31, 5),
(32, 20),
(33, 8),
(34, 27),
(35, 18),
(36, 1),
(37, 33),
(38, 12),
(39, 23),
(40, 15);

INSERT INTO Usuario_Mascota (ID_Usuario, ID_Mascota) VALUES 
(9, 5),
(8, 2),
(7, 8),
(5, 7),
(4, 1),
(1, 4),
(1, 9),
(2, 3),
(3, 6),
(6, 13),
(14, 11),
(12, 15),
(10, 14),
(11, 10),
(15, 13),
(16, 35),
(17, 6),
(18, 19),
(19, 8),
(20, 14),
(21, 22),
(22, 31),
(23, 40),
(24, 13),
(25, 9),
(26, 25),
(27, 18),
(28, 29),
(29, 3),
(30, 24),
(31, 12),
(32, 17),
(33, 16),
(34, 30),
(35, 11),
(36, 7),
(37, 4),
(38, 28),
(39, 33),
(40, 15);

INSERT INTO Usuario_Amigo (ID_Usuario, ID_Amigo) VALUES 
(1, 6),
(5, 7),
(9, 4),
(7, 1),
(3, 2),
(8, 3),
(4, 5),
(2, 8),
(6, 9),
(11, 14),
(14, 10),
(15, 11),
(12, 15),
(13, 12),
(10, 13),
(16, 33),
(17, 6),
(18, 20),
(19, 28),
(20, 25),
(21, 19),
(22, 30),
(23, 31),
(24, 8),
(25, 40),
(26, 10),
(27, 21),
(28, 32),
(29, 36),
(30, 12),
(31, 23),
(32, 35),
(33, 13),
(34, 22),
(35, 14),
(36, 15),
(37, 29),
(38, 26),
(39, 24),
(40, 34);

-- DISTINCT
-- Selecciona valores únicos de la columna Nombre en Mascota
SELECT DISTINCT Nombre FROM Mascota;

-- Selecciona valores únicos de la columna Valor en Objeto
SELECT DISTINCT Valor FROM Objeto;

-- Selecciona valores únicos de la columna Tipo en Habilidad
SELECT DISTINCT Tipo FROM Habilidad;

-- LIMIT
-- Limita la cantidad de registros a 10 en la tabla Amigo
SELECT * FROM Amigo LIMIT 10;

-- Limita la cantidad de registros a 25 en la tabla Habilidad
SELECT * FROM Habilidad LIMIT 25;

-- Limita la cantidad de registros a 31 en la tabla Usuario
SELECT * FROM Usuario LIMIT 31;

-- ORDER BY
-- Ordena las habilidades por Tipo en orden ascendente
SELECT * FROM habilidad ORDER BY Tipo ASC;

-- Ordena los objetos por Valor en orden ascendente
SELECT * FROM Objeto ORDER BY Valor ASC;

-- Ordena los usuarios por Nombre en orden descendente
SELECT * FROM Usuario ORDER BY Nombre DESC;

-- Operadores de comparación:
-- =
-- Selecciona habilidades donde el Tipo es exactamente 'Ataque físico'
SELECT * FROM Habilidad WHERE Tipo = 'Ataque físico';

-- <>
-- Selecciona objetos donde el valor es distinto de '500'
SELECT * FROM Objeto WHERE Valor <> '500';

-- >
-- Selecciona amigos donde el ID es mayor que 10
SELECT * FROM Amigo WHERE ID > 10;

-- LIKE
-- Selecciona amigos donde la Descripción contiene 'Fuerte'
SELECT * FROM Amigo WHERE Descripcion LIKE '%Fuerte%';

-- Selecciona objetos cuyo nombre termina con 'a'
SELECT * FROM Objeto WHERE Nombre LIKE '%a';

-- Selecciona usuarios cuya descripción comienza con 'S'
SELECT * FROM Usuario WHERE Descripcion LIKE 'S%';

-- BETWEEN
-- Selecciona amigos donde el ID esté entre 10 y 30 (inclusive)
SELECT * FROM Amigo WHERE ID BETWEEN 10 and 30;

-- Selecciona objetos donde el valor esté entre 100 y 700 (inclusive)
SELECT * FROM Objeto WHERE Valor BETWEEN 100 AND 700;

-- Selecciona habilidades donde el ID esté entre 14 y 29 (inclusive)
SELECT * FROM Habilidad WHERE ID BETWEEN 14 AND 29;

-- AND
-- Selecciona registros de Usuario_Amigo donde ambos ID son mayores a 10 y 30, respectivamente
SELECT * FROM Usuario_Amigo WHERE ID_Usuario > 10 AND ID_Amigo > 30;

-- Selecciona objetos donde el valor esté entre 100 y 300 (exclusivo)
SELECT * FROM Objeto WHERE Valor > 100 AND Valor < 300;

-- Selecciona mascotas de tipo 'Felino' y con ID mayor a 35
SELECT * FROM Mascota WHERE Tipo = 'Felino' AND ID > 35;

-- OR
-- Selecciona objetos con valor menor a 200 o ID mayor a 30
SELECT * FROM Objeto WHERE Valor < 200 OR ID > 30;

-- Selecciona usuarios con ID igual a 10 o 20
SELECT * FROM Usuario WHERE ID = 10 OR ID = 20;

-- Selecciona mascotas de tipo 'Canino' o con ID mayor a 30
SELECT * FROM Mascota WHERE Tipo = 'Canino' OR ID > 30;

-- NOT
-- Selecciona objetos cuyo valor no sea mayor a 500
SELECT * FROM Objeto WHERE NOT VALOR > 500;

-- Selecciona mascotas cuyo tipo no sea 'Ser celestial'
SELECT * FROM Mascota WHERE NOT Tipo = 'Ser celestial';

-- Selecciona usuarios cuya descripción no sea nula
SELECT * FROM Usuario WHERE Descripcion IS NOT NULL;

-- IN
-- Selecciona objetos cuyo valor esté en la lista (100, 200, 500)
SELECT * FROM Objeto WHERE Valor IN (100, 200, 500);

-- Selecciona mascotas cuyo tipo sea 'Felino' o 'Canino'
SELECT * FROM Mascota WHERE Tipo IN ('Felino', 'Canino');

-- Selecciona habilidades con ID en la lista (1, 4, 7, 12)
SELECT * FROM Habilidad WHERE ID IN (1, 4, 7 , 12);

-- Operaciones matemáticas:
-- +
-- Suma 10 al ID de los usuarios cuya ID sea mayor a 30
SELECT ID AS Viejo_ID, ID + 10 AS NuevoID, Nombre FROM Usuario WHERE ID > 30;

-- -
-- Resta 10 al ID de los usuarios cuya ID sea mayor a 20
SELECT ID AS Viejo_ID, ID - 10 AS NuevoID, Nombre FROM Usuario WHERE ID > 20;

-- *
-- Duplica el valor de los objetos
SELECT Nombre, Valor AS ValorViejo, Valor * 2 AS ValorNuevo FROM Objeto;

-- MIN
-- Selecciona el nombre del objeto y su valor mínimo
SELECT Nombre, MIN(Valor) AS Valor FROM Objeto;

-- Selecciona el ID mínimo y el nombre de los usuarios
SELECT MIN(ID) AS IDMinimo, Nombre FROM Usuario;

-- Selecciona el ID mínimo y el nombre de las habilidades
SELECT MIN(ID) AS IDMinimo, Nombre FROM Habilidad;

-- MAX
-- Selecciona el nombre del objeto y su valor máximo
SELECT Nombre, MAX(Valor) AS Valor FROM Objeto;

-- Selecciona el ID máximo y el nombre de los amigos
SELECT MAX(ID) AS IDMinimo, Nombre FROM Amigo;

-- Selecciona el ID máximo y el nombre de las mascotas
SELECT MAX(ID) AS IDMinimo, Nombre FROM Mascota;

-- COUNT
-- Cuenta el número total de usuarios
SELECT COUNT(*) AS TotalJugadores FROM Usuario;

-- Cuenta la cantidad de objetos cuyo valor es mayor que 500
SELECT COUNT(*) AS CantidadObjetos FROM Objeto WHERE Valor > 500;

-- Cuenta la cantidad de mascotas de tipo 'Felino'
SELECT COUNT(*) AS CantidadMascotas FROM Mascota WHERE Tipo = 'Felino';

-- SUM
-- Suma el valor de los objetos
SELECT SUM(Valor) TotalPrecio FROM Objeto;

-- Suma los ID de los usuarios
SELECT SUM(ID) AS SumaID FROM Usuario;

-- Suma el valor de los objetos cuyo valor es menor a 500
SELECT SUM(Valor) TotalPrecio FROM Objeto WHERE Valor < 500;

-- AVG
-- Calcula el precio promedio de los objetos
SELECT AVG(Valor) AS PrecioPromedio FROM Objeto;

-- Calcula el ID promedio de los amigos
SELECT AVG(ID) IDPromedio FROM Amigo;

-- Calcula el precio promedio de los objetos cuyo valor esté entre 200 y 500
SELECT AVG(Valor) PrecioPromedio FROM Objeto WHERE Valor BETWEEN 200 AND 500;

-- ALIAS
-- Selecciona el nombre y valor de los objetos con alias 'Precio'
SELECT Nombre, Valor AS Precio FROM Objeto;

-- Selecciona el ID y nombre de los usuarios con alias 'Usuario'
SELECT ID, Nombre AS Usuario FROM Usuario;

-- Selecciona el ID y nombre de las habilidades con alias 'Habilidad'
SELECT ID, Nombre AS Habilidad FROM Habilidad;

-- CONCAT
-- Concatenar Nombre y Descripción de los objetos
SELECT CONCAT(Nombre, ' - ' ,Descripcion) AS NombreDescripcion FROM Objeto;

-- Concatenar Nombre y Tipo de las mascotas
SELECT CONCAT (Nombre, ' - ' ,Tipo) AS MascotaTipo FROM Mascota;

-- Concatenar Nombre y Valor de los objetos
SELECT CONCAT (Nombre, ' - ' ,Valor) AS ObjetoPrecio FROM Objeto;

-- UPPER
-- Convierte el Nombre de los objetos a mayúsculas
SELECT UPPER(Nombre) AS Nombre ,Descripcion FROM Objeto;

-- Convierte el Nombre de los usuarios a mayúsculas
SELECT UPPER(Nombre) AS Nombre, ID FROM Usuario;

-- Convierte el Nombre de las mascotas a mayúsculas
SELECT UPPER(Nombre) AS Nombre, Tipo FROM Mascota;

-- LOWER
-- Convierte el Nombre de los objetos a minúsculas
SELECT LOWER(Nombre) AS Nombre ,Descripcion FROM Objeto;

-- Convierte el Nombre de los usuarios a minúsculas
SELECT LOWER(Nombre) AS Nombre, ID FROM Usuario;

-- Convierte el Nombre de las mascotas a minúsculas
SELECT LOWER(Nombre) AS Nombre, Tipo FROM Mascota;

-- OFFSET
-- Limita a 5 registros empezando desde el registro 20 en Objeto
SELECT * FROM Objeto LIMIT 5 OFFSET 20;

-- Limita a 15 registros empezando desde el registro 5 en Usuario
SELECT * FROM Usuario LIMIT 15 OFFSET 5;

-- Limita a 10 registros empezando desde el registro 30 en Mascota
SELECT * FROM Mascota LIMIT 10 OFFSET 30;

-- GROUP BY
-- Agrupa los objetos por Valor y cuenta cuántos objetos tienen cada valor
SELECT Valor, COUNT(Valor) AS CantidadValores FROM Objeto GROUP BY Valor;

-- Agrupa las mascotas por Tipo y cuenta cuántas mascotas hay por tipo
SELECT Tipo, COUNT(Tipo) AS CantidadTipo FROM Mascota GROUP BY Tipo;

-- Agrupa las habilidades por Tipo y cuenta cuántas habilidades hay por tipo
SELECT Tipo, COUNT(Tipo) AS CantidadHabilidad FROM Habilidad GROUP BY Tipo;

-- HAVING
-- Agrupa las habilidades por Tipo y solo selecciona aquellos con más de 3 habilidades
SELECT Tipo, COUNT(Tipo) AS CantidadHabilidad FROM Habilidad GROUP BY Tipo HAVING CantidadHabilidad > 3;

-- Agrupa los objetos por Valor y solo selecciona aquellos cuyo valor es mayor a 499
SELECT Valor, COUNT(Valor) AS CantidadValores FROM Objeto GROUP BY Valor HAVING Valor > 499;

-- Agrupa las mascotas por Tipo y solo selecciona aquellos tipos con más de 4 mascotas
SELECT Tipo, COUNT(Tipo) AS CantidadTipo FROM Mascota GROUP BY Tipo HAVING CantidadTipo > 4;

-- CASE
-- Agrupa las habilidades por Tipo y clasifica su cantidad como 'Abundante', 'Normal' o 'Escasa'
SELECT Tipo, COUNT(Tipo) AS CantidadHabilidad,
CASE 
	WHEN COUNT(Tipo) > 4 THEN 'Abundante'
    WHEN COUNT(Tipo) > 2 THEN 'Normal'
    ELSE 'Escasa'
END AS 'Estado'
FROM Mascota
GROUP BY Tipo;

-- Clasifica los objetos según su valor como 'Caro', 'Normal' o 'Barato'
SELECT Nombre, Valor,
CASE
	WHEN Valor > 500 THEN 'Caro'
    WHEN Valor > 200 THEN 'Normal'
    ELSE 'Barato'
END AS Categoria
FROM Objeto;

-- Agrupa las habilidades por Tipo y clasifica su cantidad como 'Abundante', 'Normal' o 'Poco'
SELECT Tipo, COUNT(Tipo) AS CantidadHabilidad,
CASE 
	WHEN COUNT(Tipo) > 10 THEN 'Abundante'
    WHEN COUNT(Tipo) > 4 THEN 'Normal'
    ELSE 'Poco'
END AS Estado
FROM Habilidad
GROUP BY Tipo;

-- IFNULL
-- Si la descripción de los usuarios es nula, reemplázala por 'Sin descripcion'
SELECT Nombre, IFNULL(Descripcion, 'Sin descripcion') AS Descripcion FROM Usuario;

-- Si la descripción de los amigos es nula, reemplázala por 'No proporcionada'
SELECT Nombre, IFNULL(Descripcion, 'No proporcionada') AS Descripcion FROM Amigo;

-- Si la descripción de los usuarios con ID mayor a 30 es nula, reemplázala por 'Expulsado'
SELECT ID, Nombre, IFNULL(Descripcion, 'Expulsado') AS Descripcion FROM Usuario WHERE ID > 30;

-- Inner Join
SELECT  u1.Nombre AS NombreUsuario, a1.Nombre AS NombreAmigo FROM Usuario AS u1 
INNER JOIN Usuario_Amigo u2 ON u1.ID = u2.ID_Usuario INNER JOIN Amigo a1 ON a1.ID = u2.ID_Amigo;

SELECT u1.Nombre AS NombreUsuario, h1.Nombre AS NombreHabilidad, h1.Descripcion FROM Usuario AS u1 
INNER JOIN Usuario_Habilidad u2 ON u1.ID = u2.ID_Usuario INNER JOIN Habilidad h1 ON h1.ID = u2.ID_Habilidad;

-- Right Join
SELECT u1.Nombre AS NombreUsuario,m1.Nombre AS NombreMascota, m1.Tipo FROM Usuario AS u1 
RIGHT JOIN Usuario_Mascota u2 ON u1.ID = u2.ID_Usuario RIGHT JOIN Mascota m1 ON m1.ID = u2.ID_Mascota;

SELECT u1.Nombre AS NombreUsuario, o1.Nombre, o1.Descripcion FROM Usuario AS u1 
RIGHT JOIN Usuario_Objeto u2 ON u1.ID = u2.ID_Usuario RIGHT JOIN Objeto o1 ON o1.ID = u2.ID_Objeto;

-- Left Join
SELECT u1.Nombre AS NombreUsuario, h1.Nombre AS NombreHabilidad, h1.Descripcion FROM Usuario AS u1 
LEFT JOIN Usuario_Habilidad u2 ON u1.ID = u2.ID_Usuario LEFT JOIN Habilidad h1 ON h1.ID = u2.ID_Habilidad;

SELECT u1.Nombre AS NombreUsuario,m1.Nombre AS NombreMascota, m1.Tipo FROM Usuario AS u1 
LEFT JOIN Usuario_Mascota u2 ON u1.ID = u2.ID_Usuario LEFT JOIN Mascota m1 ON m1.ID = u2.ID_Mascota;

-- Subquery
-- Mostrar los nombres de los usuarios que tienen al menos una habilidad de tipo 'Magia ofensiva'.
SELECT u.Nombre FROM usuario u WHERE u.ID IN 
(SELECT uh.ID_Usuario FROM usuario_habilidad uh WHERE uh.ID_Habilidad IN
(SELECT h.ID FROM habilidad h WHERE h.Tipo = 'Magia ofensiva'));

-- Listar los nombres de las mascotas que pertenecen a usuarios que poseen el objeto llamado 'Espada Maldita'.
SELECT m.Nombre FROM mascota m WHERE m.ID IN
(SELECT um.ID_Mascota FROM usuario_mascota um WHERE um.ID_Usuario IN
(SELECT u.ID FROM usuario u WHERE u.ID IN
(SELECT uo.ID_Objeto FROM usuario_objeto uo WHERE uo.ID_Usuario IN
(SELECT o.ID FROM objeto o WHERE o.Nombre = 'Espada Maldita'))));

-- Obtener los nombres de los amigos que están relacionados con usuarios que tienen más de una habilidad registrada.
SELECT a.Nombre FROM amigo a WHERE a.ID IN
(SELECT ua.ID_Amigo FROM usuario_amigo ua WHERE ua.ID_Usuario IN 
(SELECT u.ID FROM usuario u WHERE u.ID IN
(SELECT uh.ID_Usuario FROM usuario_habilidad uh GROUP BY uh.ID_Usuario HAVING COUNT(ID_Habilidad) > 0)));
#No hay usuarios con mas de una habilidad

-- Mostrar los nombres de los usuarios que no tienen ninguna mascota asignada.
SELECT u.Nombre FROM usuario u WHERE u.ID NOT IN
(SELECT um.ID_Usuario FROM usuario_mascota um);

-- Listar los objetos cuyo valor es mayor al valor promedio de todos los objetos.
SELECT o.Nombre FROM objeto o WHERE Valor > 
(SELECT AVG(Valor) FROM objeto);
