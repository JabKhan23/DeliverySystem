CREATE DATABASE DeliverySystem;

USE DeliverySystem;

CREATE TABLE Orders(
	order_id INT NOT NULL,
    street_name TEXT NOT NULL,
    street_postcode TEXT NOT NULL,
    order_items TEXT NOT NULL
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

INSERT INTO Orders VALUES
(2, 'Arrow road', 'SW12 3FR', 'Frdige'),
(3, 'Bridge street', 'SW12 8QR', 'Printer'),
(4, 'Tower avenue', 'SW12 5TY', 'Speaker'),
(5, 'Summerfield way', 'SW12 4RI', 'Microphone'),
(6, 'Shard road', 'SW12 3WE', 'Headphones'),
(7, 'Thames street', 'SW12 9IO', 'Mouse'),
(8, 'Willis way', 'SW12 8PO', 'Keyboard'),
(9, 'Radford druve', 'SW12 5IU', 'Monitor'),
(10, 'Server street', 'SW12 4BV', 'Laptop');

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

INSERT INTO Drivers VALUES
(2, 'Andrew', 'Victoria', 'SW12 4CO', 'Bluehill road'),
(3, 'Matthew', 'Temple', 'SW12 9HG', 'Noah street'),
(4, 'Jenny', 'Blackfriars', 'SW12 5VM', 'Crawl road'),
(5, 'Oscar', 'Upminister', 'SW12 3CV', 'Curley lane'),
(6, 'Beth', 'Hammersmith', 'SW12 1DL', 'Bracket road'),
(7, 'Ashley', 'Chelsea', 'SW12 2QA', 'Colon way'),
(8, 'Gavin', 'Fulham', 'SW12 6YB', 'Python street'),
(9, 'Steven', 'Bradley', 'SW12 3VT', 'Java road');
