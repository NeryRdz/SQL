USE SAKILA;

-- Crear un procedimiento que reciba el customer_id y devuelva el nombre completo (first_name + last_name) como salida.
DELIMITER $$
CREATE PROCEDURE  Nombre_Cliente (
	IN p_customer_id SMALLINT,
	OUT NombreCompleto VARCHAR(100)
)
BEGIN
	SELECT CONCAT(first_name, ' ', last_name) INTO NombreCompleto
	FROM customer c WHERE c.customer_id = p_customer_id;
END $$
DELIMITER ;
CALL Nombre_Cliente(1,@NombreCompleto);
SELECT @NombreCompleto;

-- Crear un procedimiento que reciba el nombre de una categoría (por ejemplo, 'Action') y devuelva cuántas películas hay en esa categoría.
DELIMITER $$
CREATE PROCEDURE PelisPorCategoria (
	IN category VARCHAR(45),
	OUT cantidad_pelis INT
)
BEGIN
	SELECT COUNT(f.film_id) INTO cantidad_pelis FROM film f
    INNER JOIN film_category fa ON f.film_id = fa.film_id
    INNER JOIN category c ON fa.category_id = c.category_id
	WHERE c.name = category;
END $$
DELIMITER ;
CALL PelisPorCategoria('Action',@cantidad_pelis);
SELECT @cantidad_pelis;

-- Crear un procedimiento que reciba un customer_id y devuelva 1 si existe, o 0 si no.
DELIMITER $$
CREATE PROCEDURE ExistenciaCliente (
	IN p_customer_id INT,
	OUT existencia INT
)
BEGIN
	SELECT COUNT(customer_id) INTO existencia FROM customer c
    WHERE c.customer_id = p_customer_id;
    IF existencia > 0 THEN
		SET existencia = 1;
	ELSE
		SET existencia = 0;
	END IF;
END$$
DELIMITER ;
CALL ExistenciaCliente(500,@existencia);
SELECT @existencia;

-- Crear un procedimiento que reciba un número (min_duracion) y muestre todas las películas que duran más que ese valor.
DELIMITER $$
CREATE PROCEDURE Peliculas (
	IN min_duracion INT
)
BEGIN
	SELECT f.title  FROM film f
    WHERE f.length > min_duracion;
END$$
DELIMITER ;

CALL Peliculas(120);

-- Crear un procedimiento que reciba el customer_id y devuelva una lista de títulos de películas que ha rentado.
DELIMITER $$
CREATE PROCEDURE PeliculasRentadas (
	IN p_customer_id INT
)
BEGIN
	SELECT DISTINCT f.title FROM film f
    INNER JOIN inventory i ON f.film_id = i.film_id
    INNER JOIN rental r ON i.inventory_id = r.inventory_id
    WHERE r.customer_id = p_customer_id
    ORDER BY f.title ASC;
END$$
DELIMITER ;
CALL PeliculasRentadas(3);

-- Crear un procedimiento que reciba el store_id y devuelva el total de dinero generado por esa tienda.
DELIMITER $$
CREATE PROCEDURE GananciaTienda (
	IN p_store_id INT,
	OUT ganancia FLOAT
)
BEGIN
	SELECT SUM(amount) INTO ganancia FROM payment p
    INNER JOIN staff s  ON p.staff_id = s.staff_id
    WHERE s.store_id = p_store_id;
END$$
DELIMITER ;
CALL GananciaTienda(1,@ganancia);
SELECT @ganancia;

-- Crear un procedimiento que reciba el film_id y devuelva el número de copias disponibles en la tabla inventory.
DELIMITER $$
CREATE PROCEDURE CopiasPeliculas (
	IN p_film_id INT,
	OUT cantidad INT
)
BEGIN
	SELECT COUNT(i.inventory_id) INTO cantidad FROM inventory i 
    WHERE i.film_id = p_film_id;
END$$
DELIMITER ;
CALL CopiasPeliculas(55,@cantidad);
SELECT @cantidad;

