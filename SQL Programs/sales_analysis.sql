-- Create Customers table
CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Create Orders table
CREATE TABLE orders (
    id INT PRIMARY KEY,
    customer_id INT,
    amount INT
);

-- Insert data into customers
INSERT INTO customers (id, name) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D');

-- Insert data into orders
INSERT INTO orders (id, customer_id, amount) VALUES
(101, 1, 500),
(102, 1, 300),
(103, 2, 700),
(104, 2, 200),
(105, 2, 100),
(106, 4, 400);

-- 1. Total amount spent by each customer
SELECT c.name, SUM(o.amount) AS total_spent
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
GROUP BY c.name;

-- 2. Customers with no orders
SELECT c.name
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
WHERE o.id IS NULL;

-- 3. Top customer by total spending
SELECT c.name, SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o
ON c.id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 1;

-- 4. Number of orders per customer
SELECT c.name, COUNT(o.id) AS total_orders
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
GROUP BY c.name;
