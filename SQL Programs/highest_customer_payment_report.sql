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
(3, 'Sara', 'Khan');

INSERT INTO payments VALUES
(1, 1, 100),
(2, 1, 500),
(3, 1, 300),
(4, 2, 200),
(5, 2, 400),
(6, 3, 250);

WITH ranked_payments AS (
    SELECT
        customers.first_name,
        payments.amount,
        ROW_NUMBER() OVER (
            PARTITION BY customers.customer_id
            ORDER BY payments.amount DESC
        ) AS payment_rank
    FROM customers
    INNER JOIN payments
    ON customers.customer_id = payments.customer_id
)

SELECT
    first_name,
    amount,
    CASE
        WHEN amount >= 400 THEN 'High Payment'
        WHEN amount >= 200 THEN 'Medium Payment'
        ELSE 'Low Payment'
    END AS payment_category
FROM ranked_payments
WHERE payment_rank = 1;
