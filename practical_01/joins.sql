-- 1. Make a database for a ecommerce
CREATE DATABASE ecommerce;
USE ecommerce;

-- 2. Make a customer table in the ecommerce database
CREATE TABLE customer(
id              INT,
name            VARCHAR(50)
);

-- 3. Fill details in the table
INSERT INTO customer(id,name)
VALUES
(1,"Rahul"),
(2,"Afsara"),
(3,"Abhimanyu"),
(4,"Aditya"),
(5,"Raj");

-- 4. see all the data
SELECT * FROM customer;


-- 5. Make a orders table in the ecommerce database.
CREATE TABLE orders(
id         INT PRIMARY KEY,
ordername  VARCHAR(50)
);

-- 6. Fill details in the table
INSERT INTO orders(id,ordername)
VALUES
(2,"Fruit"),
(3,"Ball"),
(4,"Utensil");

-- 7. See all the data
SELECT * FROM orders;

-- INNER JOIN BASES ON ID
SELECT customer.id,orders.ordername,customer.name 
FROM customer
INNER JOIN orders
ON customer.id = orders.id;

USE ecommerce;

-- LEFT OUTER JOIN
SELECT * 
FROM customer
LEFT JOIN orders
ON customer.id = orders.id;

USE ecommerce;

-- RIGHT OUTER JOIN
SELECT *
FROM customer
RIGHT JOIN orders
ON customer.id = orders.id;

SELECT * FROM customer;
SELECT * FROM orders;

-- FULL OUTER JOIN
SELECT *
FROM customer 
LEFT JOIN orders
ON customer.id = orders.id
UNION
SELECT *
FROM customer
RIGHT JOIN orders
ON customer.id = orders.id;

-- CROSS JOIN m * n = 5*3 = 15
SELECT *
FROM customer
CROSS JOIN orders;

-- EXCLUSIVE JOINS

-- LEFT Exc Join
SELECT *
FROM customer
LEFT JOIN  orders
ON customer.id = orders.id
WHERE orders.id IS NULL;

-- RIGHT Exc Join
SELECT *
FROM customer
RIGHT JOIN orders
ON customer.id = orders.id
WHERE customer.id IS NULL;

-- FULL Exc Join
SELECT *
FROM customer
LEFT JOIN  orders
ON customer.id = orders.id
WHERE orders.id IS NULL
UNION
SELECT *
FROM customer
RIGHT JOIN orders
ON customer.id = orders.id
WHERE customer.id IS NULL;













