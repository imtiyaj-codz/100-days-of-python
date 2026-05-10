CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    customer_id INT,
    amount INT
);

INSERT INTO payments VALUES
(1, 1, 200),
(2, 1, 300),
(3, 1, 500),
(4, 2, 150),
(5, 2, 400),
(6, 3, 250);

SELECT
    first_payment.customer_id,
    first_payment.payment_id AS payment_one,
    second_payment.payment_id AS payment_two,
    first_payment.amount AS amount_one,
    second_payment.amount AS amount_two
FROM payments AS first_payment
JOIN payments AS second_payment
ON first_payment.customer_id = second_payment.customer_id
AND first_payment.payment_id < second_payment.payment_id;
