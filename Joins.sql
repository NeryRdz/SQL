USE SAKILA;
# 1. Muestra los títulos de todas las películas junto con el nombre de la categoría a la que pertenecen.
SELECT f.title AS Titulo, c.name AS Categoria
FROM film f
INNER JOIN film_category fc ON f.film_id = fc.film_id
INNER JOIN category c ON fc.category_id = c.category_id;

# 2. Lista todas las películas con el idioma en que están habladas. Si alguna película no tiene idioma, muestra "NULL".
SELECT f.film_id, f.title AS Titulo, l.name AS Idioma
FROM film f
LEFT JOIN language l ON f.language_id = l.language_id;

# 3, Muestra todas las categorías, y si tienen películas, el número de películas en esa categoría. Si no tienen, muestra 0.
SELECT c.category_id, c.name AS Categoria, COUNT(f.film_id) AS CantidadPeliculas
FROM category c
LEFT JOIN film_category fc ON c.category_id = fc.category_id
LEFT JOIN film f ON fc.film_id = f.film_id
GROUP BY c.category_id ORDER BY c.category_id ASC;

# 4. Lista todos los clientes y cuánto dinero han pagado en total. Si no han hecho pagos, muestra 0.
SELECT c.customer_id, CONCAT(c.first_name, ' ', c.last_name) AS NombreCompleto, IFNULL(SUM(p.amount),0) AS PagosTotales
FROM customer c
LEFT JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, NombreCompleto ORDER BY c.customer_id;

# 5. Muestra todas las direcciones y, si hay una tienda en esa dirección, muestra su ID.
SELECT a.address AS Domilicio, s.store_id
FROM address a
LEFT JOIN store s ON a.address_id = s.address_id
ORDER BY a.address ASC;

# 6. Muestra la fecha de renta y el título de la película que fue rentada.
SELECT r.rental_date AS FechaDeRenta, f.title AS Titulo
FROM rental r
INNER JOIN inventory i ON r.inventory_id = i.inventory_id
INNER JOIN film f ON i.film_id = f.film_id
ORDER BY r.rental_date;

# 7. Lista todos los empleados y la tienda en la que trabajan. Si algún empleado no tiene tienda asignada, muestra NULL.
SELECT s.staff_id, CONCAT(s.first_name, ' ', s.last_name) AS NombreCompleto, s2.store_id
FROM staff s
LEFT JOIN store s2 ON s.store_id = s2.store_id
ORDER BY s.staff_id;

# 8. Muestra todas las ciudades y la cantidad de clientes que viven en ellas. Si no hay clientes, muestra 0.
SELECT c.city AS Ciudad, COUNT(c2.customer_id) AS CantidadClientes
FROM city c
LEFT JOIN address a ON c.city_id = a.city_id
LEFT JOIN customer c2 ON a.address_id = c2.address_id
GROUP BY c.city ORDER BY c.city ASC;

# 9. Lista los clientes junto con las películas que han rentado.
SELECT c.customer_id, CONCAT(c.first_name, ' ', c.last_name) AS NombreCompleto,
f.title AS Pelicula
FROM customer c
INNER JOIN rental r ON c.customer_id = r.customer_id
INNER JOIN inventory i ON r.inventory_id = i.inventory_id
INNER JOIN film f ON i.film_id = f.film_id
ORDER BY c.customer_id ASC;

# 10. Muestra todas las películas y cuántas veces han sido rentadas. Incluye las que nunca se han rentado.
SELECT f.film_id, f.title AS Pelicula, COUNT(r.rental_id) AS CantidadRentas
FROM film f
LEFT JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.film_id,f.title ORDER BY f.film_id ASC;

# 11. Muestra todos los actores junto con la cantidad de películas en las que han actuado. Si un actor no ha actuado en ninguna película, mostrar 0.
SELECT a.actor_id, CONCAT(a.first_name, ' ',a.last_name) AS NombreCompleto, COUNT(f.film_id) AS CantidadPeliculas
FROM actor a
LEFT JOIN film_actor fa ON a.actor_id = fa.actor_id
LEFT JOIN film f ON fa.film_id = f.film_id
GROUP BY a.actor_id, NombreCompleto ORDER BY a.actor_id ASC;

# 12. Muestra todas las tiendas, incluso si no tienen empleados asignados, junto con la cantidad de empleados que trabajan en cada una.
SELECT s.store_id AS Tienda, COUNT(s2.staff_id) AS Empleados
FROM store s
LEFT JOIN staff s2 ON s.store_id = s2.store_id
GROUP BY s.store_id ORDER BY s.store_id ASC; 