-- Crear un procedimiento que reciba el film_id y muestre una lista con los nombres de los actores que participan en esa película.
DELIMITER $$
CREATE PROCEDURE ActorPelicula (
	IN p_film_id INT
)
BEGIN
	SELECT CONCAT(a.first_name, '', a.last_name) AS NombreCompleto FROM actor a 
    INNER JOIN film_actor fa ON a.actor_id = fa.actor_id
    WHERE fa.film_id = p_film_id;
END$$
DELIMITER ;
CALL ActorPelicula(2);

-- Recibir el customer_id y devolver el correo electrónico del cliente.
DELIMITER $$
CREATE PROCEDURE CorreoCliente (
	IN p_customer_id INT,
	OUT correo VARCHAR(60)
)
BEGIN
	SELECT c.email INTO correo FROM customer c
    WHERE c.customer_id = p_customer_id;
END$$
DELIMITER ;
CALL CorreoCliente(15,@correo);
SELECT @correo;

-- Recibir el nombre de una ciudad y devolver cuántos clientes viven ahí.
DELIMITER $$
CREATE PROCEDURE CiudadClientes (
	IN ciudad VARCHAR(45),
	OUT cantidad INT
)
BEGIN
	SELECT COUNT(c.customer_id) INTO cantidad FROM customer c
    INNER JOIN address a ON c.address_id = a.address_id
    INNER JOIN city c2 ON a.city_id = c2.city_id
    WHERE c2.city = ciudad;
END$$
DELIMITER ;

SET @cantidad = 0;
CALL CiudadClientes('Abha',@cantidad);
SELECT @cantidad;

-- Recibir la clasificación (rating, como 'PG' o 'R') y mostrar las películas con esa clasificación.
DELIMITER $$
CREATE PROCEDURE ClasificacionPelicula (
	IN clasificacion VARCHAR(45)
)
BEGIN
	SELECT f.title FROM film f
    WHERE f.rating = clasificacion;
END$$
DELIMITER ;
CALL ClasificacionPelicula('PG');

-- Recibir el estado (activo o inactivo) y mostrar la lista de clientes.
DELIMITER $$
CREATE PROCEDURE ActividadCliente (
	IN estado INT
)
BEGIN
	SELECT CONCAT(c.first_name, ' ',c.last_name) AS NombreCompleto 
    FROM customer c
    WHERE c.active = estado ORDER BY NombreCompleto ASC;
END$$
DELIMITER ;
CALL ActividadCliente(0);

-- Recibir un número y mostrar las películas con duración menor a ese valor.
DELIMITER $$
CREATE PROCEDURE PeliculasMenorDuracion (
	IN min_duracion INT
)
BEGIN
	SELECT f.title  FROM film f
    WHERE f.length < min_duracion;
END$$
DELIMITER ;
CALL PeliculasMenorDuracion(60);

-- Recibir una fecha y listar los clientes registrados después de esa fecha.
DROP PROCEDURE ClientesRegistrados;
DELIMITER $$
CREATE PROCEDURE ClientesRegistrados (
	IN fecha DATE
)
BEGIN
	SELECT CONCAT(c.first_name, ' ',c.last_name) AS NombreCompleto 
    FROM customer c
    WHERE c.create_date > fecha ORDER BY c.create_date;
END$$
DELIMITER ;
CALL ClientesRegistrados('2005-11-20');

-- Recibir un store_id y mostrar todas las películas disponibles en esa tienda.
DROP PROCEDURE PeliculasTienda;
DELIMITER $$
CREATE PROCEDURE PeliculasTienda (
	IN p_store_id INT
)
BEGIN
	SELECT DISTINCT f.title FROM film f 
    INNER JOIN inventory i ON f.film_id = i.film_id
    WHERE i.store_id = p_store_id ORDER BY f.title ASC;
END$$
DELIMITER ;
CALL PeliculasTienda(2);
