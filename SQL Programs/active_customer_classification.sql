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

SELECT
    customers.first_name,
    COUNT(payments.payment_id) AS total_transactions,
    SUM(payments.amount) AS total_spent,
    CASE
        WHEN SUM(payments.amount) >= 500 THEN 'Premium Customer'
        WHEN SUM(payments.amount) >= 200 THEN 'Regular Customer'
        ELSE 'Low Activity'
    END AS customer_type
FROM customers
INNER JOIN payments
ON customers.customer_id = payments.customer_id
WHERE EXISTS (
    SELECT 1
    FROM payments AS payment_check
    WHERE payment_check.customer_id = customers.customer_id
)
GROUP BY customers.customer_id, customers.first_name
HAVING COUNT(payments.payment_id) >= 1;
