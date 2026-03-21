-- 1. Create customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

-- 2. Create payments table
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    customer_id INT,
    amount INT
);

-- 3. Insert data into customers
INSERT INTO customers VALUES
(1, 'Imtiyaz', 'Shaikh'),
(2, 'Rahul', 'Patil'),
(3, 'Sara', 'Khan'),
(4, 'Aman', 'Verma');

-- 4. Insert data into payments
INSERT INTO payments VALUES
(1, 1, 500),
(2, 2, 300),
(3, 2, 200),
(4, 5, 700);

--------------------------------------------------
-- QUERIES (PROJECT WORK)
--------------------------------------------------

-- 1. Get all customers with their payments (INNER JOIN)
SELECT customers.first_name, payments.amount
FROM customers
INNER JOIN payments
ON customers.customer_id = payments.customer_id;

-- 2. Get all customers even if no payment (LEFT JOIN)
SELECT customers.first_name, payments.amount
FROM customers
LEFT JOIN payments
ON customers.customer_id = payments.customer_id;

-- 3. Get all payments even if no customer (RIGHT JOIN)
SELECT customers.first_name, payments.amount
FROM customers
RIGHT JOIN payments
ON customers.customer_id = payments.customer_id;

-- 4. Get customers who made payments > 300
SELECT customers.first_name, payments.amount
FROM customers
INNER JOIN payments
ON customers.customer_id = payments.customer_id
WHERE payments.amount > 300;

-- 5. Get customers who have no payments
SELECT customers.first_name
FROM customers
LEFT JOIN payments
ON customers.customer_id = payments.customer_id
WHERE payments.customer_id IS NULL;
