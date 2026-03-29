-- Create Customers table
CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Create Orders table
CREATE TABLE orders (
    id INT PRIMARY KEY,
    customer_id INT
);

-- Insert data into customers
INSERT INTO customers (id, name) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C');

-- Insert data into orders
INSERT INTO orders (id, customer_id) VALUES
(101, 1),
(102, 1),
(103, 2),
(104, 4);

-- 1. INNER JOIN: customers with orders only
SELECT c.name, o.id AS order_id
FROM customers c
INNER JOIN orders o
ON c.id = o.customer_id;

-- 2. LEFT JOIN: all customers
SELECT c.name, o.id AS order_id
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id;

-- 3. RIGHT JOIN: all orders
SELECT c.name, o.id AS order_id
FROM customers c
RIGHT JOIN orders o
ON c.id = o.customer_id;

-- 4. FULL OUTER JOIN
SELECT c.name, o.id AS order_id
FROM customers c
FULL OUTER JOIN orders o
ON c.id = o.customer_id;

-- 5. Customers with no orders
SELECT c.name
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
WHERE o.id IS NULL;
