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
(1, 1, 100),
(2, 1, 200),
(3, 1, 300),
(4, 2, 150),
(5, 2, 250),
(6, 3, 400);

SELECT customers.first_name, payments.payment_id, payments.amount,
SUM(payments.amount) OVER (
    PARTITION BY customers.customer_id
    ORDER BY payments.payment_id
) AS running_total
FROM customers
INNER JOIN payments
ON customers.customer_id = payments.customer_id;
