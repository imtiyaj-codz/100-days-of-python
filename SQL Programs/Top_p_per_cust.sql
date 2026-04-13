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
(2, 1, 300),
(3, 2, 400),
(4, 2, 200),
(5, 3, 250);

SELECT customers.first_name, payments.amount,
ROW_NUMBER() OVER (
    PARTITION BY customers.customer_id
    ORDER BY payments.amount DESC
) AS rank_per_customer
FROM customers
INNER JOIN payments
ON customers.customer_id = payments.customer_id;

SELECT first_name, amount
FROM (
    SELECT customers.first_name, payments.amount,
    ROW_NUMBER() OVER (
        PARTITION BY customers.customer_id
        ORDER BY payments.amount DESC
    ) AS rank_per_customer
    FROM customers
    INNER JOIN payments
    ON customers.customer_id = payments.customer_id
) AS ranked_data
WHERE rank_per_customer = 1;
