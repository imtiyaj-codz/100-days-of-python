CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    customer_id INT,
    amount INT
);

INSERT INTO customers VALUES
(1, 'Imtiyaz', 'Shaikh'),
(2, 'Rahul', 'Patil'),
(3, 'Sara', 'Khan'),
(4, 'Aman', 'Verma'),
(5, 'Neha', 'Patel');

INSERT INTO payments VALUES
(1, 1, 200),
(2, 1, 300),
(3, 2, 150),
(4, 3, 500);

SELECT
    customers.first_name,
    'Active Customer' AS customer_status
FROM customers
INNER JOIN payments
ON customers.customer_id = payments.customer_id

UNION

SELECT
    customers.first_name,
    'No Payments' AS customer_status
FROM customers
WHERE NOT EXISTS (
    SELECT 1
    FROM payments
    WHERE payments.customer_id = customers.customer_id
);
