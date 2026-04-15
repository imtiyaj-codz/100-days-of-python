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
(2, 1, 200),
(3, 2, 300),
(4, 2, 100),
(5, 3, 700);

SELECT customers.first_name, SUM(payments.amount) AS total_amount
FROM customers
INNER JOIN payments
ON customers.customer_id = payments.customer_id
GROUP BY customers.first_name;

SELECT customers.first_name, SUM(payments.amount) AS total_amount,
CASE
    WHEN SUM(payments.amount) >= 600 THEN 'High Spender'
    WHEN SUM(payments.amount) >= 300 THEN 'Medium Spender'
    ELSE 'Low Spender'
END AS spending_category
FROM customers
INNER JOIN payments
ON customers.customer_id = payments.customer_id
GROUP BY customers.first_name;
