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
(2, 2, 300),
(3, 5, 400);

SELECT
    COALESCE(customers.customer_id, payments.customer_id) AS customer_id,
    customers.first_name,
    payments.amount,
    CASE
        WHEN customers.customer_id IS NULL THEN 'Payment Without Customer'
        WHEN payments.customer_id IS NULL THEN 'Customer Without Payment'
        ELSE 'Matched Record'
    END AS record_status
FROM customers
FULL OUTER JOIN payments
ON customers.customer_id = payments.customer_id;
