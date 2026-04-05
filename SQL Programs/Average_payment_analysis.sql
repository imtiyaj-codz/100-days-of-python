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
(1, 1, 500),
(2, 2, 300),
(3, 2, 200),
(4, 5, 700);

SELECT customers.customer_id, customers.first_name, payments.amount
FROM customers
INNER JOIN payments
ON customers.customer_id = payments.customer_id;

SELECT customers.customer_id, customers.first_name, payments.amount
FROM customers
INNER JOIN payments
ON customers.customer_id = payments.customer_id
WHERE payments.amount > (
    SELECT AVG(amount) FROM payments
);
