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
(2, 1, 300),
(3, 1, 500),
(4, 2, 200),
(5, 2, 400),
(6, 3, 250);

SELECT customers.first_name, payments.amount,
AVG(payments.amount) OVER (
    PARTITION BY customers.customer_id
) AS avg_payment
FROM customers
INNER JOIN payments
ON customers.customer_id = payments.customer_id;

SELECT customers.first_name, payments.amount,
AVG(payments.amount) OVER (
    PARTITION BY customers.customer_id
) AS avg_payment,
payments.amount - AVG(payments.amount) OVER (
    PARTITION BY customers.customer_id
) AS difference_from_avg
FROM customers
INNER JOIN payments
ON customers.customer_id = payments.customer_id;
