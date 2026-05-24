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

WITH customer_spending AS (
    SELECT
        customers.customer_id,
        customers.first_name,
        COALESCE(SUM(payments.amount), 0) AS total_spent
    FROM customers
    LEFT JOIN payments
    ON customers.customer_id = payments.customer_id
    GROUP BY customers.customer_id, customers.first_name
)

SELECT
    first_name,
    total_spent
FROM customer_spending
WHERE total_spent < 300;
