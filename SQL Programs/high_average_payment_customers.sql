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
(2, 1, 500),
(3, 2, 100),
(4, 2, 200),
(5, 3, 400),
(6, 3, 300);

SELECT
    customers.customer_id,
    customers.first_name,
    AVG(payments.amount) AS average_payment
FROM customers
LEFT JOIN payments
ON customers.customer_id = payments.customer_id
GROUP BY customers.customer_id, customers.first_name
HAVING AVG(payments.amount) > 250;
