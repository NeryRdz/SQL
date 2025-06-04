USE SAKILA;
-- 1. Actualizar last_update de customer cuando se actualice su dirección
-- Este trigger actualizará el campo last_update de la tabla customer cuando se modifique su address_id.
DROP TRIGGER IF EXISTS actualizar_cliente;
DELIMITER $$
CREATE TRIGGER actualizar_cliente
BEFORE UPDATE ON customer
FOR EACH ROW
BEGIN
    IF OLD.address_id <> NEW.address_id THEN
		SET NEW.last_update = NOW();
    END IF;
END $$
DELIMITER ;

UPDATE customer SET address_id = 6 WHERE customer_id = 601;
SELECT * FROM customer WHERE customer_id >= 600;

-- 2. Actualizar last_update de rental al insertar un payment
-- Este trigger actualizará el campo last_update de la tabla rental cuando se inserte un nuevo pago.
DROP TRIGGER IF EXISTS actualizar_payment;
DELIMITER $$
CREATE TRIGGER actualizar_payment
AFTER INSERT ON payment
FOR EACH ROW
BEGIN
    UPDATE rental SET last_update = NOW()
    WHERE rental_id = NEW.rental_id;
END $$
DELIMITER ;

SELECT * FROM customer WHERE customer_id >= 600;

-- 3. Actualizar last_update de la tabla inventory al actualizar film_id
-- Este trigger actualizará el campo last_update de la tabla inventory cuando se modifique su film_id.
DROP TRIGGER IF EXISTS actualizar_inventory;
DELIMITER $$
CREATE TRIGGER actualizar_inventory
BEFORE UPDATE ON inventory
FOR EACH ROW
BEGIN
    IF OLD.film_id <> NEW.film_id THEN
		SET NEW.last_update = NOW();
    END IF;
END $$
DELIMITER ;

-- 4. Actualizar last_update de la tabla staff cuando se modifique su nombre
-- Este trigger actualizará el campo last_update de la tabla staff cuando se actualice first_name o last_name.
DROP TRIGGER IF EXISTS actualizar_staff;
DELIMITER $$
CREATE TRIGGER actualizar_staff
BEFORE UPDATE ON staff
FOR EACH ROW
BEGIN
    IF OLD.first_name <> NEW.first_name OR OLD.last_name <> NEW.last_name THEN
		SET NEW.last_update = NOW();
    END IF;
END $$
DELIMITER ;
