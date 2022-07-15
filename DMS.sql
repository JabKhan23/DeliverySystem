CREATE DATABASE DeliverySystem;

USE DeliverySystem;

CREATE TABLE Orders(
	order_id INT NOT NULL,
    street_name TEXT NOT NULL,
    street_postcode TEXT NOT NULL,
    order_items TEXT NOT NULL,
  
    );
    
    SELECT * FROM Orders;
    
CREATE TABLE Drivers(
driver_id INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
driver_name TEXT NOT NULL,
driver_location TEXT NOT NULL,
street_postcode TEXT NOT NULL,
street_name TEXT NOT NULL
);

SELECT * FROM Drivers;

INSERT INTO Orders(order_id, street_name, street_postcode, order_items)
VALUES (1, '3 TECK CLOSE', 'TW7 6TL', 'Hoover' );

SELECT * FROM Orders;

INSERT INTO Drivers(driver_id, driver_name, driver_location, street_postcode, street_name)
VALUES (1, 'Chris', 'Westminister', 'Medwey street', 'SW1P 2BE');

DESCRIBE Drivers;

SELECT * FROM Drivers;

DROP TABLE Drivers;

CREATE TABLE Drivers(
driver_id INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
driver_name TEXT NOT NULL,
driver_location TEXT NOT NULL,
street_postcode TEXT NOT NULL,
street_name TEXT NOT NULL
);

INSERT INTO Drivers(driver_id, driver_name, driver_location, street_postcode, street_name)
VALUES (1, 'Chris', 'Westminister', 'SW1P 2BE', 'Medwey Street' );

SELECT * FROM Drivers;

INSERT INTO Orders (order_id, street_name, street_postcode, order_items) 
VALUES
(1, 'Balham hill', 'SW12 9DJ', 'AC unit'),
(2, 'Atkins road', 'SW12 0AF', 'Frdige'),
(3, 'Cavendish road', 'SW12 0BT', 'Printer'),
(4, 'Alderbrook road', 'SW12 8AA', 'Speaker'),
(5, 'Lysias road', 'SW12 8BP','Microphone'),
(6, 'Blandfield road', 'SW12 8BQ', 'Headphones'),
(7, 'Tantallon road', 'SW12 8DF', 'Mouse'),
(8, 'Liberty mews', 'SW12 8EE', 'Keyboard'),
(9, 'Hunter close', 'SW12 8EQ', 'Monitor'),
(10, 'Nightingale lane', 'SW12 8LY', 'Laptop');

SELECT * FROM Orders;

UPDATE Orders
SET street_name = '3 teck close'
WHERE order_id = 1;

DELETE FROM Orders WHERE order_id = 1;

SELECT * FROM Orders;

INSERT INTO Orders VALUES
(1, 'Teck close', 'SW12 7FJ', 'Chair');

SELECT * FROM Orders;

SELECT
order_id, street_name, street_postcode, order_items
FROM
Orders
ORDER BY order_id;

SELECT * FROM Drivers;

INSERT INTO Drivers (driver_id, driver_name, driver_location, street_postcode, street_name) 
VALUES
(1, 'Andrew', 'Wandsworth', 'SW12 9DJ', 'Balham hill'),
(2, 'Matthew', 'Lambeth', 'SW12 0AF', 'Atkins road'),
(3, 'Jenny', 'Wandsworth', 'SW12 0BT', 'Cavendish road'),
(4, 'Oscar', 'Wandsworth', 'SW12 8AA', 'Alderbrook road'),
(5, 'Beth', 'Wandsworth', 'SW12 8BP', 'Lysias road'),
(6, 'Ashley', 'Wandsworth', 'SW12 8BQ', 'Blandfield road'),
(7, 'Gavin', 'Fulham', 'SW12 8DF', 'Tantallon road'),
(8, 'Steven', 'Wandsworth', 'SW12 8EE', 'Liberty mews'),
(9, 'Bruce', 'Wandsworth', 'SW12 8EQ', 'Hunter close'),
(10, 'Alan', 'Wandsworth', 'SW12 8LY', 'Nightingale lane');

ALTER TABLE Orders
ADD COLUMN order_latitude TEXT AFTER order_items;

ALTER TABLE Orders
ADD COLUMN order_longitude TEXT AFTER order_latitude;

SELECT * FROM Orders;

UPDATE Orders
SET order_longitude = 12.432, order_latitude = 5.433
WHERE order_id = 2;

SELECT * FROM Orders;

UPDATE Orders
SET order_longitude = 11.432, order_latitude = 6.433
WHERE order_id = 3;

UPDATE Orders
SET order_longitude = 9.483, order_latitude = 3.493
WHERE order_id = 4;

UPDATE Orders
SET order_longitude = 11.434, order_latitude = 6.435
WHERE order_id = 5;

UPDATE Orders
SET order_longitude = 13.583, order_latitude = 4.483
WHERE order_id = 6;

UPDATE Orders
SET order_longitude = 12.965, order_latitude = 5.858
WHERE order_id = 7;

UPDATE Orders
SET order_longitude = 3.765, order_latitude = 6.676
WHERE order_id = 8;

UPDATE Orders
SET order_longitude = 9.757, order_latitude = 4.643
WHERE order_id = 9;

SELECT * FROM Orders;

UPDATE Orders
SET order_longitude = 10.422, order_latitude = 5.432
WHERE order_id = 1;

UPDATE Orders
SET order_longitude = 10.432, order_latitude = 3.433
WHERE order_id = 10;

SELECT
order_id, street_name, street_postcode, order_items, order_latitude, order_longitude
FROM
Orders
ORDER BY order_id;

DELETE FROM Drivers;

USE DeliverySystem;

SELECT * FROM Drivers;

SELECT * FROM Orders;

DELETE FROM Orders;
