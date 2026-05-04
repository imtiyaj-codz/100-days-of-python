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
    customers.customer_id,
    customers.first_name
FROM customers
WHERE customers.customer_id IN (
    SELECT payments.customer_id
    FROM payments
    GROUP BY payments.customer_id
    HAVING SUM(payments.amount) > 400
);
