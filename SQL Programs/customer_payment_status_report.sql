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
    COUNT(payments.payment_id) AS total_transactions,
    COALESCE(SUM(payments.amount), 0) AS total_spent,
    CASE
        WHEN COALESCE(SUM(payments.amount), 0) = 0 THEN 'No Payments'
        WHEN COALESCE(SUM(payments.amount), 0) >= 500 THEN 'High Value'
        WHEN COALESCE(SUM(payments.amount), 0) >= 200 THEN 'Active'
        ELSE 'Low Activity'
    END AS customer_status
FROM customers
LEFT JOIN payments
ON customers.customer_id = payments.customer_id
GROUP BY customers.customer_id, customers.first_name;
