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
(4, 'Aman', 'Verma');

INSERT INTO payments VALUES
(1, 1, 500),
(2, 1, 500),
(3, 2, 300),
(4, 2, 200),
(5, 3, 400);

SELECT customers.first_name, payments.amount,
SUM(payments.amount) OVER (PARTITION BY customers.customer_id) AS total_per_customer
FROM customers
INNER JOIN payments
ON customers.customer_id = payments.customer_id;

SELECT customers.first_name, payments.amount,
ROUND(
    payments.amount * 100.0 /
    SUM(payments.amount) OVER (PARTITION BY customers.customer_id),
    2
) AS percentage_contribution
FROM customers
INNER JOIN payments
ON customers.customer_id = payments.customer_id;
