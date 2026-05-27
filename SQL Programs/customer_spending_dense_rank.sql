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
(1, 1, 300),
(2, 1, 200),
(3, 2, 400),
(4, 3, 500),
(5, 4, 200);

WITH customer_totals AS (
    SELECT
        customers.customer_id,
        customers.first_name,
        SUM(payments.amount) AS total_spent
    FROM customers
    INNER JOIN payments
    ON customers.customer_id = payments.customer_id
    GROUP BY customers.customer_id, customers.first_name
)

SELECT
    first_name,
    total_spent,
    DENSE_RANK() OVER (
        ORDER BY total_spent DESC
    ) AS spending_rank
FROM customer_totals;
