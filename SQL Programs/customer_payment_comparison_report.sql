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
(1, 1, 200),
(2, 1, 500),
(3, 1, 300),
(4, 2, 150),
(5, 2, 400),
(6, 3, 250);

SELECT
    customers.first_name,
    first_payment.payment_id AS first_payment_id,
    second_payment.payment_id AS second_payment_id,
    first_payment.amount AS first_amount,
    second_payment.amount AS second_amount,
    CASE
        WHEN first_payment.amount > second_payment.amount THEN 'First Higher'
        WHEN first_payment.amount < second_payment.amount THEN 'Second Higher'
        ELSE 'Equal'
    END AS comparison_result
FROM payments AS first_payment
INNER JOIN payments AS second_payment
ON first_payment.customer_id = second_payment.customer_id
AND first_payment.payment_id < second_payment.payment_id
INNER JOIN customers
ON first_payment.customer_id = customers.customer_id;
