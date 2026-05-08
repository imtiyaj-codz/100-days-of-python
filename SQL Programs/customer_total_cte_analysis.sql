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
(1, 1, 200),
(2, 1, 300),
(3, 2, 150),
(4, 2, 100),
(5, 3, 500);

WITH customer_totals AS (
    SELECT
        customer_id,
        SUM(amount) AS total_amount
    FROM payments
    GROUP BY customer_id
)

SELECT
    customers.first_name,
    customer_totals.total_amount
FROM customer_totals
JOIN customers
ON customer_totals.customer_id = customers.customer_id
WHERE customer_totals.total_amount > 250;
