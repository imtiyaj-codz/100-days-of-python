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
(2, 1, 100),
(3, 2, 300),
(4, 2, 200),
(5, 3, 400);

SELECT customers.first_name, payments.amount,
ROW_NUMBER() OVER (PARTITION BY customers.customer_id ORDER BY payments.payment_id DESC) AS row_num
FROM customers
INNER JOIN payments
ON customers.customer_id = payments.customer_id;

SELECT first_name, amount
FROM (
    SELECT customers.first_name, payments.amount,
    ROW_NUMBER() OVER (PARTITION BY customers.customer_id ORDER BY payments.payment_id DESC) AS row_num
    FROM customers
    INNER JOIN payments
    ON customers.customer_id = payments.customer_id
) AS ranked_data
WHERE row_num = 1;
