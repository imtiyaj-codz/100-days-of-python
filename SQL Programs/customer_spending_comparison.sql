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
(5, 3, 500),
(6, 4, 250);

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
    CASE
        WHEN total_spent > (SELECT AVG(total_spent) FROM customer_totals) THEN 'Above Average'
        WHEN total_spent < (SELECT AVG(total_spent) FROM customer_totals) THEN 'Below Average'
        ELSE 'Average'
    END AS spending_status
FROM customer_totals;
