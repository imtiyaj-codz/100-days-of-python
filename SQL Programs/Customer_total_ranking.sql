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
(3, 3, 300),
(4, 1, 200),
(5, 2, 100);

SELECT customers.first_name, payments.amount,
RANK() OVER (ORDER BY payments.amount DESC) AS payment_rank
FROM customers
INNER JOIN payments
ON customers.customer_id = payments.customer_id;
