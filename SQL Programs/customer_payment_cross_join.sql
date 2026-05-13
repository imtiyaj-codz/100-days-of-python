CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE payment_types (
    payment_type_id INT PRIMARY KEY,
    payment_method VARCHAR(50)
);

INSERT INTO customers VALUES
(1, 'Imtiyaz', 'Shaikh'),
(2, 'Rahul', 'Patil'),
(3, 'Sara', 'Khan');

INSERT INTO payment_types VALUES
(1, 'Cash'),
(2, 'Card'),
(3, 'UPI');

SELECT
    customers.first_name,
    payment_types.payment_method
FROM customers
CROSS JOIN payment_types;
