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
(3, 'Sara', 'Khan');

INSERT INTO payments VALUES
(1, 1, 100),
(2, 1, 250),
(3, 1, 400),
(4, 2, 300),
(5, 2, 150),
(6, 3, 500);

WITH payment_trends AS (
    SELECT
        customers.first_name,
        payments.payment_id,
        payments.amount,
        LAG(payments.amount) OVER (
            PARTITION BY customers.customer_id
            ORDER BY payments.payment_id
        ) AS previous_payment
    FROM customers
    INNER JOIN payments
    ON customers.customer_id = payments.customer_id
)

SELECT
    first_name,
    payment_id,
    amount,
    previous_payment,
    CASE
        WHEN previous_payment IS NULL THEN 'First Payment'
        WHEN amount > previous_payment THEN 'Increase'
        WHEN amount < previous_payment THEN 'Decrease'
        ELSE 'No Change'
    END AS payment_trend
FROM payment_trends;
