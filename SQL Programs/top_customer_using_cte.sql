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
(4, 2, 400),
(5, 3, 500);

WITH customer_totals AS (
    SELECT
        customers.customer_id,
        customers.first_name,
        SUM(payments.amount) AS total_amount
    FROM customers
    INNER JOIN payments
    ON customers.customer_id = payments.customer_id
    GROUP BY customers.customer_id, customers.first_name
),

ranked_customers AS (
    SELECT
        first_name,
        total_amount,
        ROW_NUMBER() OVER (
            ORDER BY total_amount DESC
        ) AS customer_rank
    FROM customer_totals
)

SELECT
    first_name,
    total_amount
FROM ranked_customers
WHERE customer_rank = 1;
